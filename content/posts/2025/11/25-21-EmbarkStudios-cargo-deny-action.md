---
title: cargo-deny
date: 2025-11-25 21:09:46 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: https://github.com/EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v2.0.14
dependentsNumber: "5,488"
---


Version updated for **https://github.com/EmbarkStudios/cargo-deny-action** to version **v2.0.14**.
- This action is used across all versions by **5,488** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Release notes

## [0.18.5](https://github.com/EmbarkStudios/cargo-deny/releases/tag/0.18.5)
### Changed
- [PR#789](https://github.com/EmbarkStudios/cargo-deny/pull/789) changed it so that release binaries are now built with LTO.
- [PR#790](https://github.com/EmbarkStudios/cargo-deny/pull/790) and [PR#794](https://github.com/EmbarkStudios/cargo-deny/pull/794) updated various crates.

### Added
- [PR#790](https://github.com/EmbarkStudios/cargo-deny/pull/790) added [SARIF](https://sarifweb.azurewebsites.net/) as an output format, usable via `--format sarif`. The current output for this format is experimental and may change in future updates.

## [0.18.6](https://github.com/EmbarkStudios/cargo-deny/releases/tag/0.18.6)
### Fixed
- [PR#805](https://github.com/EmbarkStudios/cargo-deny/pull/805) updated `rustsec` to 0.31, resolving [#804](https://github.com/EmbarkStudios/cargo-deny/issues/804).
- [PR#810](https://github.com/EmbarkStudios/cargo-deny/pull/810) resolved [#809](https://github.com/EmbarkStudios/cargo-deny/issues/809) by printing the crate name and version when its manifest does not contain a `license` expression.

### Added
- [PR#807](https://github.com/EmbarkStudios/cargo-deny/pull/807) added the `unused-license-exception` option to configure the lint level, resolving [#806](https://github.com/EmbarkStudios/cargo-deny/issues/806).

### Changed
- [PR#808](https://github.com/EmbarkStudios/cargo-deny/pull/808) updated `gix` to 0.75.
