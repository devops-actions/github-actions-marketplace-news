---
title: HyperStickler
date: 2025-12-21 05:26:13 +00:00
tags:
  - GeorgeSapkin
  - GitHub Actions
draft: false
repo: https://github.com/GeorgeSapkin/hyperstickler
marketplace: https://github.com/marketplace/actions/hyperstickler
version: v1-beta.2
dependentsNumber: "1"
---


Version updated for **https://github.com/GeorgeSapkin/hyperstickler** to version **v1-beta.2**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hyperstickler) to find the latest changes.

## Action Summary

HyperStickler is a GitHub Action designed to enforce formalities and best practices for commits and pull requests based on predefined guidelines, such as author naming conventions, commit message formatting, and branch usage. It automates the validation process to ensure compliance with submission rules, reducing manual review effort and improving consistency in code contributions. Key capabilities include configurable checks, detailed feedback on violations, and optional commenting on pull requests.

## Release notes

### New tests

- Commit subject must not start with whitespace

### Improvements:

- Improve performance by reducing git calls and using bash built-ins instead of external tools.
- Rewrite self test definition, check each status for each test, list failing checks with expected statuses, and run self tests in parallel.
- Make feedback URL optional. If it's is empty, no feedback text will be added to either console log or comment.
- Add optional git hooks to run self tests.
- Misc fixes.

**Full Changelog**: https://github.com/GeorgeSapkin/hyperstickler/compare/v1-beta.1...v1-beta.2
