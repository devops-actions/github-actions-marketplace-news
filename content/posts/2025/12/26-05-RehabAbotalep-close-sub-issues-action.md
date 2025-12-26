---
title: Close Sub-Issues Automatically
date: 2025-12-26 05:29:24 +00:00
tags:
  - RehabAbotalep
  - GitHub Actions
draft: false
repo: https://github.com/RehabAbotalep/close-sub-issues-action
marketplace: https://github.com/marketplace/actions/close-sub-issues-automatically
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/RehabAbotalep/close-sub-issues-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/close-sub-issues-automatically) to find the latest changes.

## Action Summary

The "Close Sub-Issues Action" is a GitHub Action designed to automatically close all sub-issues associated with a parent issue when the parent issue is closed. It streamlines issue management by automating the closure of related sub-issues and adds a summary comment to the parent issue for tracking. This action is particularly useful for maintaining organized workflows in repositories with hierarchical issue structures.

## Release notes

## What's Changed

### Features
- ⚡ Concurrent processing—closes sub-issues in parallel (chunks of 10) for better performance
- 📝 Enhanced parent issue comment now shows both closed and failed sub-issues
- 🔍 Better error logging with stack traces for debugging

### Improvements
- Optimized pagination (early exit when fewer results returned)
- Added Node.js engine requirement (>=20.0.0)
- Improved log messages

**Full Changelog**: https://github.com/RehabAbotalep/close-sub-issues-action/compare/v1.0.0...v1.1.0
