---
title: Release Build Flow Action
date: 2026-02-21 21:28:19 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.4.3
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.4.3**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

The Release Build Flow GitHub Action automates the process of creating releases, managing changelogs, and versioning using semantic versioning and the Keep a Changelog format. It eliminates manual tasks such as deciding version numbers, writing changelogs, and publishing GitHub releases by parsing Clean Commit messages, categorizing changes, and generating structured outputs. This action provides fully deterministic, rule-based logic for efficient and consistent release management, supporting both single and multi-package repositories.

## Release notes

## [1.4.3] - 2026-02-21

### Changed

- use shared temp file for WORKSPACE_PACKAGES in monorepo mode (#24)
