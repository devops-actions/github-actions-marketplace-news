---
title: Setup Haskell
date: 2025-05-09 08:59:06 +00:00
tags:
  - haskell-actions
  - GitHub Actions
draft: false
repo: https://github.com/haskell-actions/setup
marketplace: https://github.com/marketplace/actions/setup-haskell
version: v2.8.0
dependentsNumber: "2,291"
---


Version updated for **https://github.com/haskell-actions/setup** to version **v2.8.0**.
- This action is used across all versions by **2,291** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-haskell) to find the latest changes.

## Release notes

Remove apt (ppa:hvr) fallback install method

This PR replicates https://github.com/haskell/actions/pull/138 by Bodigrim.

For recent Ubuntu (> 20.04) the PPA hvr does not provide any GHC
releases, so this install method is now dead.



## What's Changed
* Remove apt (ppa:hvr) fallback install method by @andreasabel in https://github.com/haskell-actions/setup/pull/121


**Full Changelog**: https://github.com/haskell-actions/setup/compare/v2.7...v2.8.0
