---
title: vcpkg GitHub Packages cache
date: 2026-06-20 07:13:16 +00:00
tags:
  - LegalizeAdulthood
  - GitHub Actions
draft: false
repo: https://github.com/LegalizeAdulthood/vcpkg-github-cache
marketplace: https://github.com/marketplace/actions/vcpkg-github-packages-cache
version: v1.2.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LegalizeAdulthood/vcpkg-github-cache** to version **v1.2.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcpkg-github-packages-cache) to find the latest changes.

## What's Changed

## Version 1.2

This patch release improves analyzer reporting for parallel workflow runs that race to upload the same vcpkg package.

### Fixed

- Report duplicate upload races as `already present` instead of `failed` when vcpkg logs a failed NuGet push but GitHub Packages already contains the same package version.
- Avoid classifying those duplicate-upload races as upload failures when all failed package submissions are already present.
- Keep explicit denied-write package uploads classified as failed.

### Changed

- Parse vcpkg package ABI hashes from build logs.
- Query GitHub package version names during package metadata probes so upload status can be matched against the exact `-vcpkg...` package version.

### Notes

No workflow input changes are required.

**Full Changelog**: https://github.com/LegalizeAdulthood/vcpkg-github-cache/compare/v1.1.0...v1.2.0
