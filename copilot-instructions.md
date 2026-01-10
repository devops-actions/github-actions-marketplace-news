# Copilot Instructions for GitHub Actions Marketplace News

This document contains guidelines and best practices for maintaining this repository.

## GitHub Actions Workflow Best Practices

### Permission Management

**Always apply permissions at the lowest possible level:**

1. **Job-level permissions** (preferred): Apply permissions only to the specific job that needs them
2. **Workflow-level permissions** (only when all jobs need the same permissions)

**Best Practice:** Define all permissions at the job level unless every single job in the workflow needs the exact same permission. Use `permissions: {}` at workflow level to explicitly show no global permissions are granted.

**Example:**
```yaml
# Workflow-level: Empty to enforce job-level permissions
permissions: {}

jobs:
  build:
    # Job-level: Specific permissions for this job
    permissions:
      contents: read
      pages: write
      issues: write  # Only this job needs to create issues
  
  deploy:
    # Job-level: Different permissions for deployment
    permissions:
      pages: write
      id-token: write
```

**Why:** This follows the principle of least privilege, reducing security risks if a job is compromised. Each job only gets the exact permissions it needs.

## Hugo Build Error Handling

### Automatic Recovery and Issue Creation

When Hugo build failures occur, the repository uses an automatic recovery system:

**Workflow:**
1. **Build Attempt**: Hugo tries to build the site
2. **Error Detection**: If build fails, the recovery script (`scripts/build-hugo-with-recovery.sh`) identifies the problematic file
3. **File Removal**: Failed file is moved to `failed-posts-backup/` directory (not deleted)
4. **Retry**: Build is automatically retried without the problematic file
5. **Success**: Website builds successfully with all working posts
6. **Issue Creation**: A GitHub issue is automatically created with:
   - Clickable link to the problematic file (with exact line number)
   - Error message and location
   - Labels: `bug`, `hugo-build-error`
7. **Artifact Upload**: The `failed-files.log` is uploaded as an artifact for debugging
8. **Deployment**: Website is deployed to GitHub Pages
9. **Workflow Failure**: The workflow is marked as failed to alert maintainers

**Scripts:**
- `scripts/build-hugo-with-recovery.sh`: Handles build recovery
- `scripts/create-issue-for-failed-posts.sh`: Creates GitHub issues

**Key Files:**
- `failed-files.log`: Logs all removed files (format: `file_path|line:col|error_message`)
- `failed-posts-backup/`: Directory containing backed-up failed files
- `build.log`: Temporary build output log

**Exit Codes:**
- `0`: Clean build with no issues
- `1`: Build failed completely (no deployment)
- `2`: Build succeeded after removing files (deployment proceeds, workflow fails later)

### Making Changes to Build Process

When modifying the build process:

1. **Test locally first**: Use `./scripts/build-hugo-with-recovery.sh "https://example.com/"` to test
2. **Check exit codes**: Ensure proper exit codes are returned
3. **Verify issue creation**: Test with actual build failures
4. **Update documentation**: Keep `scripts/README.md` in sync with changes

## Security Best Practices

1. **Use pinned action versions**: Always use SHA commits for actions (e.g., `@abc123...`)
2. **Minimal permissions**: Grant only required permissions at the job level
3. **Audit dependencies**: Review all dependencies before adding them
4. **Keep secrets secure**: Never log or expose secrets in output

## Testing

Before committing changes to workflows:

1. Test scripts locally with Hugo installed
2. Use shellcheck for bash script validation: `shellcheck scripts/*.sh`
3. Run CodeQL security scans on workflow changes
4. Verify `.gitignore` excludes build artifacts

## Documentation

When adding new features:

1. Update relevant README files in subdirectories
2. Document new environment variables
3. Update this instructions file with new patterns or practices
4. Add examples for complex configurations
