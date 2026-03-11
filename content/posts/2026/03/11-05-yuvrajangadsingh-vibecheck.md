---
title: vibecheck-ai-slop
date: 2026-03-11 05:53:17 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## Action Summary

Vibecheck is a tool designed to identify and flag common issues and code smells, particularly those introduced by AI-generated code, such as security vulnerabilities, poor error handling, and low-quality patterns. It automates the detection of problems like hardcoded secrets, unsafe SQL queries, and TypeScript `any` usage, helping developers maintain secure, clean, and production-ready code. With zero configuration required, it provides fast, local scanning and integrates seamlessly into workflows, including pre-commit checks and CI pipelines.

## Release notes

## What's new

### Diff mode (`--diff` and `--staged`)
Scan only lines changed in your git diff. Useful for pre-commit hooks and incremental CI on large repos.

```bash
vibecheck --diff .          # scan unstaged changes
vibecheck --staged .        # scan staged changes (pre-commit hook)
vibecheck --staged --json . # CI-friendly output
```

### Fixes
- Robust diff parser: handles quoted paths, filenames with spaces, `\ No newline at end of file` marker
- Uses `execFileSync` instead of `execSync` (no shell involvement)
- Scanner skips unchanged files before any I/O in diff mode
- JSON output works correctly for empty diffs

### Stats
- 53 tests passing
- 14 rules
