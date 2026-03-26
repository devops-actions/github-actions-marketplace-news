---
title: Fallow - Codebase Health
date: 2026-03-26 14:02:37 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "fallow," is a Rust-native tool designed to analyze TypeScript and JavaScript codebases for dead code, duplication, and complexity hotspots. It automates the detection of unused files, exports, and dependencies, identifies copy-pasted code, and highlights overly complex functions to streamline code maintenance and improve overall code quality. With its fast, configuration-free setup and support for various analysis modes, it helps developers optimize their codebases efficiently.

## Release notes

## GitLab CI support

Fallow now has a first-class GitLab CI template at `ci/gitlab-ci.yml`. Include it in your `.gitlab-ci.yml` and extend `.fallow`:

```yaml
include:
  - remote: 'https://raw.githubusercontent.com/fallow-rs/fallow/main/ci/gitlab-ci.yml'

fallow:
  extends: .fallow
```

The template provides full feature parity with the GitHub Action:

- **Code Quality reports** — CodeClimate format, shows findings as inline annotations on the MR diff (the GitLab equivalent of GitHub Code Scanning)
- **MR comments** — summary tables with collapsible details, updated on each push (set `FALLOW_COMMENT: "true"`)
- **All commands** — dead-code, dupes, health, fix, and bare combined analysis
- **36 configuration variables** — every GitHub Action input has a `FALLOW_*` CI/CD variable equivalent
- **Incremental caching** — `.fallow/` cache per branch for fast re-runs

## Bug fixes

- `list --no-cache` now works correctly
- Completed the `check` → `dead-code` rename across the GitHub Action (case statements, SARIF fallback, job summary dispatch)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.0.1...v2.1.0
