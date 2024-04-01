---
title: Install LLVM and Clang
date: 2024-04-01 03:30:15 +00:00
tags:
  - KyleMayes
  - GitHub Actions
draft: false
repo: KyleMayes/install-llvm-action
marketplace: https://github.com/marketplace/actions/install-llvm-and-clang
version: v2.0.0
dependentsNumber: "2,406"
---


Version updated for **KyleMayes/install-llvm-action** to version **v2.0.0**.
- This action is used across all versions by **2,406** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-llvm-and-clang) to find the latest changes.

## Release notes

### Migrating from v1

- Support for LLVM and Clang 3.5 through 7.0 has been removed (use 7.1 or later)
- The `download-url` input has been renamed to `mirror-url`
- The `force-version` and `ubuntu-version` inputs have been replaced with the `force-url` input

### Other Changes

- Added `arch` input
- Added support for various missing LLVM and Clang versions up to 18.1.2

