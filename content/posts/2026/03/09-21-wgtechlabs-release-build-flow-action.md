---
title: Release Build Flow Action
date: 2026-03-09 21:48:30 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.7.0
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.7.0**.
- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

The **Release Build Flow Action** automates the release management process by turning commit history into versioned releases, generating changelogs, syncing version files, and creating GitHub Releases. It simplifies tasks like semantic versioning, changelog updates, and release tagging based on Clean Commit or Conventional Commit messages. The action is especially useful for maintaining organized release workflows, supporting monorepo structures, and ensuring consistent version control with minimal manual effort.

## Release notes

## [1.7.0] - 2026-03-09

### Added

- convention-aware non-release type filtering
- support monorepo [Unreleased] updates with root/pkg flags

### Changed

- refactor commit type mapping with convention-aware section resolution
- use empty convention-aware defaults for inputs
- add monorepo disabled changelog output tests
- document monorepo unreleased changelog flag support
- fix MSYS path conversion in per-package changelog lookup
- update changelog types and exclude-types defaults
- add unreleased and setup-type changelog tests
- remove version-bump guard from changelog steps
- support unreleased maintenance-type entries
- simplify structure and update description
- clarify update-major-tag targets the release commit
- point major tag directly to release commit
- strip carriage returns to fix cross-platform compatibility
- ignore `.contributerc.json` config file

### Removed

- revert from conventional patch keywords
- clean up unused space in changelog
