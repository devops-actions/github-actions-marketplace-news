---
title: Conventional Release Creator
date: 2026-07-28 06:27:58 +00:00
tags:
  - so1omon563
  - GitHub Actions
draft: false
repo: https://github.com/so1omon563/release-creator
marketplace: https://github.com/marketplace/actions/conventional-release-creator
version: v2.0.0
dependentsNumber: "13"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation of GitHub Releases by generating structured release notes from conventional commit history. It can be used standalone on tag push or manually triggered and supports multiple release note formats, including `grouped`, `conventional`, `flat`, and `github-native`. The action also automatically detects pre-release status, handles floating pointer tags, uploads assets via file glob patterns, and skips creation when a release already exists.
---


Version updated for **https://github.com/so1omon563/release-creator** to version **v2.0.0**.

- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/conventional-release-creator) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of GitHub Releases by generating structured release notes from conventional commit history. It can be used standalone on tag push or manually triggered and supports multiple release note formats, including `grouped`, `conventional`, `flat`, and `github-native`. The action also automatically detects pre-release status, handles floating pointer tags, uploads assets via file glob patterns, and skips creation when a release already exists.

## What's Changed

### 🐛 Bug Fixes
- pin local-only native tags (`38f7228`)
- fail closed on missing native target (`5d3bfad`)
- pin native release target (`b0e3e17`)
- validate inferred and native notes (`842dd19`)

### 📖 Documentation
- explain Marketplace release publishing (`09dbb35`)

### 🧹 Chores
- add Marketplace metadata (`d8e11e2`)
