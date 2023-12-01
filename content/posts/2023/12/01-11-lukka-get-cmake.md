---
title: get-cmake
date: 2023-12-01 11:15:00 +00:00
tags:
  - lukka
  - GitHub Actions
draft: false
repo: lukka/get-cmake
marketplace: https://github.com/marketplace/actions/get-cmake
version: v3.27.9
dependentsNumber: "4,421"
---


Version updated for **lukka/get-cmake** to version **v3.27.9**.
- This action is used across all versions by **4,421** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-cmake) to find the latest changes.

## Release notes

The `get-cmake` action downloads and caches CMake and Ninja on your workflows. Versions can be specified using [semantic versioning ranges](https://docs.npmjs.com/about-semantic-versioning) using [`cmakeVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L13) and [`ninjaVersion`](https://github.com/lukka/get-cmake/blob/latest/action.yml#L16) inputs.

Changes:
 - `latest` is now using CMake version `v3.27.9`, use this one-liner e.g.:
 ```
    uses: lukka/get-cmake@latest
```

 <br>

-  `latestrc` is now CMake version `v3.28.0-rc6`, e.g.:
 
  ```
     uses: lukka/get-cmake@latest
     with:
        cmakeVersion: latestrc  
  ```

Enjoy!
