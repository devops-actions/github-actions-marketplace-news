---
title: Release Build Flow Action
date: 2026-02-19 21:49:22 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.0.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.0.1**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

The Release Build Flow GitHub Action automates the process of creating releases, managing semantic versioning, and maintaining changelogs by analyzing conventional commit messages. It eliminates the need for manual tasks like determining version bumps, writing structured changelogs, and publishing GitHub Releases. This action provides deterministic, rule-based logic for streamlined release management, ensuring consistency and efficiency in software development workflows.

## Release notes

## [1.0.1] - 2026-02-19

### Removed

- delete CHANGELOG.md file

### Fixed

- compact `commits-json` output with `jq -c` in `parse-commits.sh` (#11)
