---
title: Cache
date: 2026-01-17 06:25:58 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/cache
marketplace: https://github.com/marketplace/actions/cache
version: v5.0.2
dependentsNumber: "0"
---


Version updated for **https://github.com/actions/cache** to version **v5.0.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache) to find the latest changes.

## Action Summary

The GitHub Actions Cache action enables caching of dependencies and build outputs to significantly improve workflow execution time in CI/CD pipelines. By reusing previously saved data, it reduces redundant downloads and computation, enhancing efficiency and performance. It also provides additional actions for granular cache management, including restoring and saving caches, and supports features like cross-OS caching and customizable download timeouts.

## Release notes

# v5.0.2

## What's Changed

When creating cache entries, 429s returned from the cache service will not be retried.
