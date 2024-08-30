---
title: Setup Git for Windows SDK
date: 2024-08-30 00:52:21 +00:00
tags:
  - git-for-windows
  - GitHub Actions
draft: false
repo: git-for-windows/setup-git-for-windows-sdk
marketplace: https://github.com/marketplace/actions/setup-git-for-windows-sdk
version: v1.10.3
dependentsNumber: "730"
---


Version updated for **git-for-windows/setup-git-for-windows-sdk** to version **v1.10.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **730** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-git-for-windows-sdk) to find the latest changes.

## Release notes

Lots of dependency updates & more stringent ci-artifacts query

This version brings tons and tons of updated dependencies, and is a bit
preciser when looking for the latest successful `ci-artifacts` run lest
it finds an accidentally-pushed topic branch that is not `main`.

