---
title: Setup Git for Windows SDK
date: 2024-05-13 03:36:16 +00:00
tags:
  - git-for-windows
  - GitHub Actions
draft: false
repo: git-for-windows/setup-git-for-windows-sdk
marketplace: https://github.com/marketplace/actions/setup-git-for-windows-sdk
version: v1.10.2
dependentsNumber: "686"
---


Version updated for **git-for-windows/setup-git-for-windows-sdk** to version **v1.10.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **686** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-git-for-windows-sdk) to find the latest changes.

## Release notes

Really work around broken builds with GCC v14.1

A recent MSYS2 update upgraded GCC from v13.* to v14.*, for which Git's
source code is not prepared. v1.10.1 already aimed to work around this,
but only uncovered a long-standing bug preventing that work-around from
working correctly. v1.10.2 fixes that.

