---
title: cargo-deny
date: 2024-03-22 19:02:09 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v1.6.2
dependentsNumber: "2,988"
---


Version updated for **EmbarkStudios/cargo-deny-action** to version **v1.6.2**.
- This action is used across all versions by **2,988** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Release notes

### Changed
- [PR#639](https://github.com/EmbarkStudios/cargo-deny/pull/639) updated tame-index to avoid an error if you don't used `--locked`.

## [0.14.18] - 2024-03-21
### Fixed
- [PR#638](https://github.com/EmbarkStudios/cargo-deny/pull/638) resolved [#636](https://github.com/EmbarkStudios/cargo-deny/issues/636) by updating `krates`.

## [0.14.17] - 2024-03-17
### Changed
- [PR#631](https://github.com/EmbarkStudios/cargo-deny/pull/631) improved the diagnostic for when the yank check fails due to some issue with retrieving or reading the index information.
- [PR#633](https://github.com/EmbarkStudios/cargo-deny/pull/633) updated `gix` -> 0.60.
