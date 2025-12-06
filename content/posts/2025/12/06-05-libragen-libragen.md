---
title: Build Libragen Library
date: 2025-12-06 05:20:44 +00:00
tags:
  - libragen
  - GitHub Actions
draft: false
repo: https://github.com/libragen/libragen
marketplace: https://github.com/marketplace/actions/build-libragen-library
version: libragen/mcp0.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/libragen/libragen** to version **@libragen/mcp@0.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-libragen-library) to find the latest changes.

## Release notes

### Minor Changes

-   [`1ce77c6`](https://github.com/libragen/libragen/commit/1ce77c6528916ae34084fe195a529d920ad5b506) Thanks [@yokuze](https://github.com/yokuze)! - Enhanced CLI path handling and updated default installation location.

    -   **Breaking Change**: Installations now default to `$LIBRAGEN_HOME/libraries` (global) instead of local `.libragen/libraries`.
    -   **Feature**: The `-p` flag now automatically appends `.libragen/libraries` to the provided path.
    -   **Improved**: Library discovery now prioritizes project-local libraries (shadowing global ones) while maintaining global default for new installations.
    -   Updated documentation and tests to reflect these changes.

### Patch Changes

-   Updated dependencies \[[`1ce77c6`](https://github.com/libragen/libragen/commit/1ce77c6528916ae34084fe195a529d920ad5b506)]:
    -   @libragen/core@0.3.0

