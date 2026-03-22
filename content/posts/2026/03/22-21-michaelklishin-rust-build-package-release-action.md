---
title: Rust Build, Package and Release Action
date: 2026-03-22 21:43:44 +00:00
tags:
  - michaelklishin
  - GitHub Actions
draft: false
repo: https://github.com/michaelklishin/rust-build-package-release-action
marketplace: https://github.com/marketplace/actions/rust-build-package-and-release-action
version: v2.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/michaelklishin/rust-build-package-release-action** to version **v2.0.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-build-package-and-release-action) to find the latest changes.

## Action Summary

The `rust-build-package-release-action` is a GitHub Action that automates the release process for Rust projects by building, cross-compiling, and packaging binaries for multiple platforms (Linux, macOS, Windows). It simplifies tasks like producing platform-specific packages (e.g., `.deb`, `.rpm`, `.dmg`, `.msi`), generating signature files and Software Bill of Materials (SBOMs), and managing release notes and checksums. By streamlining these workflows, it helps Rust developers save time and ensures consistent, reproducible builds and releases.

## Release notes

## v2.0.0 (Mar 22, 2026)

### New Features

 * A new `publish-crate` command for publishing to crates.io with Trusted Publishing (OIDC) support
 * `publish-dry-run` is a new input for validating packaging without publishing
 * New example workflows: `trusted-publishing.yml`, `publish-crate-only.yml`
 * `validate-version`: the `expected-version` check is now optional (version is extracted from the tag when omitted)

### Internal Changes

 * The Action is now backed by a native binary instead of a collection of Nu shell scripts


