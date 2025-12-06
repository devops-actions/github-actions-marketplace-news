---
title: Install cargo-binstall
date: 2024-08-04 08:46:21 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.9.0
dependentsNumber: "11"
---


Version updated for **cargo-bins/cargo-binstall** to version **v1.9.0**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

 - Add `--maximum-resolution-timeout` (#1823 #1862)
 - Fix: `--strategies` on CLI do not seem to override disabled-strategies in the manifest (#1851 #1857)
