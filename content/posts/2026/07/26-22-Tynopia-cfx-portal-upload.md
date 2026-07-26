---
title: Upload Escrow Asset
date: 2026-07-26 22:24:08 +00:00
tags:
  - Tynopia
  - GitHub Actions
draft: false
repo: https://github.com/Tynopia/cfx-portal-upload
marketplace: https://github.com/marketplace/actions/upload-escrow-asset
version: v1.2.6
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The CFX Portal Upload Action automates the process of uploading assets to the CFX Portal, a new platform that supports GitHub Actions. It solves the problem of using CFX Keymaster for CI/CD pipelines by utilizing the less restrictive attack mode of the Portal. The action requires an authentication cookie from the forum and provides parameters to customize asset naming, whether to ZIP the repository, and whether to upload as a release candidate or use a specific changelog version in the `fxmanifest.lua`.
---


Version updated for **https://github.com/Tynopia/cfx-portal-upload** to version **v1.2.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-escrow-asset) to find the latest changes.

## Action Summary

The CFX Portal Upload Action automates the process of uploading assets to the CFX Portal, a new platform that supports GitHub Actions. It solves the problem of using CFX Keymaster for CI/CD pipelines by utilizing the less restrictive attack mode of the Portal. The action requires an authentication cookie from the forum and provides parameters to customize asset naming, whether to ZIP the repository, and whether to upload as a release candidate or use a specific changelog version in the `fxmanifest.lua`.

## What's Changed

## [1.2.6](https://github.com/Tynopia/cfx-portal-upload/compare/v1.2.5...v1.2.6) (2026-07-26)


### Bug Fixes

* wait for uploaded version before cleanup ([9a73f3f](https://github.com/Tynopia/cfx-portal-upload/commit/9a73f3fd7b928005d551a77c3d9cd20e9b396e32))

