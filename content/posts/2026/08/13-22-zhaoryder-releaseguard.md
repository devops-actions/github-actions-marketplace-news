---
title: ReleaseGuard - Release Asset Quality Gate
date: 2026-08-13 22:01:55 +00:00
tags:
  - zhaoryder
  - GitHub Actions
draft: false
repo: https://github.com/zhaoryder/releaseguard
marketplace: https://github.com/marketplace/actions/releaseguard-release-asset-quality-gate
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **ReleaseGuard is a tool that inspects GitHub Release assets to catch common issues such as missing platforms, mislabeled architectures, empty installers, version drift, and missing checksums. It helps users choose the correct download based on their OS and CPU architecture, ensuring downloads are reliable and accurate.**
---


Version updated for **https://github.com/zhaoryder/releaseguard** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releaseguard-release-asset-quality-gate) to find the latest changes.

## Action Summary

**ReleaseGuard is a tool that inspects GitHub Release assets to catch common issues such as missing platforms, mislabeled architectures, empty installers, version drift, and missing checksums. It helps users choose the correct download based on their OS and CPU architecture, ensuring downloads are reliable and accurate.**

## What's Changed

ReleaseGuard v0.1.0 restores the release and adds a practical download advisor.

## What it does

- Checks GitHub Release assets and quality gates.
- Detects the current platform and architecture.
- Recommends the exact installer to download, with a reason and alternatives.
- Supports explicit checks with `--platform` and `--arch` when reviewing a release for another machine.
- Runs locally; no telemetry, uploads, or model calls.

## Quick start

```bash
npx --yes github:zhaoryder/releaseguard check zhaoryder/releaseguard
npx --yes github:zhaoryder/releaseguard check zhaoryder/releaseguard --platform macos --arch arm64
```

The same release includes installers for macOS (Apple Silicon, Intel, universal), Windows (x64, ARM64, x86), and Linux (x64/ARM64 AppImage and deb), plus native packages and checksums.

The previous release attachments deleted from GitHub could not be reconstructed byte-for-byte; this release was rebuilt from the preserved source and successful CI artifacts. The original v0.1.0 commit is retained as `v0.1.0-legacy`.
