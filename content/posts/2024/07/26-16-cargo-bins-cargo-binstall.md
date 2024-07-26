---
title: Install cargo-binstall
date: 2024-07-26 16:47:46 +00:00
tags:
  - cargo-bins
  - GitHub Actions
draft: false
repo: cargo-bins/cargo-binstall
marketplace: https://github.com/marketplace/actions/install-cargo-binstall
version: v1.8.0
dependentsNumber: "11"
---


Version updated for **cargo-bins/cargo-binstall** to version **v1.8.0**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-cargo-binstall) to find the latest changes.

## Release notes

_Binstall is a tool to fetch and install Rust-based executables as binaries. It aims to be a drop-in replacement for `cargo install` in most cases. Install it today with `cargo install cargo-binstall`, from the binaries below, or if you already have it, upgrade with `cargo binstall cargo-binstall`._

#### In this release:

 - Fix: Ignore invalid Github Token (token length < 10) (#1836 #1839)
 - Add environment variable `BINSTALL_DISABLE_STRATEGIES` for `--disable-strategies` (#1833 #1838)
 - Add new option `--disable-telemetry` to disable quickinstall statistics collection (#1822 #1831)
 - Feature: Enable maintainers of crate to disable strategies for the crate using `package.binstall` (can be overriden by CLI users) (#1721 #1828)
 - Fix v1 manifest format for git and local path (#1815 #1821)
 - Fix: normalize GitHub URLs ending in .git to not ending in .git (#1801 #1803 #1804)

#### Other changes:

 - Fixed `install-from-binstall-release.sh` on raspberry pi (#1814)
 - Enable feature  `native-tls/vendored` if both feature `native-tls` and `static` is enabled (#1694 #1832)
