---
title: Install cargo-binstall
date: 2026-02-28 13:25:52 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: https://github.com/cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.17.6
dependentsNumber: "12"
actionType: Composite
---


Version updated for **https://github.com/cargo-bins/cargo-binstall** to version **v1.17.6**.
- This action is used across all versions by **12** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Action Summary

Cargo Binstall is a lightweight tool for installing precompiled Rust binaries, serving as an alternative to `cargo install` or manual downloads. It automates the process by fetching crate information, locating release artifacts from repositories or third-party hosts, and falling back to source compilation if necessary. This action simplifies binary installation, reduces build times, and is particularly suited for CI environments or scenarios where quick, unattended setups are required.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

- Fix infinite rate limit waiting (#2485)

#### Other changes:

- Upgrade dependencies
