---
title: get-cmake
date: 2024-03-16 11:17:49 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/get-cmake
marketplace: https://github.com/marketplace/actions/get-cmake
version: v3.29.0-rc4
dependentsNumber: "4,837"
---


Version updated for **lukka/get-cmake** to version **v3.29.0-rc4**.
- This action is used across all versions by **4,837** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-cmake) to find the latest changes.

## Release notes

The `get-cmake` action downloads and caches CMake and Ninja on your workflows. Versions can be specified using [semantic versioning ranges](https://docs.npmjs.com/about-semantic-versioning) using [`cmakeVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L13) and [`ninjaVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L16) inputs.

Changes:
 -  `latestrc` is now CMake version `v3.29.0-rc4`, e.g.:
 
  ```
     uses: lukka/get-cmake@latest
     with:
        cmakeVersion: latestrc  
  ```

Enjoy!
