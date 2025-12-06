---
title: ZeroFS Volume
date: 2025-12-05 05:20:37 +00:00
tags:
  - Barre
  - GitHub Actions
draft: false
repo: https://github.com/Barre/ZeroFS
marketplace: https://github.com/marketplace/actions/zerofs-volume
version: v0.19.3
dependentsNumber: "0"
---


Version updated for **https://github.com/Barre/ZeroFS** to version **v0.19.3**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerofs-volume) to find the latest changes.

## Release notes

## What's Changed
* Various performance improvements.
* Exit process on fatal write errors to prevent a broken running state by @Barre in https://github.com/Barre/ZeroFS/pull/269
* Reduce GC interval to 1 min instead of 10 mins by @Barre in https://github.com/Barre/ZeroFS/pull/270
* Increase `filter_bits_per_key` by @Barre in https://github.com/Barre/ZeroFS/pull/274
* Replace tarpc with tonic by @Barre in https://github.com/Barre/ZeroFS/pull/275
* Scan chunks for reads instead of parallel gets by @Barre in https://github.com/Barre/ZeroFS/pull/276

**Full Changelog**: https://github.com/Barre/ZeroFS/compare/v0.19.2...v0.19.3
