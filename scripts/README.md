# Hugo Build Recovery Scripts

This directory contains scripts that handle Hugo build errors gracefully, ensuring the website stays updated even when individual posts fail to build.

## Scripts

### `archive-old-posts.sh`

This script removes old blog posts to reduce deployment size and improve build performance:

**Features:**
- Deletes posts older than a configurable number of months
- Default: removes directories before the cutoff month calculated from 3 months
- Preserves directory structure for remaining posts
- Provides detailed logging and statistics
- Safe to run multiple times (idempotent)
- Removed posts can be restored from git history if needed

**Exit Codes:**
- `0`: Success (posts removed or no posts needed removal)
- `1`: Error (invalid ARCHIVE_MONTHS parameter)

**Usage:**
```bash
# Destructive: use default (3 months) on the current content/posts tree
./scripts/archive-old-posts.sh

# Custom retention period (6 months)
ARCHIVE_MONTHS=6 ./scripts/archive-old-posts.sh
```

**Environment Variables:**
- `ARCHIVE_MONTHS`: Months used to calculate the cutoff (default: 3, must be a positive integer)

**Requirements:**
- Python 3 (with `python-dateutil` recommended for calendar-month arithmetic)
- Git (for restoring removed posts from history)

**Output:**
- Deletes whole year directories before the cutoff year and whole two-digit month
  directories before the cutoff month within that year. The cutoff month itself
  and later months are kept, regardless of each post's day.
- Prints statistics about removed and remaining posts
- Posts can be restored from git history using `git log` and `git checkout`

The cutoff is the current local date minus `ARCHIVE_MONTHS` calendar months when
`python-dateutil` is installed; otherwise it is the current date minus
`30 * ARCHIVE_MONTHS` days. The fallback can select a different cutoff month.
For example, with a January 2026 cutoff, all 2025 directories and 2026/01
and later are respectively removed and retained.

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

# Or use ISSUE_TOKEN to override GITHUB_TOKEN (useful for PAT with additional permissions)
export ISSUE_TOKEN="your-pat-token"
export GITHUB_REPOSITORY="owner/repo"
./scripts/create-issue-for-failed-posts.sh
```

**Requirements:**
- GitHub CLI (`gh`) must be installed
- `GITHUB_TOKEN` or `ISSUE_TOKEN` environment variable with `issues: write` permission
  - `ISSUE_TOKEN` takes precedence over `GITHUB_TOKEN` if both are set
  - When `ISSUE_TOKEN` is set, it will be used for ALL GitHub CLI operations in this script
  - Use `ISSUE_TOKEN` (as a repository secret) with a PAT when additional permissions are needed (e.g., Copilot assignment)
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

From the repository root, run:

```bash
bash scripts/tests/regression.sh
```

The suite needs Bash 4 or newer and GNU coreutils, findutils, and grep with PCRE
support (`grep -P`); it runs on Ubuntu. It uses a fake Python cutoff and fake
Hugo, so neither Python, Hugo, installed packages, network access, nor secrets
are required for this command. It copies the scripts into a unique temporary
directory, runs them against disposable fixtures there, and removes only that
directory on exit. The CI job runs the same command without persisted checkout
credentials. These are isolated script regressions, not a real Hugo integration
build or a test of date calculation or issue creation.

The actual archive script requires Bash and Python 3; `python-dateutil` is
optional. The production workflow installs Hugo extended 0.160.1 and Dart Sass
for a real site build. Running the following scripts against real content is
**not** a safe read-only test, although no secrets are required by the scripts
themselves:

- `archive-old-posts.sh` and `auto-cleanup-posts.sh` delete content directories.
- `fix-hugo-content.sh` edits Markdown files in its target directory.
- `build-hugo-with-recovery.sh` runs Hugo, writes build files and logs, and moves
  failed content files into a backup directory; Hugo may access the network if
  site configuration or modules require it.
- `create-issue-for-failed-posts.sh` contacts GitHub and creates issues; it
  requires credentials with issue write access.

The archive workflow commits and pushes deletions. The Hugo deployment workflow
can commit and push cleanup or content fixes, create issues, and deploy. Neither
workflow is part of the offline test command. Use a disposable copy for any
additional real-Hugo integration test.

## Notes

- Failed files are backed up, not deleted permanently
- The `failed-files.log` format is: `file_path|line:col|error_message`
- Maximum 10 build attempts (set in the recovery script)
- All temporary files are excluded via `.gitignore`
