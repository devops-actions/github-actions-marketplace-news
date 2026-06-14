---
title: vcpkg GitHub Packages cache
date: 2026-06-14 15:15:15 +00:00
tags:
  - LegalizeAdulthood
  - GitHub Actions
draft: false
repo: https://github.com/LegalizeAdulthood/vcpkg-github-cache
marketplace: https://github.com/marketplace/actions/vcpkg-github-packages-cache
version: v1.1.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LegalizeAdulthood/vcpkg-github-cache** to version **v1.1.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcpkg-github-packages-cache) to find the latest changes.

## What's Changed

## Version 1.1.0

This release improves analyzer accuracy and makes cache miss summaries more actionable.

### Added

- Report packages built from source in the GitHub Step Summary.
- Show built package details as a table with package ID, version, build time, and upload status.
- Link built package IDs to their GitHub Packages settings page when metadata is available.

### Fixed

- Avoid false cache misses from CMake and MSBuild log lines such as `Building Custom Rule ...`.
- Avoid false auth failures from CTest test numbers such as `#401` and `#403`.
- Prefer complete build-log cache evidence over transient exact-restore probe failures, such as Mono TLS certificate errors.

### Notes

There are no workflow input changes required. Existing `@v1` users get these diagnostic and classification fixes when the floating `v1` tag is updated.

**Full Changelog**: https://github.com/LegalizeAdulthood/vcpkg-github-cache/compare/v1.0.0...v1.1.0
