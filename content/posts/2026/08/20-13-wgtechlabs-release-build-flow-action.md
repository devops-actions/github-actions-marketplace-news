---
title: Release Build Flow Action
date: 2026-08-20 13:57:19 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.8.0
dependentsNumber: "13"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of creating releases and maintaining a changelog based on commit history, supporting both Clean Commit and Conventional Commit conventions. It automatically detects semantic version bumps, generates and syncs changelogs, updates manifest versions, commits changes, creates release tags, and publishes GitHub Releases. The action supports per-package and unified monorepo workflows with optional changelog commits back to the repository.
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.8.0**.

- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

This GitHub Action automates the process of creating releases and maintaining a changelog based on commit history, supporting both Clean Commit and Conventional Commit conventions. It automatically detects semantic version bumps, generates and syncs changelogs, updates manifest versions, commits changes, creates release tags, and publishes GitHub Releases. The action supports per-package and unified monorepo workflows with optional changelog commits back to the repository.

## What's Changed

## [1.8.0] - 2026-08-20

### Added

- add immutable planned release inputs (#31)

### Changed

- accept compatible planned release plans (#33)
- fail fast on prerelease prefix with planned inputs
