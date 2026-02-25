---
title: bulloak-toolchain
date: 2026-02-25 05:55:16 +00:00
tags:
  - smol-ninja
  - GitHub Actions
draft: false
repo: https://github.com/smol-ninja/bulloak-toolchain
marketplace: https://github.com/marketplace/actions/bulloak-toolchain
version: v2.2.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/smol-ninja/bulloak-toolchain** to version **v2.2.0**.
- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bulloak-toolchain) to find the latest changes.

## Action Summary

The Bulloak Toolchain GitHub Action automates the installation of the Bulloak toolchain and validates that Solidity test contracts adhere to the Bulloak Testing Toolkit (BTT) specification. It simplifies the process of integrating Bulloak into CI workflows, ensuring consistent test conformity and streamlining the testing process for Solidity projects.

## Release notes

### Changed

- Use pre-compiled binaries via `cargo-binstall` instead of building from source
- Use bulloak version as the cache key

### Fixed

- Validate that required input `test-dir` is not missing
