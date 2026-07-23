---
title: UnityPackage Builder
date: 2026-07-23 15:10:27 +00:00
tags:
  - r74tech
  - GitHub Actions
draft: false
repo: https://github.com/r74tech/create-unitypackage
marketplace: https://github.com/marketplace/actions/unitypackage-builder
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the creation of Unity `.unitypackage` files by downloading a precompiled native CLI, verifying its integrity, and executing it to package assets. It simplifies the process of bundling Unity projects into portable formats across different platforms. The action supports Linux, macOS, and Windows, with options for customizing the project directory, asset files, and output path.
---


Version updated for **https://github.com/r74tech/create-unitypackage** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unitypackage-builder) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of Unity `.unitypackage` files by downloading a precompiled native CLI, verifying its integrity, and executing it to package assets. It simplifies the process of bundling Unity projects into portable formats across different platforms. The action supports Linux, macOS, and Windows, with options for customizing the project directory, asset files, and output path.

## What's Changed

## 1.0.0 (2026-07-23)

### 🚀 Features

- Generate deterministic `.unitypackage` archives on Linux, macOS, and Windows.
- Download the native `unitypackage` CLI and verify it using SHA-256 checksums.
- Support current inputs and compatibility aliases for existing workflows.
- Run without shell interpolation or npm runtime dependencies.
