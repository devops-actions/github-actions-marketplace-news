---
title: Run pyright
date: 2023-09-05 11:17:07 +00:00
tags:
  - jakebailey
  - GitHub Actions
draft: false
repo: jakebailey/pyright-action
marketplace: https://github.com/marketplace/actions/run-pyright
version: v1.7.0
dependentsNumber: 579
---


Version updated for **jakebailey/pyright-action** to version **v1.7.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **579** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-pyright) to find the latest changes.

## Release notes

This version automatically uses Node 20 if present on the runner, rather than Node 16; this should improve performance by using a newer / faster version of Node.

This should bea backwards-compatible change; if a runner is missing Node 20 in the default runner install, Node 16 will continue to be used instead.
