---
title: Build Rust Projects with Cross
date: 2023-12-11 03:17:20 +00:00
tags:
  - houseabsolute
  - GitHub Actions
draft: false
repo: houseabsolute/actions-rust-cross
marketplace: https://github.com/marketplace/actions/build-rust-projects-with-cross
version: v0.0.10
dependentsNumber: "181"
---


Version updated for **houseabsolute/actions-rust-cross** to version **v0.0.10**.
- This action is used across all versions by **181** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-rust-projects-with-cross) to find the latest changes.

## Release notes

- Fixed handling of crates with multiple binaries. Attempting to strip binaries for such a crate caused the build to fail. Reported by Tomaž Hribernik. GH #8
- Added a new `cross-version` parameter. This can be specified to make this action use a specific version of `cross`. If this is not specified, the latest version will be used.
