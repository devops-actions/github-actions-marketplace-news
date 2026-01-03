---
title: LLM Release Action
date: 2026-01-03 05:35:36 +00:00
tags:
  - nosovj
  - GitHub Actions
draft: false
repo: https://github.com/nosovj/llm-release-action
marketplace: https://github.com/marketplace/actions/llm-release-action
version: v1.3.3
dependentsNumber: "?"
---


Version updated for **https://github.com/nosovj/llm-release-action** to version **v1.3.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-release-action) to find the latest changes.

## Action Summary

The LLM Release Action automates the analysis of commit history to suggest semantic version bumps and generate audience-specific changelogs for product releases. It identifies breaking changes, consolidates related changes, and outputs tailored changelogs in various languages, tones, and formats for diverse stakeholders such as developers, customers, and executives. This action streamlines release management by simplifying versioning decisions, reducing manual effort, and ensuring clear, targeted communication of updates.

## Release notes

# v1.3.3

## Bug Fixes

- **Changelog generation now preserves commit references through processing pipeline**
  Fixed an issue where commit SHAs were being lost during the flatten operation. The changelog generator now correctly maintains commit references in the output format, ensuring full traceability of changes. [90e1bd5](https://github.com/nosovj/llm-release-action/commit/90e1bd54)

- **Improved classification of internal changes vs breaking changes**
  Clarified the distinction between breaking changes and internal refactoring in changelog generation. Internal changes such as Docker optimizations, infrastructure improvements, and code refactoring are now correctly categorized as non-breaking changes, preventing false positives in breaking change detection. [90e1bd5](https://github.com/nosovj/llm-release-action/commit/90e1bd54)
