---
title: AAB to APK with Bundletool
date: 2026-07-19 22:06:06 +00:00
tags:
  - roberteggl
  - GitHub Actions
draft: false
repo: https://github.com/roberteggl/bundletool-action
marketplace: https://github.com/marketplace/actions/aab-to-apk-with-bundletool
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Bundletool Action is a GitHub Action that automates the conversion of Android App Bundles (`.aab`) to APKs using Google's bundletool. It automatically downloads and caches bundletool with version pinning, supports both universal APK generation and device-specific APK extraction, provides optional APK signing from a keystore path or base64 GitHub Secret, and includes features like dry-run and verbose logging. The action validates configuration inputs and masks secrets in logs for enhanced security.
---


Version updated for **https://github.com/roberteggl/bundletool-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aab-to-apk-with-bundletool) to find the latest changes.

## Action Summary

The Bundletool Action is a GitHub Action that automates the conversion of Android App Bundles (`.aab`) to APKs using Google's bundletool. It automatically downloads and caches bundletool with version pinning, supports both universal APK generation and device-specific APK extraction, provides optional APK signing from a keystore path or base64 GitHub Secret, and includes features like dry-run and verbose logging. The action validates configuration inputs and masks secrets in logs for enhanced security.

## What's Changed

## [1.0.0](https://github.com/roberteggl/bundletool-action/compare/v0.1.3..v1.0.0) - 2026-07-19

### ⚙️ Miscellaneous Tasks

- Add workflow steps to build and assert signed universal APK from AAB -  by @roberteggl ([66e9a73](https://github.com/roberteggl/bundletool-action/commit/66e9a73a1e0837559ecd2e6b55912e5fd62a89de))
- Update README and SECURITY documentation for version 1.x and adjust CI workflow for keystore location -  by @roberteggl ([ed2f108](https://github.com/roberteggl/bundletool-action/commit/ed2f10873743e3de8dcd315cb9f8fc58fde271c3))
- Update version to 1.0.0 in package.json and adjust release instructions in AGENTS.md -  by @roberteggl ([64713a9](https://github.com/roberteggl/bundletool-action/commit/64713a9081adc6f5ea408a9c19917a3e23f9f287))




**Full Changelog**: https://github.com/roberteggl/bundletool-action/compare/v0.1.3...v1.0.0


