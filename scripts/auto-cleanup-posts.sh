#!/bin/bash

# Auto-cleanup old posts to keep site within GitHub Pages size limits.
# Removes the oldest calendar-month directories one at a time until
# the total post count is within MAX_MONTHS month directories.
#
# Env vars:
#   MAX_MONTHS           - maximum calendar months to retain (default: 1)
#   POST_COUNT_THRESHOLD - skip cleanup entirely if total posts <= this (default: 2000)

set -e

POSTS_DIR="content/posts"
MAX_MONTHS="${MAX_MONTHS:-1}"
POST_COUNT_THRESHOLD="${POST_COUNT_THRESHOLD:-2000}"

if ! [[ "$MAX_MONTHS" =~ ^[0-9]+$ ]] || [ "$MAX_MONTHS" -lt 1 ]; then
    echo "❌ Error: MAX_MONTHS must be a positive integer (got: '$MAX_MONTHS')"
    exit 1
fi

if [ ! -d "$POSTS_DIR" ]; then
    echo "❌ Error: Posts directory not found: $POSTS_DIR"
    echo "   This script must be run from the repository root"
    exit 1
fi

total_posts=$(find "$POSTS_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
echo "📊 Total posts: $total_posts (threshold: $POST_COUNT_THRESHOLD, max months: $MAX_MONTHS)"

if [ "$total_posts" -le "$POST_COUNT_THRESHOLD" ]; then
    echo "✅ Post count within limits, no cleanup needed"
    exit 0
fi

echo "⚠️  Post count ($total_posts) exceeds threshold ($POST_COUNT_THRESHOLD). Starting auto-cleanup..."
echo ""

removed_total=0

# Remove the oldest month directory repeatedly until we are at or below MAX_MONTHS
while true; do
    # Collect all YYYY/MM directories sorted oldest-first
    mapfile -t month_dirs < <(find "$POSTS_DIR" -mindepth 2 -maxdepth 2 -type d | sort)
    month_count=${#month_dirs[@]}

    if [ "$month_count" -le "$MAX_MONTHS" ]; then
        echo "ℹ️  Reached target: $month_count month(s) remaining (MAX_MONTHS=$MAX_MONTHS)"
        break
    fi

    oldest_dir="${month_dirs[0]}"
    post_count=$(find "$oldest_dir" -type f -name "*.md" 2>/dev/null | wc -l)

    echo "  📦 Removing oldest month: $oldest_dir ($post_count posts)"
    rm -rf "$oldest_dir"
    removed_total=$((removed_total + post_count))

    # Remove empty year directories left behind
    find "$POSTS_DIR" -mindepth 1 -maxdepth 1 -type d -empty -delete 2>/dev/null || true
done

echo ""
total_remaining=$(find "$POSTS_DIR" -type f -name "*.md" 2>/dev/null | wc -l)
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Auto-cleanup complete!"
echo "   Posts removed  : $removed_total"
echo "   Posts remaining: $total_remaining"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
