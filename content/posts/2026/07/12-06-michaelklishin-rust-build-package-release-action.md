---
title: Rust Build, Package and Release Action
date: 2026-07-12 06:12:45 +00:00
tags:
  - michaelklishin
  - GitHub Actions
draft: false
repo: https://github.com/michaelklishin/rust-build-package-release-action
marketplace: https://github.com/marketplace/actions/rust-build-package-and-release-action
version: v3.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/michaelklishin/rust-build-package-release-action** to version **v3.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-build-package-and-release-action) to find the latest changes.

## What's Changed

## v3.1.0 (Jul 11, 2026)

### Bug Fixes

 * `test-deb` and `test-rpm` now work in clean distro containers.
   The action previously failed with `cargo: command not found` because it always compiled itself from source.
   It now downloads a prebuilt MUSL-based static binary when no Rust toolchain is present
 * `publish-crate` with `publish-dry-run: true` now works on PRs and branch pushes. Previously it tried to validate the ref as a version tag and failed on refs like `14/merge`


