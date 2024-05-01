---
title: slither-action
date: 2024-05-01 19:30:49 +00:00
tags:
  - crytic
  - GitHub Actions
draft: false
repo: crytic/slither-action
marketplace: https://github.com/marketplace/actions/slither-action
version: v0.4.0
dependentsNumber: "1,367"
---


Version updated for **crytic/slither-action** to version **v0.4.0**.
- This action is used across all versions by **1,367** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slither-action) to find the latest changes.

## Release notes

# 0.4.0 - 2024-05-01

This is a minor release for the Slither Action - the Github Action for [Slither](https://github.com/crytic/slither).

This release introduces one new feature -- support for external Slither plugins.

#### Plugin support
You can now use the new `slither-plugins` property to point to a pip [requirements](https://pip.pypa.io/en/stable/reference/requirements-file-format/) file to install alongside Slither. This may be used to install additional third-party or in-house detectors. Refer to the [new example in the README](https://github.com/crytic/slither-action/tree/v0.4.0?tab=readme-ov-file#example-workflow-external-plugins) for a sample workflow using this new feature.

## What's Changed
* Add a way to install Slither plugins by @elopez in https://github.com/crytic/slither-action/pull/21
* Fix an issue where the stdout property may not be available if Slither has findings.


**Full Changelog**: https://github.com/crytic/slither-action/compare/v0.3.2...v0.4.0
