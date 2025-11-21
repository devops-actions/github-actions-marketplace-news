---
title: ZeroFS Volume
date: 2025-11-21 13:02:02 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v0.17.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v0.17.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Release notes

Warning: This release is not compatible with the previous ZeroFS versions.

## What's Changed
* Add `--read-only` flag to use DbReader for read-only filesystem access by @Barre in https://github.com/Barre/ZeroFS/pull/215
* Implement manual checkpoint management and cache invalidation for rea… by @Barre in https://github.com/Barre/ZeroFS/pull/216
* Add configurable filesystem quota with max_size_gb option by @Barre in https://github.com/Barre/ZeroFS/pull/217
* Make LSM parameters configurable by @Barre in https://github.com/Barre/ZeroFS/pull/218
* Disable UnifiedCache for read-only mode to prevent stale reads from W… by @Barre in https://github.com/Barre/ZeroFS/pull/219
* Make TCP addresses optional to allow Unix socket-only configurations by @Barre in https://github.com/Barre/ZeroFS/pull/220
* Replace ChaCha20Poly1305 with XChaCha20Poly1305 by @Barre in https://github.com/Barre/ZeroFS/pull/221
* Bump dependencies by @Barre in https://github.com/Barre/ZeroFS/pull/224


**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v0.16.11...v0.17.0
