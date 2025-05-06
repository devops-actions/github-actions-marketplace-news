---
title: vcpkg-cache
date: 2025-05-06 01:11:17 +00:00
tags:
  - TAServers
  - GitHub Actions
draft: false
repo: https://github.com/TAServers/vcpkg-cache
marketplace: https://github.com/marketplace/actions/vcpkg-cache
version: v2
dependentsNumber: "?"
---


Version updated for **https://github.com/TAServers/vcpkg-cache** to version **v2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vcpkg-cache) to find the latest changes.

## Release notes

### Changed

- Changed cache key to prefix using the archive path (key is now just the filename). This is needed due to GitHub
  versioning caches with the same key using their file path, causing silently failing cache restores when changing
  `archive-path`
