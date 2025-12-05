---
title: Clikd Release Action
date: 2025-12-05 13:12:51 +00:00
tags:
  - clikd-inc
  - GitHub Actions
draft: false
repo: https://github.com/clikd-inc/release-action
marketplace: https://github.com/marketplace/actions/clikd-release-action
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/clikd-inc/release-action** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/clikd-release-action) to find the latest changes.

## Release notes

## Breaking Changes

This release switches to a PR-based workflow. The action now creates release Pull Requests instead of directly pushing tags and releases.

### Removed Inputs
- `push` - Push now happens automatically when creating PR
- `github-release` - GitHub releases are now handled by the clikd-bot GitHub App after PR merge

### New Outputs
- `pr-created` - Whether a release PR was created (replaces `released`)
- `pr-url` - URL of the created pull request
- `pr-number` - Number of the created pull request

### Fixed
- Bump type input now correctly passed to CLI

## New Workflow

```
Action (creates PR)          GitHub App (after merge)
────────────────────         ────────────────────────
clikd release prepare --ci   
  → Branch                   
  → Commit                   
  → Push                     
  → Create PR ──────────────→ PR merged
                               → Create tags
                               → Create GitHub releases
                               → Cleanup manifest
```

## Migration

```yaml
# Before (v1)
- uses: clikd-inc/release-action@v1
  with:
    push: true
    github-release: true

# After (v2)
- uses: clikd-inc/release-action@v2
  # push and github-release are removed - now automatic
```
