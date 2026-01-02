---
title: Setup Haskell
date: 2026-01-02 21:17:27 +00:00
tags:
  - haskell-actions
  - GitHub Actions
draft: false
repo: https://github.com/haskell-actions/setup
marketplace: https://github.com/marketplace/actions/setup-haskell
version: v2.10.1
dependentsNumber: "2,652"
---


Version updated for **https://github.com/haskell-actions/setup** to version **v2.10.1**.
- This action is used across all versions by **2,652** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-haskell) to find the latest changes.

## Action Summary

This GitHub Action, `haskell-actions/setup`, automates the setup of a Haskell development environment in CI workflows by installing and configuring specific versions of GHC, Cabal, and optionally Stack, while adding them to the system `PATH`. It solves the problem of managing Haskell toolchain dependencies and ensures compatibility by using pre-installed or custom-installed versions. Key capabilities include version-specific installations, environment variable outputs for toolchain paths, and integration with tools like `ghcup` and `chocolatey` for flexible version management.

## Release notes

Move all ghcup-add-channel commands into same group




## What's Changed
* Remove broken GHC 9.12.3 by @andreasabel in https://github.com/haskell-actions/setup/pull/133


**Full Changelog**: https://github.com/haskell-actions/setup/compare/v2.10.0...v2.10.1
