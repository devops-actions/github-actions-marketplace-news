---
title: Setup scoop
date: 2024-02-11 03:26:21 +00:00
tags:
  - MinoruSekine
  - GitHub Actions
draft: false
repo: MinoruSekine/setup-scoop
marketplace: https://github.com/marketplace/actions/setup-scoop
version: v3
dependentsNumber: "94"
---


Version updated for **MinoruSekine/setup-scoop** to version **v3**.
- This action is used across all versions by **94** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-scoop) to find the latest changes.

## Release notes

## Summary of this release
* A new parameter `run_as_admin` to enable/disable `-RunAsAdmin` option on installing scoop
* Now `buckets` parameter accepts only known buckets
  * `scoop bucket known` command shows list of known buckets

## What's Changed
* doc: How to improve performance of workflow with `actions/cache`. by @MinoruSekine in https://github.com/MinoruSekine/setup-scoop/pull/25
* fix: Reject unknown buckets in `buckets` parameter. by @MinoruSekine in https://github.com/MinoruSekine/setup-scoop/pull/30
* feat: Support to disable `-RunAsAdmin` with param `run_as_admin`. by @MinoruSekine in https://github.com/MinoruSekine/setup-scoop/pull/27
* refactoring: Restructured GitHub Actions workflows. by @MinoruSekine in https://github.com/MinoruSekine/setup-scoop/pull/32
* doc: Updated README.md for `@v3` release. by @MinoruSekine in https://github.com/MinoruSekine/setup-scoop/pull/33


**Full Changelog**: https://github.com/MinoruSekine/setup-scoop/compare/v2...v3
