---
title: Install cargo-binstall
date: 2026-03-21 13:31:10 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.17.8
dependentsNumber: "12"
actionType: Composite
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.17.8**.
- This action is used across all versions by **12** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a lightweight tool for installing precompiled Rust binaries directly from existing CI artifacts or release repositories, providing an alternative to building from source (`cargo install`) or manually downloading packages. It simplifies the installation process for package maintainers and users by automating binary fetching and installation, with support for fallback mechanisms like third-party artifact hosts and `cargo install`. This action is particularly useful for streamlining CI/CD workflows and reducing installation time and complexity.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Upgrade dependencies

#### Other changes:

- Prebuilt signing process is much safer now (#2503)
