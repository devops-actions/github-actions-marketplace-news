---
title: Deploy to Arc XP by code.store
date: 2025-12-17 22:26:32 +00:00
tags:
  - code-store-platform
  - GitHub Actions
draft: false
repo: https://github.com/code-store-platform/deploy-action
marketplace: https://github.com/marketplace/actions/deploy-to-arc-xp-by-code-store
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/code-store-platform/deploy-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-arc-xp-by-code-store) to find the latest changes.

## Release notes

__Improved reliability for Arc XP deployments__

This update adds configurable retry logic for terminating old builds:

__New Features:__

- `terminate-retry-count`: Retry attempts for build termination (default: 3)
- `terminate-retry-delay`: Wait time between termination retries (default: 10 seconds)

__Benefits:__

- Prevents workflow failures when builds can't be terminated
- Graceful error handling with detailed logging
- Backward compatible - existing workflows unaffected

Upgrade to improve deployment reliability in your CI/CD pipelines.

