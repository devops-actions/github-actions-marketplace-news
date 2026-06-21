---
title: ReviewBot AI PR Reviewer
date: 2026-06-21 06:46:14 +00:00
tags:
  - rid325
  - GitHub Actions
draft: false
repo: https://github.com/rid325/ai-pr-reviewer
marketplace: https://github.com/marketplace/actions/reviewbot-ai-pr-reviewer
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/rid325/ai-pr-reviewer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewbot-ai-pr-reviewer) to find the latest changes.

## What's Changed

# v1.0.0 — Initial Release

First stable release of ReviewBot AI PR Reviewer, now available on the GitHub Marketplace.
This action automatically reviews pull requests using Gemini AI and posts inline comments directly on the diff.

---

### Key Features

- **Inline PR Comments**: Posts review comments on specific diff lines — not just a summary at the bottom
- **Security Detection**: Flags hardcoded secrets, SQL injection patterns, and disabled SSL verification
- **Bug Detection**: Catches null dereferences, division by zero, and missing error handling
- **Large Diff Support**: Automatically chunks oversized diffs so no PR is skipped
- **File Filtering**: Configurable ignore patterns to skip lock files, generated code, and migrations

---

### Quick Start

Add this to your `.github/workflows/ai-review.yml`:

```yaml
- name: ReviewBot AI PR Reviewer
  uses: rid325/ai-pr-reviewer@v1.0.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    gemini_api_key: ${{ secrets.GEMINI_API_KEY }}
```

---

### Inputs

- `github_token` (Required): GitHub token with pull-requests: write permission
- `gemini_api_key` (Required): Google Gemini API key (free tier supported)
- `ignore_patterns` (Optional): Comma-separated fnmatch patterns for files to skip. Default: `*.lock,package-lock.json,*.generated.*`
- `max_diff_lines` (Optional): Max lines per Gemini call, larger diffs are chunked. Default: `500`

For full configuration details see [README.md](https://github.com/rid325/ai-pr-reviewer#readme)

---

### Known Limitations

- Files with 300+ changed lines may be skipped due to GitHub API patch limits
- Large PRs (50+ files) may take 2-3 minutes due to sequential Gemini calls
- Reviews the diff only, not full repository context

---

### Contributors

- @rid325
