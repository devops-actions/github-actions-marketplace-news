---
title: Check file permission changes
date: 2026-03-19 21:49:04 +00:00
tags:
  - gi-org-pl
  - GitHub Actions
draft: false
repo: https://github.com/gi-org-pl/check-file-permissions-action
marketplace: https://github.com/marketplace/actions/check-file-permission-changes
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gi-org-pl/check-file-permissions-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-file-permission-changes) to find the latest changes.

## Action Summary

The **check-permissions-action** is a GitHub Action designed to detect and fail pull requests that introduce file permission changes (e.g., modifying file modes such as making a file executable). It automates the process of ensuring consistent file permissions across branches, helping teams enforce security and compliance standards in their repositories. The action identifies permission changes by comparing the PR branch against a specified base branch using `git diff`.

## Release notes

**Full Changelog**: https://github.com/gi-org-pl/check-file-permissions-action/compare/v1...v1.0.0
