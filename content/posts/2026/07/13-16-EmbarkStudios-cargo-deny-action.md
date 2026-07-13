---
title: cargo-deny
date: 2026-07-13 16:41:28 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: https://github.com/EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v2.1.0
dependentsNumber: "7,901"
actionType: Docker
---


Version updated for **https://github.com/EmbarkStudios/cargo-deny-action** to version **v2.1.0**.

- This action is used across all versions by **7,901** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## What's Changed

### Changed
- [PR#881](https://github.com/EmbarkStudios/cargo-deny/pull/881) refactored the CLI, moving some duplicated options/flags into the root and removing several deprecated options/flags/values. See the PR for a full list of changes.

### Added
- [PR#879](https://github.com/EmbarkStudios/cargo-deny/pull/879) resolved [#873](https://github.com/EmbarkStudios/cargo-deny/issues/873) by adding a new [`bans.std-replacements`](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-std-replacements-field-optional) lint which checks the graph for crates.io sourced crates that have been partially or fully replaced in `std` and/or `core`.

### Fixed
- [PR#880](https://github.com/EmbarkStudios/cargo-deny/pull/880) resolved [#765](https://github.com/EmbarkStudios/cargo-deny/issues/765) by respecting non-default build script paths in manifests.
- [PR#881](https://github.com/EmbarkStudios/cargo-deny/pull/881) resolved [#874](https://github.com/EmbarkStudios/cargo-deny/issues/874) by cleaning up the CLI, deduplicating some options/flags that caused bug in the `list` subcommand.
