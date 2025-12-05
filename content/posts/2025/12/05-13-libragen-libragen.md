---
title: Build Libragen Library
date: 2025-12-05 13:12:34 +00:00
tags:
  - libragen
  - GitHub Actions
draft: false
repo: https://github.com/libragen/libragen
marketplace: https://github.com/marketplace/actions/build-libragen-library
version: libragen/core0.2.1
dependentsNumber: "?"
---


Version updated for **https://github.com/libragen/libragen** to version **@libragen/core@0.2.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-libragen-library) to find the latest changes.

## Release notes

### Patch Changes

-   [`7060aad`](https://github.com/libragen/libragen/commit/7060aad2856555c814102d6404753d717bc077da) Thanks [@yokuze](https://github.com/yokuze)! - **Performance Improvements:**

    -   Refactor time estimation with config objects for better maintainability
    -   Implement lazy embedder initialization with background warming for faster startup

    **Features:**

    -   Upgrade Commander.js to v14 with enhanced TypeScript support, providing better type inference and developer experience

    **Fixes:**

    -   Make VERSION constant dynamically read from package.json instead of being hardcoded

    **Refactoring:**

    -   Remove legacy markings from collection search functionality
    -   Remove legacy marking from collection install option

    **Documentation:**

    -   Update CLI usage examples and workflow in README
    -   Add quick setup and usage examples to MCP README
    -   Fix CLI install command syntax in marketing copy
    -   Update collections description to focus on team use case

