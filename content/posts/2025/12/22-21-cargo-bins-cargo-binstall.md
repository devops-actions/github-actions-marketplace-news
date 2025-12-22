---
title: Install cargo-binstall
date: 2025-12-22 21:13:27 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.16.5
dependentsNumber: "12"
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.16.5**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a Rust tool that provides a streamlined way to install precompiled Rust binaries as an alternative to building them from source using `cargo install`. It simplifies the process by leveraging existing CI artifacts, searching for prebuilt releases, and falling back to `cargo install` only when necessary. This action automates and accelerates binary installation, reducing build times and effort for developers and CI pipelines.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Fix crates-io registry not recognised (#2395 #2401)
- Fix docs-rs compilation (#2402)

#### Other changes:

- Upgrade dependencies
