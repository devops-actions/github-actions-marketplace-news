---
title: Install cargo-binstall
date: 2026-01-19 21:32:01 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.16.7
dependentsNumber: "12"
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.16.7**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a lightweight tool for installing precompiled Rust binaries as an alternative to building them from source with `cargo install` or manually downloading packages. It streamlines the installation process by leveraging existing CI artifacts and infrastructure, reducing effort for package maintainers and users. The tool automatically fetches crate information, locates compatible artifacts (including third-party sources), and falls back to building from source when necessary, making it an efficient solution for managing Rust binary installations.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Error if --install-path is passed when building from source (#2398 #2430)

#### Other changes:

- docs: fix grammatical error in --github-token docs (#2421)
- Upgrade dependencies
