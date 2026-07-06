---
title: vcpkg GitHub Packages cache
date: 2026-07-06 23:08:29 +00:00
tags:
  - LegalizeAdulthood
  - GitHub Actions
draft: false
repo: https://github.com/LegalizeAdulthood/vcpkg-github-cache
marketplace: https://github.com/marketplace/actions/vcpkg-github-packages-cache
version: v1.5.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LegalizeAdulthood/vcpkg-github-cache** to version **v1.5.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcpkg-github-packages-cache) to find the latest changes.

## What's Changed

## What's Changed
- Improved BSD setup compatibility for current vcpkg on FreeBSD, OpenBSD, and NetBSD.
- Made BSD vcpkg-tool package caching repository-scoped to avoid cross-repo collisions.
- Fixed FreeBSD warm-cache restores caused by stale NuGet HTTP cache data.
- Added setup-log analysis for setup-side vcpkg-tool publish failures.
- Kept package summary links available when GitHub omits package settings metadata.

**Full Changelog**: https://github.com/LegalizeAdulthood/vcpkg-github-cache/compare/v1.4.0...v1.5.0
