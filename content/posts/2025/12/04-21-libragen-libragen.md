---
title: Build Libragen Library
date: 2025-12-04 21:55:51 +00:00
tags:
  - libragen
  - GitHub Actions
draft: false
repo: https://github.com/libragen/libragen
marketplace: https://github.com/marketplace/actions/build-libragen-library
version: libragen/mcp0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/libragen/libragen** to version **@libragen/mcp@0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-libragen-library) to find the latest changes.

## Release notes

### Minor Changes

-   [`e63c78e`](https://github.com/libragen/libragen/commit/e63c78e41cafda3a9196b6bbedff4dafc367f147) Thanks [@yokuze](https://github.com/yokuze)! - ### @libragen/mcp

    -   Add `libragen_config` tool to expose configuration info (paths, version, discovered directories, environment variables)

    ### @libragen/cli

    -   Add active library paths display to `config` command showing project-local and global paths
    -   Fix `install` command to accept multiple `-p, --path` flags (aligning with `uninstall`, `list`, `update`)

    ### @libragen/core

    -   Fix Windows compatibility for path separators and file locking in tests

### Patch Changes

-   Updated dependencies \[[`e63c78e`](https://github.com/libragen/libragen/commit/e63c78e41cafda3a9196b6bbedff4dafc367f147)]:
    -   @libragen/core@0.2.0

