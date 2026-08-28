---
title: IconKit Ribbon
date: 2026-08-28 17:49:27 +00:00
tags:
  - rozd
  - GitHub Actions
draft: false
repo: https://github.com/rozd/icon-kit
marketplace: https://github.com/marketplace/actions/iconkit-ribbon
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  IconKit is a Swift library and CLI tool designed to work with Apple `.icon` bundles and Android adaptive icons. It enables the creation, inspection, modification, and validation of these icon formats using SF Symbols and provides features like adding environment ribbons to existing icons and generating adaptive icons in modern vector drawable and bitmap formats. The action supports full document models and is available as a command-line tool or embeddable library for Swift applications.
---


Version updated for **https://github.com/rozd/icon-kit** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iconkit-ribbon) to find the latest changes.

## Action Summary

IconKit is a Swift library and CLI tool designed to work with Apple `.icon` bundles and Android adaptive icons. It enables the creation, inspection, modification, and validation of these icon formats using SF Symbols and provides features like adding environment ribbons to existing icons and generating adaptive icons in modern vector drawable and bitmap formats. The action supports full document models and is available as a command-line tool or embeddable library for Swift applications.

## What's Changed

## What's Changed

### Bug Fixes
- resolve adaptive icon safe-zone positioning, legacy icon alpha masking, and vector gradients (`a893100`)
- fallback to building from source when pre-built binary is not found (`6b97e0d`)


### Other Changes
- Merge pull request #3 from rozd/feat/android-vector-drawables (`02c8c37`)
- expand unit tests for gradients, safe-zone viewports, content bounds, and alpha masking (`6b37d5c`)

**Full Changelog**: https://github.com/rozd/icon-kit/compare/v1.2.0...v1.2.1
