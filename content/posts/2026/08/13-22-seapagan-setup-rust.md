---
title: Set up Rust
date: 2026-08-13 22:17:37 +00:00
tags:
  - seapagan
  - GitHub Actions
draft: false
repo: https://github.com/seapagan/setup-rust
marketplace: https://github.com/marketplace/actions/set-up-rust
version: v1.0.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action installs a Rust toolchain specification and optional components and targets in a CI workflow. It automates the setup of Rust development environments by handling complex Rustup configurations and ensuring reproducible builds across different platforms. The action provides flexibility to install specific versions or nightly builds of Rust, as well as add custom Rustup components and targets for cross-compilation.
---


Version updated for **https://github.com/seapagan/setup-rust** to version **v1.0.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rust) to find the latest changes.

## Action Summary

This GitHub Action installs a Rust toolchain specification and optional components and targets in a CI workflow. It automates the setup of Rust development environments by handling complex Rustup configurations and ensuring reproducible builds across different platforms. The action provides flexibility to install specific versions or nightly builds of Rust, as well as add custom Rustup components and targets for cross-compilation.

## What's Changed

First stable release of `seapagan/setup-rust`.

- Installs a requested rustup toolchain specification, including explicit Rust versions and standard channels such as `stable`, `beta`, and `nightly`.
- Installs optional rustup components and Rust targets.
- Selects the requested toolchain for subsequent job steps through `RUSTUP_TOOLCHAIN`, without changing rustup's persistent default toolchain.
- Integration-tested on GitHub-hosted Linux, Windows, and macOS runners.

Installing a target provides Rust target support only. It does not install external linkers, SDKs, or cross-compilers.
