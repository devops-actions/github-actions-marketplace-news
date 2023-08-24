---
title: Cache install Nix packages
date: 2023-08-24 11:07:13 +00:00
tags:
  - rikhuijzer
  - GitHub Actions
draft: false
repo: rikhuijzer/cache-install
marketplace: https://github.com/marketplace/actions/cache-install-nix-packages
version: v1.1.2
dependentsNumber: 2
---


Version updated for **rikhuijzer/cache-install** to version **v1.1.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-install-nix-packages) to find the latest changes.

## Release notes

## What's Changed

* Handle `.nix-profile` better and avoid unneeded save by @rikhuijzer in https://github.com/rikhuijzer/cache-install/pull/18

Thanks to @haizaar, two issues were fixed. One could crash an Action run when `/home/runner/.nix-profile` existed. Another issue caused the cache to be saved even after a cache restore. The default behavior of the `actions/cache` is to not save after a restore and now `rikhuijzer/cache-install` has the same behavior. Thanks again for @haizaar for diving into the GitHub Action logs and opening an issue.

**Full Changelog**: https://github.com/rikhuijzer/cache-install/compare/v1.1.1...v1.1.2
