---
title: Build Rust Projects with Cross
date: 2023-12-17 19:14:04 +00:00
tags:
  - houseabsolute
  - GitHub Actions
draft: false
repo: houseabsolute/actions-rust-cross
marketplace: https://github.com/marketplace/actions/build-rust-projects-with-cross
version: v0.0.11
dependentsNumber: "189"
---


Version updated for **houseabsolute/actions-rust-cross** to version **v0.0.11**.
- This action is used across all versions by **189** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-rust-projects-with-cross) to find the latest changes.

## Release notes

- Use `cross` when compiling for 32-bit Linux targets. While in theory this should work without `cross`, compiling `openssl` with the `vendored` feature fails when we run `cargo build --target i686-unknown-linux-musl`.
