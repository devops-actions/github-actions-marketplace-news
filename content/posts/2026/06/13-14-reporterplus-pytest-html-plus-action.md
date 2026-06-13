---
title: Pytest HTML Plus Action
date: 2026-06-13 14:43:01 +00:00
tags:
  - reporterplus
  - GitHub Actions
draft: false
repo: https://github.com/reporterplus/pytest-html-plus-action
marketplace: https://github.com/marketplace/actions/pytest-html-plus-action
version: v3
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/reporterplus/pytest-html-plus-action** to version **v3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pytest-html-plus-action) to find the latest changes.

## What's Changed

## What's new

### uv support
Added `use_uv` input for projects using uv as their dependency manager. Run pytest via `uv run pytest` without any changes to your project dependencies. `use_uv` and `use_poetry` are mutually exclusive — passing both fails immediately with a clear error before pytest runs.

### Dependency manager selection is now explicit
pip, Poetry, and uv workflows are fully preserved. The action enforces that only one dependency manager is active at a time, removing ambiguity about which runner is used when inputs are misconfigured.

### Improved report path resolution
JSON report path is now resolved consistently from `html_output` and the report filename, fixing cases where the report was generated but step outputs were not populated.

### GitHub step summary
Test results (total, passed, failed, skipped, duration, and up to 5 failed test names) are now written to the GitHub step summary page automatically on every run.

### PR summary comments
Added `post_pr_comment` and `github_token` inputs to post a test summary comment on pull requests. Includes token validation before pytest runs — if `post_pr_comment` is `true` and `github_token` is empty the step fails immediately with a clear message rather than silently skipping the comment after tests complete. API calls are guarded with a timeout to prevent hung workflows.

### HTML report artifact upload
The generated HTML report is now uploaded as a downloadable workflow artifact by default. Controlled via `upload_html_artifact` (default `true`) and `html_artifact_name`. Uses `if-no-files-found: warn` so a missing report directory is a warning rather than a workflow failure.

### Input naming cleanup
All action inputs are now consistently `snake_case`, making them easier to read and author in workflow files.

## Upgrading from v2

If you were passing `git_branch` or `git_commit` without a value, those inputs previously defaulted to `"NA"` and forwarded `--git-branch=NA` to pytest. Both now default to `""` and are only forwarded when explicitly set. No other breaking changes.
