---
title: PR Cherry Pick
date: 2024-05-03 19:31:19 +00:00
tags:
  - wireapp
  - GitHub Actions
draft: false
repo: wireapp/action-auto-cherry-pick
marketplace: https://github.com/marketplace/actions/pr-cherry-pick
version: v1.0.1
dependentsNumber: "3"
---


Version updated for **wireapp/action-auto-cherry-pick** to version **v1.0.1**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-cherry-pick) to find the latest changes.

## Release notes

## What's Changed
### Features
- Automatic submodule finding. No need to specify the name of the submodule. Also supports multiple submodules.
No more `submodule-name` input. `submodules-target-branch` is used instead.

### Fixes
- When updating submodules, the cherrypick would take a previous commit. Now it works correctly.

### Chores
Bump the npm-development group with 3 updates by @dependabot in https://github.com/wireapp/action-auto-cherry-pick/pull/19

**Full Changelog**: https://github.com/wireapp/action-auto-cherry-pick/compare/v1.0.0...v1.0.1
