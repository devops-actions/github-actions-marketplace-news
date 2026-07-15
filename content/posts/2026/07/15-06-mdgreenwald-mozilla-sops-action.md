---
title: Mozilla SOPS Installer
date: 2026-07-15 06:59:14 +00:00
tags:
  - mdgreenwald
  - GitHub Actions
draft: false
repo: https://github.com/mdgreenwald/mozilla-sops-action
marketplace: https://github.com/marketplace/actions/mozilla-sops-installer
version: v2.1.1
dependentsNumber: "241"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action installs a specific version of the SOPS binary on the runner, automating tasks such as securing sensitive information in configuration files. It provides a caching mechanism to speed up future runs and supports various platforms through native binaries. The action also includes features like handling `latest` versions and pinning for security.
---


Version updated for **https://github.com/mdgreenwald/mozilla-sops-action** to version **v2.1.1**.

- This action is used across all versions by **241** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mozilla-sops-installer) to find the latest changes.

## Action Summary

This GitHub Action installs a specific version of the SOPS binary on the runner, automating tasks such as securing sensitive information in configuration files. It provides a caching mechanism to speed up future runs and supports various platforms through native binaries. The action also includes features like handling `latest` versions and pinning for security.

## What's Changed

### Fixed

- `downloadSops()` no longer calls `fs.chmodSync` unconditionally on a cache hit. Tool caches on filesystems that reject chmod (e.g. an SMB/CIFS share mounted on a self-hosted runner) previously failed the run with `EPERM: operation not permitted`, even though the cached binary already carried the executable bit from its original download. The chmod is now skipped whenever the cached binary is already executable. ([#250](https://github.com/mdgreenwald/mozilla-sops-action/issues/250), [#252](https://github.com/mdgreenwald/mozilla-sops-action/pull/252))

### Internal

- Dependency bumps: `@types/node` to `^26.1.1`, `@vercel/ncc` to `^0.44.1`, `prettier` to `^3.9.5`. ([#246](https://github.com/mdgreenwald/mozilla-sops-action/pull/246), [#252](https://github.com/mdgreenwald/mozilla-sops-action/pull/252))


