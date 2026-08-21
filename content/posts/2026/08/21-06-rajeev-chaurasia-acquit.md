---
title: Acquit Test Selection
date: 2026-08-21 06:37:49 +00:00
tags:
  - rajeev-chaurasia
  - GitHub Actions
draft: false
repo: https://github.com/rajeev-chaurasia/acquit
marketplace: https://github.com/marketplace/actions/acquit-test-selection
version: v0.1.3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Acquit is a GitHub Action that automatically skips tests on pull requests it determines are not affected by the changes. It uses static analysis of import statements to build a dependency graph and identifies which tests can be skipped, providing a machine-checkable witness for each skip. If Acquit cannot determine if a test is safe, it falls back to running the full suite. The tool has been tested on real history and provides an out-of-the-box share of 5.1% across multiple repositories.
---


Version updated for **https://github.com/rajeev-chaurasia/acquit** to version **v0.1.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/acquit-test-selection) to find the latest changes.

## Action Summary

Acquit is a GitHub Action that automatically skips tests on pull requests it determines are not affected by the changes. It uses static analysis of import statements to build a dependency graph and identifies which tests can be skipped, providing a machine-checkable witness for each skip. If Acquit cannot determine if a test is safe, it falls back to running the full suite. The tool has been tested on real history and provides an out-of-the-box share of 5.1% across multiple repositories.

## What's Changed

## [0.1.3](https://github.com/rajeev-chaurasia/acquit/compare/v0.1.2...v0.1.3) (2026-08-21)


### Bug Fixes

* preserve selection for unreachable sys.path scripts ([#12](https://github.com/rajeev-chaurasia/acquit/issues/12)) ([4315065](https://github.com/rajeev-chaurasia/acquit/commit/4315065c9a7150a61a196f8fb55daa0cb3df9262))
