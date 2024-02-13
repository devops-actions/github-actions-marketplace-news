---
title: Setup ko
date: 2024-02-13 19:26:57 +00:00
tags:
  - ko-build
  - GitHub Actions
draft: false
repo: ko-build/setup-ko
marketplace: https://github.com/marketplace/actions/setup-ko
version: v0.6
dependentsNumber: "0"
---


Version updated for **ko-build/setup-ko** to version **v0.6**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ko) to find the latest changes.

## Release notes

https://github.com/imjasonh/setup-ko/compare/v0.5...9a31684920a610d5dbe8012888714d64706f9787

Fixes issue related to ko moving to a new GitHub org, where API calls to determine the latest `ko` release would fail due to not following GitHub's redirect.

Users who specify `version` (including `tip`) are unaffected.
