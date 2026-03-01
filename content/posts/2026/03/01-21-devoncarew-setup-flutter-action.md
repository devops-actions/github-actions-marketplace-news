---
title: Setup Flutter Action
date: 2026-03-01 21:20:36 +00:00
tags:
  - devoncarew
  - GitHub Actions
draft: false
repo: https://github.com/devoncarew/setup-flutter-action
marketplace: https://github.com/marketplace/actions/setup-flutter-action
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/devoncarew/setup-flutter-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-flutter-action) to find the latest changes.

## Action Summary

The "Setup Flutter Action" GitHub Action automates the installation of the Flutter SDK in CI workflows. It supports configuring the Flutter release channel, specific version, or latest patch for a minor version, ensuring a flexible and reproducible setup. Key capabilities include resolving and caching the appropriate Flutter SDK for the target OS and architecture, updating environment paths, and providing outputs for the installed Flutter version and SDK root directory.

## Release notes

- Installs the Flutter SDK.
- Accepts `channel` or `version` input.
- Channel can be one of `stable`, `beta`, or `main`, defaulting to `stable`.
- Version can be an exact match (e.g. `3.19.6`) or a version prefix (e.g. `3.19`). A version prefix resolves to the latest patch version of that series.
- Exposes `flutter-version` and `flutter-root` outputs.
- Adds `flutter`, `dart`, and `~/.pub-cache/bin` to the `PATH`.
- Caches the SDK so subsequent runs restore from cache instead of re-downloading.
- Supports Linux, macOS, and Windows.
- On macOS, performs architecture detection for `arm64` vs`x64`.

