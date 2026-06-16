---
title: Setup Git for Windows SDK
date: 2026-06-16 23:30:18 +00:00
tags:
  - git-for-windows
  - GitHub Actions
draft: false
repo: https://github.com/git-for-windows/setup-git-for-windows-sdk
marketplace: https://github.com/marketplace/actions/setup-git-for-windows-sdk
version: v2.1.0
dependentsNumber: "17,806"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/git-for-windows/setup-git-for-windows-sdk** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **17,806** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-git-for-windows-sdk) to find the latest changes.

## What's Changed

Support the pseudo-architecture `ucrt64`

Since the MSYS2 project (on which Git for Windows is based) deprecated
the MINGW64 flavor in favor of the UCRT64 flavor, there needs to be a
way to run GitHub workflows with the latter. This version provides that.

