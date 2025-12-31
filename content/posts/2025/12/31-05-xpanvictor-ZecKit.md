---
title: ZecKit Devnet
date: 2025-12-31 05:32:24 +00:00
tags:
  - xpanvictor
  - GitHub Actions
draft: false
repo: https://github.com/xpanvictor/ZecKit
marketplace: https://github.com/marketplace/actions/zeckit-devnet
version: v0.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/xpanvictor/ZecKit** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zeckit-devnet) to find the latest changes.

## Action Summary

ZecKit is a GitHub Action and toolkit designed to facilitate Zcash development on the Zebra blockchain, enabling real blockchain transactions and end-to-end testing workflows. It automates the setup of a Zcash development environment, including a Zebra regtest node, lightwalletd or Zaino backends, and an integrated faucet for transaction testing. With pre-built Docker images, a CLI tool, and reusable GitHub Actions, ZecKit streamlines testing of shielded transaction flows, making it an efficient solution for developers working with Zcash.

## Release notes

## ZecKit v1.0.0

First stable release of ZecKit - a one-command Zebra devnet for Zcash development.

### Features
- One-command devnet startup
- Backend toggle (lightwalletd / Zaino)
- Pre-funded faucet with real transactions
- Golden E2E shielded flow tests
- Pre-built Docker images on GHCR

### Usage
```yaml
- uses: xpanvictor/ZecKit@v1
  with:
    backend: zaino
    run-e2e: 'true'
