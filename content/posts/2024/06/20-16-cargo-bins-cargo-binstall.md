---
title: Install cargo-binstall
date: 2024-06-20 16:47:02 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.7.2
dependentsNumber: "10"
---


Version updated for **cargo-bins/cargo-binstall** to version **v1.7.2**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

Thank you @timsutton for contributing to this project and notify us of the breaking we cause in homebrew-core!

We are happy to know that cargo-binstall is included in homebrew-core!

#### In this release:

- Re-enable httpe support (#1783)

#### Other changes:

- Disable use of lld which breaks homebrew-core and is also not working on our CI (#1781 #1782)
