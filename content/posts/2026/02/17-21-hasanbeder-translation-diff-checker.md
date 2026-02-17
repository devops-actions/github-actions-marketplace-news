---
title: Translation Diff Checker
date: 2026-02-17 21:35:04 +00:00
tags:
  - hasanbeder
  - GitHub Actions
draft: false
repo: https://github.com/hasanbeder/translation-diff-checker
marketplace: https://github.com/marketplace/actions/translation-diff-checker
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/hasanbeder/translation-diff-checker** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/translation-diff-checker) to find the latest changes.

## Action Summary

The "Translation Diff Checker" is a GitHub Action and CLI tool designed to compare two JSON translation files to identify missing keys and type mismatches, including deeply nested structures. It automates the detection of discrepancies in translation files and ensures type safety, providing a detailed Markdown report for review. Additionally, it can enforce strict mode to fail CI pipelines if errors are detected, streamlining localization workflows and ensuring accuracy.

## Release notes

## 🚀 Initial Release (v1.0.0)

This is the first stable release of the **Translation Diff Checker**, designed for enterprise-grade robust validation of JSON translation files.

### ✨ Key Features
- **Recursive Comparison:** deeply checks nested JSON structures.
- **Type Safety:** Detects mismatches (e.g., String vs Array).
- **Strict Mode:** Optionally blocks CI/CD pipelines on errors.
- **GitHub Integration:** Auto-generates a Markdown summary report in `$GITHUB_STEP_SUMMARY`.

### 📦 Usage
```yaml
- uses: hasanbeder/translation-diff-checker@v1.0.0
  with:
    source_file: 'locales/en.json'
    target_file: 'locales/tr.json'

**Full Changelog**: https://github.com/hasanbeder/translation-diff-checker/commits/v1.0.0

**Full Changelog**: https://github.com/hasanbeder/translation-diff-checker/commits/v1.0.0
