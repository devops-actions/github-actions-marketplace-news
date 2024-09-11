---
title: release extension
date: 2024-09-11 16:47:33 +00:00
tags:
  - cli
  - GitHub Actions
draft: false
repo: cli/gh-extension-precompile
marketplace: https://github.com/marketplace/actions/release-extension
version: v2.0.0
dependentsNumber: "436"
---


Version updated for **cli/gh-extension-precompile** to version **v2.0.0**.
- This action is used across all versions by **436** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-extension) to find the latest changes.

## Release notes

## Notice: Breaking Changes ⚠️

`v2` introduces a breaking change by disabling `android-arm64` and `android-amd64` build targets by default due to https://github.com/cli/gh-extension-precompile/issues/50#issuecomment-2078086299.

For more information, see "[Building for Android](https://github.com/cli/gh-extension-precompile?tab=readme-ov-file#building-for-android)."

## What's Changed

* Fix android builds requiring external (cgo) linking, but cgo is not enabled by @BagToad in https://github.com/cli/gh-extension-precompile/pull/56

## New Contributors
* @BagToad made their first contribution in https://github.com/cli/gh-extension-precompile/pull/56

**Full Changelog**: https://github.com/cli/gh-extension-precompile/compare/v1.6.0...v2.0.0
