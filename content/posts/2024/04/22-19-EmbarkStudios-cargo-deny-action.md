---
title: cargo-deny
date: 2024-04-22 19:29:16 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v1.6.3
dependentsNumber: "3,091"
---


Version updated for **EmbarkStudios/cargo-deny-action** to version **v1.6.3**.
- This action is used across all versions by **3,091** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Release notes

### Fixed
- [PR#643](https://github.com/EmbarkStudios/cargo-deny/pull/643) resolved [#629](https://github.com/EmbarkStudios/cargo-deny/issues/629) by making the hosted git (github, gitlab, bitbucket) org/user name comparison case-insensitive. Thanks [@pmnlla](https://github.com/pmnlla)!
- [PR#649](https://github.com/EmbarkStudios/cargo-deny/pull/649) fixed an issue where depending on the same crate multiple times by using different `cfg()/triple` targets could cause features to be resolved incorrectly and thus crates to be not pulled into the graph used for checking.

## [0.14.20] - 2024-03-23
### Fixed
- [PR#642](https://github.com/EmbarkStudios/cargo-deny/pull/642) resolved [#641](https://github.com/EmbarkStudios/cargo-deny/issues/641) by pinning `gix-transport` (and its unique dependencies) to 0.41.2 as a workaround for `cargo install` not using the lockfile. See [this issue](https://github.com/Byron/gitoxide/issues/1328) for more information.
