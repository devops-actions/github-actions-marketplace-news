---
title: Setup UniRTM
date: 2026-07-05 14:52:03 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unirtm
marketplace: https://github.com/marketplace/actions/setup-unirtm
version: v0.5.0
dependentsNumber: "34"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/snowdreamtech/setup-unirtm** to version **v0.5.0**.

- This action is used across all versions by **34** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unirtm) to find the latest changes.

## What's Changed

## [0.5.0](https://github.com/snowdreamtech/setup-unirtm/compare/v0.4.1...v0.5.0) (2026-07-05)


### Features

* add job summary output ([23587ed](https://github.com/snowdreamtech/setup-unirtm/commit/23587ed14e5d14273098cd42059b0467f6a1e1c8))
* atomic caching to prevent corrupted cache on install failure ([2f09505](https://github.com/snowdreamtech/setup-unirtm/commit/2f095057de7fc0af68a6f9514d4f056c81c56d76))


### Bug Fixes

* polyfill import.meta.url for esbuild CJS bundle ([3ff3077](https://github.com/snowdreamtech/setup-unirtm/commit/3ff3077b5a9cb257747cd77d69fba16859f49968))
* remove esbuild minify to fix createRequire(import.meta.url) cjs interop bug ([0be14b5](https://github.com/snowdreamtech/setup-unirtm/commit/0be14b5c2fb1a0633bc255f53fe461bf7ba0b27e))
* temporarily disable pip auto-detection and integration test ([9d019b4](https://github.com/snowdreamtech/setup-unirtm/commit/9d019b4818b55ea33febcaa4b15cf6bfc56c5635))
