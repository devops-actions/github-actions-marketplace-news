---
title: Release Build Flow Action
date: 2026-02-22 13:23:45 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/release-build-flow-action
marketplace: https://github.com/marketplace/actions/release-build-flow-action
version: v1.5.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/release-build-flow-action** to version **v1.5.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-build-flow-action) to find the latest changes.

## Action Summary

The **Release Build Flow Action** automates the process of creating GitHub releases, managing versioning, and maintaining changelogs by analyzing commit messages following the Clean Commit convention. It eliminates manual tasks such as determining version bumps, categorizing changes, and generating structured changelogs in the Keep a Changelog format. Key features include intelligent semantic versioning, automated changelog updates, GitHub release creation, and support for monorepos, all using deterministic, rule-based logic.

## Release notes

## [1.5.0] - 2026-02-22

### Added

- add update-major-tag input and major-tag output for releases

### Changed

- enable major tag updates in release workflow
- add major tag output to action outputs
- enhance create-tag script to support major version tag updates
