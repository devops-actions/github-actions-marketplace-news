#!/bin/bash

# Script to remove old blog posts to reduce deployment size
# This script deletes posts older than a specified number of months
# Old posts can be restored from git history if needed

set -e

POSTS_DIR="content/posts"
ARCHIVE_MONTHS="${ARCHIVE_MONTHS:-12}"  # Default to removing posts older than 12 months

# Validate ARCHIVE_MONTHS is a positive integer
if ! [[ "$ARCHIVE_MONTHS" =~ ^[0-9]+$ ]] || [ "$ARCHIVE_MONTHS" -lt 1 ]; then
    echo "❌ Error: ARCHIVE_MONTHS must be a positive integer (got: '$ARCHIVE_MONTHS')"
    exit 1
fi

# Check if Python 3 is available (required for date calculations)
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: python3 is required but not found in PATH"
    echo "   Please install Python 3 to run this script"
    exit 1
fi

# Check if posts directory exists
if [ ! -d "$POSTS_DIR" ]; then
    echo "❌ Error: Posts directory not found: $POSTS_DIR"
    echo "   This script must be run from the repository root"
    exit 1
fi

# Calculate the cutoff date (N months ago) using Python's dateutil for accuracy
# Note: We use dateutil.relativedelta for accurate month calculations
# (avoids the 30-day approximation which would be 360 days for 12 months instead of 365)
CUTOFF_DATE=$(python3 -c "
try:
    from datetime import datetime
    from dateutil.relativedelta import relativedelta
    cutoff = datetime.now() - relativedelta(months=$ARCHIVE_MONTHS)
    print(cutoff.strftime('%Y-%m-%d'))
except ImportError:
    # Fallback if dateutil is not available
    from datetime import datetime, timedelta
    cutoff = datetime.now() - timedelta(days=30*$ARCHIVE_MONTHS)
    print(cutoff.strftime('%Y-%m-%d'))
" 2>/dev/null)

CUTOFF_YEAR=$(echo "$CUTOFF_DATE" | cut -d'-' -f1)
CUTOFF_MONTH=$(echo "$CUTOFF_DATE" | cut -d'-' -f2)

echo "Archive script starting..."
echo "Cutoff date: $CUTOFF_DATE (removing posts older than this)"
echo "Posts directory: $POSTS_DIR"
echo ""

# Counter for removed posts
removed_count=0

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
        echo "📦 Removing entire year: $year"
        
        # Count posts before removing
        post_count=$(find "$year_dir" -type f -name "*.md" 2>/dev/null | wc -l)
        removed_count=$((removed_count + post_count))
        
        # Remove entire year directory
        rm -rf "$year_dir"
        echo "  ✓ Removed $year ($post_count posts)"
        
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
            
            # Remove leading zero for numeric comparison (10# prefix prevents octal interpretation)
            # This ensures "08" and "09" are treated as 8 and 9, not invalid octal numbers
            month_num=$((10#$month))
            cutoff_month_num=$((10#$CUTOFF_MONTH))
            
            # Remove if month is before cutoff month (posts from cutoff month and later are kept)
            if [ "$month_num" -lt "$cutoff_month_num" ]; then
                echo "  📦 Removing month: $year/$month"
                
                # Count posts before removing
                post_count=$(find "$month_dir" -type f -name "*.md" 2>/dev/null | wc -l)
                removed_count=$((removed_count + post_count))
                
                # Remove the month directory
                rm -rf "$month_dir"
                echo "    ✓ Removed $year/$month ($post_count posts)"
            fi
        done
        
        # Remove empty year directory if all months were removed
        rmdir "$year_dir" 2>/dev/null || true
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
if [ $removed_count -gt 0 ]; then
    echo "✅ Removal complete!"
    echo "   Total posts removed: $removed_count"
else
    echo "ℹ️  No posts were removed. All posts are within the $ARCHIVE_MONTHS month window."
fi
echo ""

# Show current post counts
current_count=$(find "$POSTS_DIR" -type f -name "*.md" 2>/dev/null | wc -l)

echo "📊 Current statistics:"
echo "   Active posts: $current_count"
echo "   Posts removed: $removed_count"
echo ""
echo "ℹ️  Note: Removed posts can be restored from git history if needed"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

exit 0
