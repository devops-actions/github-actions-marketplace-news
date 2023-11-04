---
title: rust-toolchain-reborn
date: 2023-11-04 19:14:09 +00:00
tags:
  - placintaalexandru
  - GitHub Actions
draft: false
repo: placintaalexandru/toolchain
marketplace: https://github.com/marketplace/actions/rust-toolchain-reborn
version: v1.0.7
dependentsNumber: "?"
---


Version updated for **placintaalexandru/toolchain** to version **v1.0.7**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-toolchain-reborn) to find the latest changes.

## Release notes

Fork release from **actions-rs/toolchain**

### Added

- Input parameter: `force` that has the same effect as `rustup toolchain install
<TOOLCHAIN> --force`

### Changed

- Input parameter name: `target` -> `targets` that allow to specify a comma-separated list of targets to be added

