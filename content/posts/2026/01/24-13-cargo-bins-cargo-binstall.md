---
title: Install cargo-binstall
date: 2026-01-24 13:36:58 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.17.2
dependentsNumber: "12"
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.17.2**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a tool for installing Rust binaries by leveraging pre-built artifacts, providing a faster and more efficient alternative to building from source with `cargo install`. It simplifies the process by automatically fetching release artifacts from `crates.io` or associated repositories and falling back to alternative sources if necessary. This tool is particularly useful for reducing build times in CI environments and minimizing overhead for package maintainers.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Fix release pipeline for immutable release (#2445)
