---
title: ZeroFS Volume
date: 2025-12-02 21:12:18 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v0.19.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v0.19.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Release notes

Warning: this release is not compatible with previous releases

## What's Changed
* Large performance improvements.
* Number of hardlinks is now virtually unlimited.
* Fix race condition in rename by re-verifying source and target inside lock by @Barre in https://github.com/Barre/ZeroFS/pull/253
* Fix duplicate d_off values in readdir by encoding . and .. entries wi… by @Barre in https://github.com/Barre/ZeroFS/pull/254
* Implement stable directory cookies for reliable readdir pagination by @Barre in https://github.com/Barre/ZeroFS/pull/257
* Simplify 9P readdir to use cookies directly as offsets per protocol spec by @Barre in https://github.com/Barre/ZeroFS/pull/258
* Fix pjdfstest on nfs by @Barre in https://github.com/Barre/ZeroFS/pull/259
* Clean up directory cookie counter when deleting directories by @Barre in https://github.com/Barre/ZeroFS/pull/261
* Add xfstests workflow by @Barre in https://github.com/Barre/ZeroFS/pull/260


**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v0.18.1...v0.19.1
