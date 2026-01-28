#!/bin/bash
set -e

# Script to create GitHub issues for failed Hugo posts
# Reads failed-files.log and creates an issue for each failed file

FAILED_FILES_LOG="${1:-failed-files.log}"
REPO="${GITHUB_REPOSITORY}"
GITHUB_SERVER_URL="${GITHUB_SERVER_URL:-https://github.com}"

# Check for override token that takes precedence over GITHUB_TOKEN
# This is useful for operations that require additional permissions (e.g., assigning to Copilot)
if [ -n "${GH_TOKEN:-}" ]; then
    echo "Using GH_TOKEN for GitHub CLI authentication"
    export GITHUB_TOKEN="$GH_TOKEN"
    # Authenticate GitHub CLI with the override token
    echo "$GH_TOKEN" | gh auth login --with-token
elif [ -n "${GITHUB_TOKEN:-}" ]; then
    echo "Using GITHUB_TOKEN for GitHub CLI authentication"
    # Authenticate GitHub CLI with the standard token
    echo "$GITHUB_TOKEN" | gh auth login --with-token
else
    echo "⚠️  No GitHub token found (GITHUB_TOKEN or GH_TOKEN). Some operations may fail."
fi

if [ ! -f "$FAILED_FILES_LOG" ]; then
    echo "No failed files log found. Exiting."
    exit 0
fi

if [ ! -s "$FAILED_FILES_LOG" ]; then
    echo "Failed files log is empty. No issues to create."
    exit 0
fi

echo "Creating GitHub issues for failed posts..."

# Read the log file line by line
while IFS='|' read -r file_path line_col error_msg; do
    echo ""
    echo "Processing: $file_path"
    
    # Get the default branch (usually 'main' or 'master')
    default_branch="${GITHUB_REF_NAME:-main}"
    
    # Create clickable GitHub link to the file
    file_url="$GITHUB_SERVER_URL/$REPO/blob/$default_branch/$file_path"
    
    # If we have line number, add it to the URL
    if [ -n "$line_col" ]; then
        line_num=$(echo "$line_col" | cut -d':' -f1)
        file_url="$file_url#L$line_num"
    fi
    
    # Create issue title
    issue_title="Fix Hugo build error in $(basename "$file_path")"
    
    # Create issue body with markdown
    issue_body="## Hugo Build Error

A Hugo build error was detected in the following file:

**File:** [$file_path]($file_url)
**Location:** Line $line_col
**Error:** \`$error_msg\`

### Details

The automated build process encountered this error and had to remove the file to continue building the website. The file has been backed up to \`failed-posts-backup/\` directory.

### Action Required

Please review and fix the error in the file, then restore it to the correct location.

### Assignment

This issue will be automatically assigned to the GitHub Copilot Coding Agent for resolution.

---
*This issue was automatically created by the build workflow.*"

    # Create the issue using GitHub CLI
    echo "Creating issue: $issue_title"
    
    # Use gh CLI to create issue
    if command -v gh &> /dev/null; then
        # Create issue and capture the URL
        issue_url=$(gh issue create \
            --title "$issue_title" \
            --body "$issue_body" \
            --label "bug,hugo-build-error" \
            --repo "$REPO")
        
        echo "✅ Created issue: $issue_url"

        # Assign the issue to GitHub Copilot Coding Agent
        # Seems like the user triggering this needs to have a Copilot license still, so needs to be done with a PAT
        if gh issue edit "$(basename "$issue_url")" --add-assignee "@copilot" 2>/dev/null; then
            echo "✅ Assigned to GitHub Copilot"
        else
            echo "⚠️  Could not assign to GitHub Copilot (continuing anyway)"
        fi
        
        # Write to GitHub Actions step summary if running in GitHub Actions
        if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
            {
                echo "### 🐛 Issue Created for Failed Post"
                echo ""
                echo "- **File**: \`$file_path\`"
                echo "- **Error**: \`$error_msg\`"
                echo "- **Issue**: [$issue_title]($issue_url)"
                echo ""
            } >> "$GITHUB_STEP_SUMMARY"
        fi       
       
    else
        echo "⚠️  GitHub CLI (gh) not found. Cannot create issue automatically."
        echo "Issue details:"
        echo "Title: $issue_title"
        echo "Body:"
        echo "$issue_body"
    fi
    
done < "$FAILED_FILES_LOG"

echo ""
echo "✅ Finished processing failed files"
