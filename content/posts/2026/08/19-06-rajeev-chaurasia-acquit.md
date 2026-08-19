---
title: Acquit Test Selection
date: 2026-08-19 06:28:01 +00:00
tags:
  - rajeev-chaurasia
  - GitHub Actions
draft: false
repo: https://github.com/rajeev-chaurasia/acquit
marketplace: https://github.com/marketplace/actions/acquit-test-selection
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Acquit is a GitHub Action that uses dependency analysis and static checks to skip affected tests on pull requests, providing evidence for skips. It aims to reduce test suite execution time by skipping tests that cannot be proven safe based on import statements alone, while still running the full suite in cases where Acquit cannot reason about a PR's impact.
---


Version updated for **https://github.com/rajeev-chaurasia/acquit** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/acquit-test-selection) to find the latest changes.

## Action Summary

Acquit is a GitHub Action that uses dependency analysis and static checks to skip affected tests on pull requests, providing evidence for skips. It aims to reduce test suite execution time by skipping tests that cannot be proven safe based on import statements alone, while still running the full suite in cases where Acquit cannot reason about a PR's impact.

## What's Changed

## [0.1.2](https://github.com/rajeev-chaurasia/acquit/compare/v0.1.1...v0.1.2) (2026-08-19)


### Bug Fixes

* handle nested pytest configs and sync release pins ([#9](https://github.com/rajeev-chaurasia/acquit/issues/9)) ([d5bb932](https://github.com/rajeev-chaurasia/acquit/commit/d5bb93263eabd8d610bc2071f7cc3e4531eb1206))
