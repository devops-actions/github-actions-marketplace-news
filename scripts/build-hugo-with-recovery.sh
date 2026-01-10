#!/bin/bash

# Script to build Hugo site with automatic recovery from failed posts
# If a build fails, it removes the problematic file and retries

FAILED_FILES_LOG="failed-files.log"
FAILED_FILES_DIR="failed-posts-backup"
BASE_URL="${1:-}"
MAX_RETRIES=10
retry_count=0

# Create directory for failed files
mkdir -p "$FAILED_FILES_DIR"

# Clear previous log
: > "$FAILED_FILES_LOG"

echo "Starting Hugo build with recovery mechanism..."

while [ $retry_count -lt $MAX_RETRIES ]; do
    # Try to build Hugo (use PIPESTATUS to get Hugo's exit code, not tee's)
    hugo --gc --minify --baseURL "$BASE_URL" 2>&1 | tee build.log
    build_exit_code=${PIPESTATUS[0]}
    
    if [ "$build_exit_code" -eq 0 ]; then
        echo "✅ Hugo build succeeded!"
        
        # Check if any files were moved and report
        if [ -s "$FAILED_FILES_LOG" ]; then
            echo ""
            echo "⚠️  Warning: Build succeeded after removing the following files:"
            cat "$FAILED_FILES_LOG"
            echo ""
            echo "These files have been moved to: $FAILED_FILES_DIR/"
            exit 2  # Exit with code 2 to indicate partial success
        fi
        
        exit 0  # Success
    fi
    
    # Build failed, extract error information
    error_line=$(grep -E "Error:.*shortcode|Error:.*assemble" build.log | head -1)
    
    if [ -z "$error_line" ]; then
        echo "❌ Build failed with an unrecognized error:"
        cat build.log
        exit 1
    fi
    
    # Extract file path from error message
    # Example: Error: error building site: assemble: "/path/to/file.md:78:23": shortcode has no name
    failed_file=$(echo "$error_line" | grep -oP '"\K[^"]+(?=")' | head -1 | cut -d':' -f1)
    
    if [ -z "$failed_file" ]; then
        echo "❌ Could not identify problematic file from error:"
        echo "$error_line"
        exit 1
    fi
    
    # Extract line and column numbers
    line_col=$(echo "$error_line" | grep -oP '"\K[^"]+(?=")' | head -1 | cut -d':' -f2-3)
    
    # Extract error message (using parameter expansion to avoid sed)
    temp="${error_line#*: }"  # Remove everything before first colon
    temp="${temp#*: }"  # Remove everything before second colon
    error_msg="${temp#*\": }"  # Remove everything before quote and colon
    
    echo ""
    echo "⚠️  Build failed due to: $failed_file"
    echo "    Error at line $line_col: $error_msg"
    
    # Check if file exists
    if [ ! -f "$failed_file" ]; then
        echo "❌ File does not exist: $failed_file"
        exit 1
    fi
    
    # Get relative path for better logging
    relative_path=$(realpath --relative-to="$(pwd)" "$failed_file")
    
    # Move the problematic file to backup
    backup_path="$FAILED_FILES_DIR/$(basename "$failed_file")"
    mv "$failed_file" "$backup_path"
    echo "    Moved to: $backup_path"
    
    # Log the failure
    echo "$relative_path|$line_col|$error_msg" >> "$FAILED_FILES_LOG"
    
    retry_count=$((retry_count + 1))
    echo "    Retrying build (attempt $((retry_count + 1))/$MAX_RETRIES)..."
    echo ""
done

echo "❌ Failed to build after $MAX_RETRIES attempts"
exit 1
