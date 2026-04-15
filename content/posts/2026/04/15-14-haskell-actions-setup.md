---
title: Setup Haskell
date: 2026-04-15 14:23:31 +00:00
tags:
  - haskell-actions
  - GitHub Actions
draft: false
repo: https://github.com/haskell-actions/setup
marketplace: https://github.com/marketplace/actions/setup-haskell
version: v2.11.0
dependentsNumber: "3,220"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/haskell-actions/setup** to version **v2.11.0**.

- This action is used across all versions by **3,220** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-haskell) to find the latest changes.

## Action Summary

The `haskell-actions/setup` GitHub Action automates the setup of a Haskell development environment in CI workflows. It installs and configures specific versions of GHC, Cabal, and optionally Stack, adding them to the system `PATH`, and provides metadata outputs such as installed versions and paths. This action simplifies and standardizes the process of preparing Haskell tools for continuous integration, reducing manual configuration effort.

## What's Changed

GHC: try ghcup first, choco only as fallback




## What's Changed
* Add GHC 9.12.4 and Stack 3.9.3 by @andreasabel in https://github.com/haskell-actions/setup/pull/142
* Bump softprops/action-gh-release from 2 to 3 by @dependabot[bot] in https://github.com/haskell-actions/setup/pull/143
* GHC: try ghcup first, choco only as fallback by @andreasabel in https://github.com/haskell-actions/setup/pull/144


**Full Changelog**: https://github.com/haskell-actions/setup/compare/v2.10.3...v2.11.0
