---
title: setup-jemalloc
date: 2026-07-17 22:46:58 +00:00
tags:
  - kaeawc
  - GitHub Actions
draft: false
repo: https://github.com/kaeawc/setup-jemalloc
marketplace: https://github.com/marketplace/actions/setup-jemalloc
version: v0.0.5
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action downloads and installs jemalloc, which replaces the default malloc to free up memory left unusable by fragmentation. It supports Linux platforms but requires building with arm64e architecture for macOS and is not supported on Windows. The action ensures atomic installation and idempotence, allowing it to be safely invoked multiple times within a job without interference.
---


Version updated for **https://github.com/kaeawc/setup-jemalloc** to version **v0.0.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-jemalloc) to find the latest changes.

## Action Summary

This GitHub Action downloads and installs jemalloc, which replaces the default malloc to free up memory left unusable by fragmentation. It supports Linux platforms but requires building with arm64e architecture for macOS and is not supported on Windows. The action ensures atomic installation and idempotence, allowing it to be safely invoked multiple times within a job without interference.

## What's Changed

## What's changed since v0.0.4

- **Removed unreachable macOS/Windows dead code** from the Linux-gated action steps (#8, #10): dropped the `elif macOS`/`elif Windows` branches that could never execute, the no-op "Pacman Tool Setup" step, and the orphaned `before_install.sh`.
- **Small efficiency cleanups**: no longer re-copies the multi-MB library to `/tmp` on every cache-hit invocation (staging now happens only on the cache-miss install path), quieter `tar xf` extraction, and the downloaded tarball is cleaned up after build.

No consumer-facing behavior change from v0.0.4 — the same steps run in the same order on Linux, and the cache key is unchanged. This tag simply ensures the published release reflects `main` including the post-v0.0.4 cleanup.

**Full Changelog**: https://github.com/kaeawc/setup-jemalloc/compare/v0.0.4...v0.0.5

