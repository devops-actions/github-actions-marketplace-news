---
title: Fixpoint - Auto-Fix Security Vulnerabilities
date: 2026-01-25 21:52:15 +00:00
tags:
  - IWEBai
  - GitHub Actions
draft: false
repo: https://github.com/IWEBai/fixpoint
marketplace: https://github.com/marketplace/actions/fixpoint-auto-fix-security-vulnerabilities
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/IWEBai/fixpoint** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fixpoint-auto-fix-security-vulnerabilities) to find the latest changes.

## Action Summary

Fixpoint is a GitHub Action designed to automatically detect and fix common security vulnerabilities in pull requests, such as SQL injection, hardcoded secrets, and XSS vulnerabilities. It streamlines the process of identifying and resolving these issues, reducing time-to-merge by providing deterministic, automated fixes directly in PRs. The action supports both a "warn" mode for non-intrusive suggestions and an "enforce" mode for automatic fixes, making it suitable for both development and production environments.

## Release notes

## Fixpoint v1.0.0 - Initial Release

Auto-fix security vulnerabilities in your PRs.

### Features
- **SQL Injection Auto-Fix**: Converts to parameterized queries
- **Hardcoded Secrets Auto-Fix**: Replaces with `os.environ.get()`
- **XSS Auto-Fix**: Removes unsafe patterns in templates and Python

### Modes
- **Warn Mode**: Comments with proposed fixes (default)
- **Enforce Mode**: Automatically applies fixes

### Quick Start
```yaml
- uses: IWEBai/fixpoint@v1
  with:
    mode: warn
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

See [CHANGELOG.md](https://github.com/IWEBai/fixpoint/blob/main/CHANGELOG.md) for full details.

