---
title: Install cargo-binstall
date: 2023-10-08 18:58:26 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.4.3
dependentsNumber: "9"
---


Version updated for **cargo-bins/cargo-binstall** to version **v1.4.3**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

 - Fix DNS resolution on Windows and add more logging (#1417 #1436)
 - Fix fallback to `cargo-install`: Use the default target unless user override (#1420 #1430)
 - Fix `detect-targets` glibc detection (#1420 #1421)
