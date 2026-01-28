# Hugo Build Recovery Scripts

This directory contains scripts that handle Hugo build errors gracefully, ensuring the website stays updated even when individual posts fail to build.

## Scripts

### `archive-old-posts.sh`

This script removes old blog posts to reduce deployment size and improve build performance:

**Features:**
- Deletes posts older than a configurable number of months
- Default: removes posts older than 12 months
- Preserves directory structure for remaining posts
- Provides detailed logging and statistics
- Safe to run multiple times (idempotent)
- Removed posts can be restored from git history if needed

**Exit Codes:**
- `0`: Success (posts removed or no posts needed removal)
- `1`: Error (invalid ARCHIVE_MONTHS parameter)

**Usage:**
```bash
# Use default (12 months)
./scripts/archive-old-posts.sh

# Custom retention period (6 months)
ARCHIVE_MONTHS=6 ./scripts/archive-old-posts.sh
```

**Environment Variables:**
- `ARCHIVE_MONTHS`: Number of months to keep active (default: 12, must be positive integer)

**Output:**
- Deletes posts from `content/posts/` older than the retention period
- Prints statistics about removed and remaining posts
- Posts can be restored from git history using `git log` and `git checkout`

### `build-hugo-with-recovery.sh`

This script wraps the Hugo build process with automatic error recovery:

**Features:**
- Detects Hugo build errors automatically
- Identifies the problematic file from error messages
- Moves failed files to `failed-posts-backup/` directory
- Retries the build without the problematic file
- Logs all failures to `failed-files.log`
- Exits with appropriate status codes

**Exit Codes:**
- `0`: Build succeeded with no issues
- `1`: Build failed completely (couldn't build even after removing files)
- `2`: Build succeeded after removing problematic files (partial success)

**Usage:**
```bash
./scripts/build-hugo-with-recovery.sh "https://your-site-url.com/"
```

**Output Files:**
- `failed-files.log`: Log file containing details about removed files
- `failed-posts-backup/`: Directory containing backed-up failed files
- `build.log`: Temporary build output log

### `create-issue-for-failed-posts.sh`

This script creates GitHub issues for each failed post that was removed during the build:

**Features:**
- Reads `failed-files.log` created by the build script
- Creates a GitHub issue for each failed file
- Includes clickable link to the problematic file (with line number)
- Includes error message and location
- Labels issues as `bug` and `hugo-build-error`
- Attempts to assign to GitHub Copilot for automatic fixing

**Usage:**
```bash
export GITHUB_TOKEN="your-token"
export GITHUB_REPOSITORY="owner/repo"
./scripts/create-issue-for-failed-posts.sh
```

**Requirements:**
- GitHub CLI (`gh`) must be installed
- `GITHUB_TOKEN` environment variable with `issues: write` permission
- `GITHUB_REPOSITORY` environment variable

## Workflow Integration

The GitHub Actions workflow (`.github/workflows/hugo.yaml`) integrates these scripts:

1. **Build Step**: Runs `build-hugo-with-recovery.sh`
   - If files are removed, the build still succeeds
   - Output flag `build_had_failures` is set to `true`

2. **Issue Creation Step**: Runs `create-issue-for-failed-posts.sh`
   - Only runs if `build_had_failures` is `true`
   - Creates issues for all failed files

3. **Deployment Step**: Deploys the website
   - Runs even if files were removed
   - Website stays updated

4. **Final Check Step**: Marks workflow as failed
   - Only fails after deployment is complete
   - Alerts maintainers to check the created issues

## Example Workflow

When a build error occurs:

1. Hugo tries to build and encounters an error:
   ```
   Error: error building site: assemble: "/path/to/file.md:78:23": shortcode has no name
   ```

2. The script identifies and removes the problematic file:
   ```
   ⚠️  Build failed due to: content/posts/2026/01/02-13-rvben-rumdl.md
       Error at line 78:23: shortcode has no name
       Moved to: failed-posts-backup/02-13-rvben-rumdl.md
   ```

3. Hugo rebuilds successfully without the problematic file

4. The website is deployed with all working posts

5. A GitHub issue is created with details:
   - **Title**: "Fix Hugo build error in 02-13-rvben-rumdl.md"
   - **Body**: Contains clickable link, error location, and error message
   - **Labels**: `bug`, `hugo-build-error`

6. The workflow is marked as failed to alert maintainers

## Testing Locally

You can test the scripts locally:

```bash
# Build with recovery
./scripts/build-hugo-with-recovery.sh "https://example.com/"

# Check the exit code
echo $?

# View failed files log
cat failed-files.log

# View backed up files
ls -la failed-posts-backup/
```

## Notes

- Failed files are backed up, not deleted permanently
- The `failed-files.log` format is: `file_path|line:col|error_message`
- Maximum 10 retry attempts (configurable via `MAX_RETRIES` variable)
- All temporary files are excluded via `.gitignore`
