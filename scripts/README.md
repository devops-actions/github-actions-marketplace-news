# Hugo Build Recovery Scripts

This directory contains scripts that handle Hugo build errors gracefully, ensuring the website stays updated even when individual posts fail to build.

## Scripts

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

# Or use GH_TOKEN to override GITHUB_TOKEN (useful for PAT with additional permissions)
export GH_TOKEN="your-pat-token"
export GITHUB_REPOSITORY="owner/repo"
./scripts/create-issue-for-failed-posts.sh
```

**Requirements:**
- GitHub CLI (`gh`) must be installed
- `GITHUB_TOKEN` or `GH_TOKEN` environment variable with `issues: write` permission
  - `GH_TOKEN` takes precedence over `GITHUB_TOKEN` if both are set
  - Use `GH_TOKEN` with a PAT when additional permissions are needed (e.g., Copilot assignment)
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
