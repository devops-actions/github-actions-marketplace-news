---
title: get-cmake
date: 2024-02-21 19:24:37 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/get-cmake
marketplace: https://github.com/marketplace/actions/get-cmake
version: fix-issue-123
dependentsNumber: "4,742"
---


Version updated for **lukka/get-cmake** to version **fix-issue-123**.
- This action is used across all versions by **4,742** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-cmake) to find the latest changes.

## Release notes

The `get-cmake` action downloads and caches CMake and Ninja on your workflows. Versions can be specified using [semantic versioning ranges](https://docs.npmjs.com/about-semantic-versioning) using [`cmakeVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L13) and [`ninjaVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L16) inputs.

Changes:
 - Fix for #123 
 -  `latestrc` is now CMake version `v3.29.0-rc1`, e.g.:
 
  ```
     uses: lukka/get-cmake@latest
     with:
        cmakeVersion: latestrc  
  ```

Enjoy!
