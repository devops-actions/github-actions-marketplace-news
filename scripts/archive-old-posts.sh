#!/bin/bash

# Script to archive old blog posts to reduce deployment size
# This script moves posts older than a specified number of months to an archive directory
# The archived posts are excluded from the Hugo build, reducing the public/ folder size

set -e

ARCHIVE_DIR="content/archive"
POSTS_DIR="content/posts"
ARCHIVE_MONTHS="${ARCHIVE_MONTHS:-12}"  # Default to archiving posts older than 12 months

# Calculate the cutoff date (N months ago)
CUTOFF_DATE=$(date -d "$ARCHIVE_MONTHS months ago" +%Y-%m-%d)
CUTOFF_YEAR=$(date -d "$ARCHIVE_MONTHS months ago" +%Y)
CUTOFF_MONTH=$(date -d "$ARCHIVE_MONTHS months ago" +%m)

echo "Archive script starting..."
echo "Cutoff date: $CUTOFF_DATE (archiving posts older than this)"
echo "Posts directory: $POSTS_DIR"
echo "Archive directory: $ARCHIVE_DIR"
echo ""

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Counter for archived posts
archived_count=0

# Find all year directories in posts
for year_dir in "$POSTS_DIR"/*; do
    if [ ! -d "$year_dir" ]; then
        continue
    fi
    
    year=$(basename "$year_dir")
    
    # Skip if not a year directory (should be 4 digits)
    if ! [[ "$year" =~ ^[0-9]{4}$ ]]; then
        continue
    fi
    
    # Check if entire year is older than cutoff
    if [ "$year" -lt "$CUTOFF_YEAR" ]; then
        echo "📦 Archiving entire year: $year"
        
        # Create year directory in archive
        mkdir -p "$ARCHIVE_DIR/$year"
        
        # Move all month directories from this year
        for month_dir in "$year_dir"/*; do
            if [ -d "$month_dir" ]; then
                month=$(basename "$month_dir")
                mv "$month_dir" "$ARCHIVE_DIR/$year/"
                post_count=$(find "$ARCHIVE_DIR/$year/$month" -type f -name "*.md" | wc -l)
                archived_count=$((archived_count + post_count))
                echo "  ✓ Moved $year/$month ($post_count posts)"
            fi
        done
        
        # Remove empty year directory
        rmdir "$year_dir" 2>/dev/null || true
        
    elif [ "$year" -eq "$CUTOFF_YEAR" ]; then
        # For the cutoff year, check each month
        echo "📦 Checking months in year: $year"
        
        for month_dir in "$year_dir"/*; do
            if [ ! -d "$month_dir" ]; then
                continue
            fi
            
            month=$(basename "$month_dir")
            
            # Skip if not a month directory (should be 2 digits)
            if ! [[ "$month" =~ ^[0-9]{2}$ ]]; then
                continue
            fi
            
            # Archive if month is before cutoff month
            if [ "$month" -lt "$CUTOFF_MONTH" ]; then
                echo "  📦 Archiving month: $year/$month"
                
                # Create year directory in archive if it doesn't exist
                mkdir -p "$ARCHIVE_DIR/$year"
                
                # Move the month directory
                mv "$month_dir" "$ARCHIVE_DIR/$year/"
                post_count=$(find "$ARCHIVE_DIR/$year/$month" -type f -name "*.md" | wc -l)
                archived_count=$((archived_count + post_count))
                echo "    ✓ Moved $year/$month ($post_count posts)"
            fi
        done
        
        # Remove empty year directory if all months were archived
        rmdir "$year_dir" 2>/dev/null || true
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Archive complete!"
echo "   Total posts archived: $archived_count"
echo "   Archived posts location: $ARCHIVE_DIR"
echo ""

# Show current post counts
current_count=$(find "$POSTS_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
archive_count=$(find "$ARCHIVE_DIR" -type f -name "*.md" 2>/dev/null | wc -l)

echo "📊 Current statistics:"
echo "   Active posts: $current_count"
echo "   Archived posts: $archive_count"
echo "   Total posts: $((current_count + archive_count))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ $archived_count -gt 0 ]; then
    exit 0
else
    echo ""
    echo "ℹ️  No posts were archived. All posts are within the $ARCHIVE_MONTHS month window."
    exit 0
fi
