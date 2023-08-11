---
title: Setup toolchains for cross compilation and cross testing for Rust
date: 2023-08-11 21:40:52 +00:00
tags:
  - taiki-e
  - GitHub Actions
draft: false
repo: taiki-e/setup-cross-toolchain-action
marketplace: https://github.com/marketplace/actions/setup-toolchains-for-cross-compilation-and-cross-testing-for-rust
version: v1.16.0
dependentsNumber: 265
---


Version updated for **taiki-e/setup-cross-toolchain-action** to version **v1.16.0**.
- This publisher is shown verified by GitHub.
- This action is used across all versions by 265 repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-toolchains-for-cross-compilation-and-cross-testing-for-rust) to find the latest changes.

## Release notes

- Support specifying the QEMU version by using `qemu` input option, or `@` syntax in `runner` input option (if both are set, the latter is preferred).

  For example:

  ```yaml
  - uses: taiki-e/setup-cross-toolchain-action@v1
    with:
      target: aarch64-unknown-linux-gnu
      qemu: '7.2'
  ```

  ```yaml
  - uses: taiki-e/setup-cross-toolchain-action@v1
    with:
      target: aarch64-unknown-linux-gnu
      runner: qemu@8.1
  ```

- Support specifying the Wine version by using `wine` input option. Previously only `@` syntax in `runner` input option was supported.

- Update the default Wine version to 8.0.0, which is the latest stable version.
