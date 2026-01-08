---
title: cargo-deny
date: 2026-01-08 21:15:37 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: https://github.com/EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v2.0.15
dependentsNumber: "5,728"
---


Version updated for **https://github.com/EmbarkStudios/cargo-deny-action** to version **v2.0.15**.
- This action is used across all versions by **5,728** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Action Summary

The `cargo-deny` GitHub Action automates the process of analyzing and validating dependencies in Rust projects using the `cargo-deny` tool. It checks for issues such as banned crates, disallowed licenses, and potential advisories in a project's dependency tree, helping maintain compliance and security. This action streamlines dependency management, ensuring projects adhere to specified standards and policies.

## Release notes

### Changed
- [PR#802](https://github.com/EmbarkStudios/cargo-deny/pull/802) made relative paths passed to `--config` be resolved relative to the current working directory (rather than the resolved manifest path's directory).
- [PR#825](https://github.com/EmbarkStudios/cargo-deny/pull/825) updated `gix`, `reqwest`, and `tame-index` to newer versions. The `reqwest` 0.13 changes means it is no longer possible to choose the source of root certificates for `gix`, so that decision is now left to `rustls-platform-verifier`. The `native-certs` feature has thus been removed, and `cargo-deny` no longer defaults to using `webpki-roots`.

### Fixed
- [PR#802](https://github.com/EmbarkStudios/cargo-deny/pull/802) fixed path handling of paths passed to `--config`, resolving [#748](https://github.com/EmbarkStudios/krates/issues/748).
- [PR#819](https://github.com/EmbarkStudios/cargo-deny/pull/819) added locations to all SARIF results since that's mandatory for valid SARIF.
- [PR#821](https://github.com/EmbarkStudios/cargo-deny/pull/821) fixed compilation on an Alpine host.

### Added
- [PR#795](https://github.com/EmbarkStudios/cargo-deny/pull/795) added `[bans.allow-workspace]` to allow workspace crates while denying all external crates.
- [PR#800](https://github.com/EmbarkStudios/cargo-deny/pull/800) added `[licenses.include-build]` to toggle whether build dependencies are included in the license check.
- [PR#823](https://github.com/EmbarkStudios/cargo-deny/pull/823) added `[advisories.unused-ignored-advisory]` to disable the warning when an advisory is ignored but not encountered in the crate graph.
- [PR#826](https://github.com/EmbarkStudios/cargo-deny/pull/826) added `[advisories.unsound]` to determine which crates can show `unsound` advisories, similarly to the `unmaintained` field. Defaults to `workspace` crates, ignoring `unsound` advisories for transitive dependencies, resolving [#824](https://github.com/EmbarkStudios/cargo-deny/issues/824).
