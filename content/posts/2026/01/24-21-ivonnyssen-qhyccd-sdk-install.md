---
title: Install QHYCCD SDK
date: 2026-01-24 21:40:11 +00:00
tags:
  - ivonnyssen
  - GitHub Actions
draft: false
repo: https://github.com/ivonnyssen/qhyccd-sdk-install
marketplace: https://github.com/marketplace/actions/install-qhyccd-sdk
version: v2
dependentsNumber: "2"
---


Version updated for **https://github.com/ivonnyssen/qhyccd-sdk-install** to version **v2**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-qhyccd-sdk) to find the latest changes.

## Action Summary

The "Install QHYCCD SDK" GitHub Action automates the installation of the QHYCCD SDK on Linux, Windows, and macOS, ensuring platform-specific compatibility and configuration. It simplifies the setup process by automatically handling PATH configuration for immediate SDK usage and optionally caching downloaded files to optimize workflow performance. This action addresses the challenges of managing SDK installations across multiple operating systems, streamlining development workflows that depend on QHYCCD hardware.

## Release notes

## Install QHYCCD SDK v2

GitHub Action to install QHYCCD SDK on Linux, Windows, and macOS.

### Features

- **Automatic PATH Configuration**: On Windows and macOS, SDK binaries are automatically added to PATH
- **Smart Caching**: Optional caching of downloaded SDK files to speed up workflow runs
- **Cross-Platform**: Supports Linux (x64), Windows (x64), and macOS (Intel/Apple Silicon)
- **act Compatible**: Works with local testing using act

### Usage

\`\`\`yaml
- uses: ivonnyssen/qhyccd-sdk-install@v2
  with:
    version: "25.09.29"
\`\`\`

See the [README](https://github.com/ivonnyssen/qhyccd-sdk-install#readme) for more details.
