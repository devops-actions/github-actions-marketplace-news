---
title: Build Flow Action
date: 2026-08-20 22:25:11 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/build-flow-action
marketplace: https://github.com/marketplace/actions/build-flow-action
version: v0.2.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Build Flow Action is a reusable GitHub Actions workflow that automates the entire build and release lifecycle, eliminating manual configuration and ensuring consistent CI checks and security gates. It supports multiple ecosystems and provides zero-config detection of dependencies, allowing teams to focus on writing their own build commands rather than setting up complex workflows.
---


Version updated for **https://github.com/wgtechlabs/build-flow-action** to version **v0.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-flow-action) to find the latest changes.

## Action Summary

Build Flow Action is a reusable GitHub Actions workflow that automates the entire build and release lifecycle, eliminating manual configuration and ensuring consistent CI checks and security gates. It supports multiple ecosystems and provides zero-config detection of dependencies, allowing teams to focus on writing their own build commands rather than setting up complex workflows.

## What's Changed

## [0.2.0] - 2026-08-20

### Added

- add artifact-first releases (#41)

### Changed

- finish review fixes
- pin primitive release refs (#43)
- scope release concurrency and fix contract test
- add unified build flow entry workflow
