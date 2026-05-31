---
title: Setup Flutter submodule
date: 2026-05-31 22:17:14 +00:00
tags:
  - adil192
  - GitHub Actions
draft: false
repo: https://github.com/adil192/setup-flutter-submodule
marketplace: https://github.com/marketplace/actions/setup-flutter-submodule
version: v3
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/adil192/setup-flutter-submodule** to version **v3**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-flutter-submodule) to find the latest changes.

## Action Summary

This GitHub Action automates the setup and configuration of Flutter in CI workflows by using a git submodule to source the Flutter SDK instead of downloading it from Google's servers. It ensures consistent and reproducible builds by aligning the CI environment with the exact Flutter version specified in the submodule. Key capabilities include caching the Flutter SDK and pub dependencies to optimize workflow performance.

## What's Changed

- Added a `no-save-caches` flag to use `actions/cache/restore` instead of `actions/cache`.
  This can be useful to avoid sensitive or incomplete data going into the cache.

**Full Changelog**: https://github.com/adil192/setup-flutter-submodule/compare/v2...v3
