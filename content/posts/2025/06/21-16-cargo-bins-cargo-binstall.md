---
title: Install cargo-binstall
date: 2025-06-21 16:58:00 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.14.0
dependentsNumber: "12"
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.14.0**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Fix glibc detection on arm Fedora (#2205)
- Add support for repository host Codeberg (#2202)
- Fix error for missing binaries when `--bin` does not include any of these missing bins (#1888 #2199)

#### Other changes:

- Rm uninstalled crates from `$CARGO_HOME/binstall/crates-v1.json` (#2197)
- Upgrade dependencies
