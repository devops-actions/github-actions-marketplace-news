---
title: Create changelog based release
date: 2026-04-08 13:59:20 +00:00
tags:
  - brainelectronics
  - GitHub Actions
draft: false
repo: https://github.com/brainelectronics/changelog-based-release
marketplace: https://github.com/marketplace/actions/create-changelog-based-release
version: v1.1.0
dependentsNumber: "16"
actionType: Composite
---


Version updated for **https://github.com/brainelectronics/changelog-based-release** to version **v1.1.0**.

- This action is used across all versions by **16** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-changelog-based-release) to find the latest changes.

## Action Summary

This GitHub Action, **Changelog based release**, automates the process of creating GitHub Releases and tags based on a project's changelog file. It parses version information from a changelog that follows semantic versioning and ISO8601 date formats, ensuring consistent and structured release management. This action simplifies release workflows, reduces manual effort, and ensures accurate versioning for software projects.

## What's Changed

### Added
- `.pre-commit-config` with `yamllint`

### Changed
- Use `softprops/action-gh-release` over deprecated and archived `actions/create-release`
- Update `setup-python` action from `v4` to `v6`
- Update `checkout` action from `v3` to `v6`
- Update `changelog2version` from `0.9.0` to `0.12.1`

### Fixed
- Solved all `yamllint` warnings
