---
title: Sentrik Gate
date: 2026-07-05 22:04:46 +00:00
tags:
  - maxgerhardson
  - GitHub Actions
draft: false
repo: https://github.com/maxgerhardson/sentrik-community
marketplace: https://github.com/marketplace/actions/sentrik-gate
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/maxgerhardson/sentrik-community** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentrik-gate) to find the latest changes.

## What's Changed

## v1.6.0

**Fixes the silent Linux binary.** The v1.4.0 Linux binary produced no output and exited 0 due to a missing CLI entry-point invocation in the frozen build. All platform binaries in this release are built from a dedicated entry point and verified to produce output in CI before upload.

Also in this release:
- npm wrapper now reports launch failures (wrong architecture, missing exec permission) instead of silently exiting 0
- npm installer verifies the downloaded binary runs on your machine at install time
- linux-arm64 is no longer incorrectly served the x64 binary — use `pip install sentrik` on ARM64 Linux

Install: `npm install -g sentrik` or `pip install sentrik`
