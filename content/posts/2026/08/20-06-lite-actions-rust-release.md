---
title: Rust Release Matrix
date: 2026-08-20 06:38:15 +00:00
tags:
  - lite-actions
  - GitHub Actions
draft: false
repo: https://github.com/lite-actions/rust-release
marketplace: https://github.com/marketplace/actions/rust-release-matrix
version: v1.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of building, testing, and packaging Rust projects across multiple platforms and architectures. It provides a reusable workflow that generates a dynamic build matrix and fans out over it to run tests and package binaries for each combination. Users can specify optional parameters such as the Rust version, platforms, architectures, binary name, release notes file, and whether to upload zips to GitHub Releases when run on tags. The action uses native runners for each platform and architecture combination to ensure compatibility without cross-compilation.
---


Version updated for **https://github.com/lite-actions/rust-release** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-release-matrix) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building, testing, and packaging Rust projects across multiple platforms and architectures. It provides a reusable workflow that generates a dynamic build matrix and fans out over it to run tests and package binaries for each combination. Users can specify optional parameters such as the Rust version, platforms, architectures, binary name, release notes file, and whether to upload zips to GitHub Releases when run on tags. The action uses native runners for each platform and architecture combination to ensure compatibility without cross-compilation.

## What's Changed

## What's Changed
* ci: fix the changelog automation, adopt git-checkout, normalise org refs by @mrdoodles in https://github.com/lite-actions/rust-release/pull/3
* docs(changelog): update changelog and release notes by @mrdoodles in https://github.com/lite-actions/rust-release/pull/4


**Full Changelog**: https://github.com/lite-actions/rust-release/compare/v1.1.1...v1.12
