---
title: Cache with GCS Support
date: 2026-05-31 22:16:43 +00:00
tags:
  - danySam
  - GitHub Actions
draft: false
repo: https://github.com/danySam/gcs-cache
marketplace: https://github.com/marketplace/actions/cache-with-gcs-support
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/danySam/gcs-cache** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-with-gcs-support) to find the latest changes.

## Action Summary

This GitHub Action enhances caching capabilities by enabling Google Cloud Storage (GCS) as a cache backend, with automatic fallback to GitHub's native cache. It solves limitations like GitHub's 10GB repository cache size, supports cross-repository caching, and allows custom cache retention policies through GCS lifecycle management. By leveraging existing GCS infrastructure, it automates dependency caching, improving workflow efficiency and reliability.

## What's Changed

## Bug Fixes

- **Fix restore-keys prefix matching** — `restore-keys` now correctly performs prefix matching using GCS file listing (`getFiles({ prefix })`), matching `actions/cache` behavior. Previously it only did exact-match lookups. When multiple files match a prefix, the most recently created one is used. (Thanks @breezewish! #3)

- **Fix cache-hit always being false** — `restoreCache` now returns the original cache key (not the GCS object path) so `isExactKeyMatch` works correctly. This also fixes the save step unnecessarily re-uploading the cache on every run. (Thanks @hwellmann! #4)

## Other Changes

- Added GCS-specific unit tests for restore (exact match, prefix match, latest-file selection, cache miss, lookup-only)
- Added `@google-cloud/storage` mock infrastructure for testing
- Fixed test suite compatibility with Node 22+
