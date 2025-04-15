---
title: Build Rust Projects with Cross
date: 2025-04-15 16:59:22 +00:00
tags:
  - houseabsolute
  - GitHub Actions
draft: false
repo: https://github.com/houseabsolute/actions-rust-cross
marketplace: https://github.com/marketplace/actions/build-rust-projects-with-cross
version: v1.0.4
dependentsNumber: "982"
---


Version updated for **https://github.com/houseabsolute/actions-rust-cross** to version **v1.0.4**.
- This action is used across all versions by **982** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-rust-projects-with-cross) to find the latest changes.

## Release notes

- Removed validation for the `toolchain` input. The [dtolnay/rust-toolchain](https://github.com/dtolnay/rust-toolchain) accepts a lot of different options that this action wasn't allowing. It's simpler and more flexible to just let that action handle validation. Requested by @axos88 (Akos Vandra-Meyer). GH #42.
- Removed validation for the `command` input. This allows you to use this action with any `cargo` extension command, like `cargo-deb`. Setting `command` to `both` is still supported and will run the `build` and `test` commands. Requested by @bvaisvil (Benjamin Vaisvil). GH #43.

