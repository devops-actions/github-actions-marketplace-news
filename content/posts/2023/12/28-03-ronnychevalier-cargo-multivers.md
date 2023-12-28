---
title: cargo-multivers
date: 2023-12-28 03:20:31 +00:00
tags:
  - ronnychevalier
  - GitHub Actions
draft: false
repo: ronnychevalier/cargo-multivers
marketplace: https://github.com/marketplace/actions/cargo-multivers
version: v0.8.0
dependentsNumber: "1"
---


Version updated for **ronnychevalier/cargo-multivers** to version **v0.8.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-multivers) to find the latest changes.

## Release notes

## Version [0.8.0] - 27-12-2023

### Added

- A GitHub Action `cargo-multivers` is available to help build a binary in your CI and make it available during a release.
- `--out-dir` to copy the final binaries to a directory.

### Changed

- Update dependencies.

### Fixed

- Do not propagate the `CARGO_UNSTABLE_BUILD_STD` environment variable to the build of the runner (#7).
- Return an error on invalid CPUs from `--cpus` or from `cpu` list in `[package.metadata.multivers.ARCH]`.
- Fix build error when `--target-dir` is given as an argument to cargo build (e.g., `cargo multivers -- --target-dir target_dir`)

[0.8.0]: https://github.com/ronnychevalier/cargo-multivers/compare/v0.7.0...v0.8.0

