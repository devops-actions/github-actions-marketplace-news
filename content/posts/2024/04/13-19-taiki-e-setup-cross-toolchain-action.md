---
title: Setup toolchains for cross compilation and cross testing for Rust
date: 2024-04-13 19:26:32 +00:00
tags:
  - taiki-e
  - GitHub Actions
draft: false
repo: taiki-e/setup-cross-toolchain-action
marketplace: https://github.com/marketplace/actions/setup-toolchains-for-cross-compilation-and-cross-testing-for-rust
version: v1.21.0
dependentsNumber: "664"
---


Version updated for **taiki-e/setup-cross-toolchain-action** to version **v1.21.0**.
- This action is used across all versions by **664** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-toolchains-for-cross-compilation-and-cross-testing-for-rust) to find the latest changes.

## Release notes

- Support containers.

  Note:
  - Only Ubuntu and Debian containers are currently supported.
  - Not fully supported for some targets.
  - `--privileged` option is currently required (due to binfmt).

    ```yaml
    container:
      image: '...'
      options: --privileged
    ```

- Improve robustness of installation.
