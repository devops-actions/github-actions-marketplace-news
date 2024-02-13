---
title: Smart Diff
date: 2024-02-13 03:28:46 +00:00
tags:
  - LouisBrunner
  - GitHub Actions
draft: false
repo: LouisBrunner/diff-action
marketplace: https://github.com/marketplace/actions/smart-diff
version: v2.0.0
dependentsNumber: "55"
---


Version updated for **LouisBrunner/diff-action** to version **v2.0.0**.
- This action is used across all versions by **55** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smart-diff) to find the latest changes.

## Release notes

# Breaking Change

The default `tolerance` is now `same` in order to better match the new default `mode` which is `strict`. By default, this action will act as a strict `diff` check. The previous behavior can be done by simply adding `tolerance: better` to your script (check README.md for more details).

## What's Changed
* feat: introduce strict mode, change defaults and add comprehensive test suite by @LouisBrunner in https://github.com/LouisBrunner/diff-action/pull/17


**Full Changelog**: https://github.com/LouisBrunner/diff-action/compare/v1.0.0...v2.0.0
