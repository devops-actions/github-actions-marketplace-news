---
title: line-cap
date: 2026-02-21 03:44:39 +00:00
tags:
  - BenGlasser
  - GitHub Actions
draft: false
repo: https://github.com/BenGlasser/linecap
marketplace: https://github.com/marketplace/actions/line-cap
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/BenGlasser/linecap** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/line-cap) to find the latest changes.

## Action Summary

LineCap is a GitHub Action designed to enforce a maximum line count per file in your codebase by automatically checking files during CI workflows. It helps maintain code quality and manageability by identifying oversized files and preventing them from being merged. Key capabilities include configurable line limits, support for targeting specific file sets (e.g., new, changed, or explicit files), and outputting lists of offending files for further action.

## Release notes

## Fixes

- **Glob include/exclude filtering**: Replace broken custom glob_to_regex with Python built-in fnmatch for reliable pattern matching
- **Portable newline handling**: Use pre-assigned newline variable in file set construction to avoid ANSI-C quoting issues across bash environments
- **Move-major-tag workflow**: Fix nested tag dereference and missing git identity on runner
