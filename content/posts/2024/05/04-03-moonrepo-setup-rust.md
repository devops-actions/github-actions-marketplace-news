---
title: Setup Rust and Cargo
date: 2024-05-04 03:34:47 +00:00
tags:
  - moonrepo
  - GitHub Actions
draft: false
repo: moonrepo/setup-rust
marketplace: https://github.com/marketplace/actions/setup-rust-and-cargo
version: v1.2.0
dependentsNumber: "257"
---


Version updated for **moonrepo/setup-rust** to version **v1.2.0**.
- This action is used across all versions by **257** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-rust-and-cargo) to find the latest changes.

## Release notes

- Added a `target-dirs` input, allowing the target folders to be specified. Can now cache multiple
  target folders.
- Updated to skip caching a directory if it does not exist, instead of failing.
- Updated dependencies.
