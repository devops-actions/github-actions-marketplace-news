---
title: ZeroFS Volume
date: 2025-11-27 05:13:35 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v0.18.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v0.18.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Release notes

Warning: This version is not compatible with previous versions.

## What's Changed
* Implement checkpoint creation / management by @Barre in https://github.com/Barre/ZeroFS/pull/235
* Refactor cloud provider env vars into Settings helper method by @Barre in https://github.com/Barre/ZeroFS/pull/231
* Debug list keys command by @Barre in https://github.com/Barre/ZeroFS/pull/232
* Update cache config root folder by @Barre in https://github.com/Barre/ZeroFS/pull/233
* Replace moka cache with foyer by @Barre in https://github.com/Barre/ZeroFS/pull/236
* Write-coordinator by @Barre in https://github.com/Barre/ZeroFS/pull/237
* Replace "socket" by "unix_socket" in docs by @Barre in https://github.com/Barre/ZeroFS/pull/239
* Fix write coordinator deadlock by @Barre in https://github.com/Barre/ZeroFS/pull/241
* Update metadata cache after write instead of invalidating by @Barre in https://github.com/Barre/ZeroFS/pull/238
* Disable WAL by @Barre in https://github.com/Barre/ZeroFS/pull/242
* Add configurable periodic flush interval via `lsm.flush_interval_secs` by @Barre in https://github.com/Barre/ZeroFS/pull/244
* Skip garbage collection and periodic flush tasks in read-only mode by @Barre in https://github.com/Barre/ZeroFS/pull/245


**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v0.17.3...v0.18.0
