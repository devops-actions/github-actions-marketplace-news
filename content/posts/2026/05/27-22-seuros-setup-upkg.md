---
title: Setup upkg
date: 2026-05-27 22:48:17 +00:00
tags:
  - seuros
  - GitHub Actions
draft: false
repo: https://github.com/seuros/setup-upkg
marketplace: https://github.com/marketplace/actions/setup-upkg
version: v0.8.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/seuros/setup-upkg** to version **v0.8.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-upkg) to find the latest changes.

## Action Summary

The `setup-upkg` GitHub Action automates the installation of `upkg`, a universal package manager, in CI/CD workflows on GitHub Actions and Gitea Actions. It simplifies the process of managing and installing dependencies across different platforms and architectures. The action ensures a consistent setup environment by allowing users to specify or default to the latest version of `upkg`.

## What's Changed

## Usage

```yaml
- uses: seuros/setup-upkg@v0.8.1

- run: upkg install imagemagick
```

## Features

- Downloads pre-built upkg binary from GitHub releases
- Auto-detects platform and architecture (Linux, macOS, Windows / x64, ARM64)
- Works on both GitHub Actions and Gitea Actions (pure curl, no gh CLI dependency)
- Resolves `latest` version automatically, or pin to a specific version
