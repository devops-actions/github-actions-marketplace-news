---
title: Install cargo-binstall
date: 2026-01-24 21:40:39 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.17.3
dependentsNumber: "12"
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.17.3**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a lightweight tool for installing precompiled Rust binaries, serving as an alternative to `cargo install` or manual downloads. It automates the process by fetching crate information, locating compatible release artifacts, and falling back to `cargo install` if necessary, streamlining installations for both developers and CI environments. This reduces build times and simplifies dependency management by leveraging existing release binaries.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Fix release pipeline (#2447)
