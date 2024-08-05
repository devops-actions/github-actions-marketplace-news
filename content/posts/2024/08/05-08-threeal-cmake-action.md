---
title: CMake Action
date: 2024-08-05 08:47:15 +00:00
tags:
  - threeal
  - GitHub Actions
draft: false
repo: threeal/cmake-action
marketplace: https://github.com/marketplace/actions/cmake-action
version: v2.0.0
dependentsNumber: "496"
---


Version updated for **threeal/cmake-action** to version **v2.0.0**.
- This action is used across all versions by **496** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cmake-action) to find the latest changes.

## Release notes

* Migrated to JavaScript action using Node 20 (#69, #70, #72, #75, #78)
* Removed custom shell input (#81)
* Removed support for testing CMake projects (#256)
  > Note: Use the [CTest Action](https://github.com/marketplace/actions/ctest-action) instead.
* Removed support for auto-installing Ninja (#258)
* Modified the action to run build after configuration by default (#260)
