---
title: Dokkimi Run Tests
date: 2026-06-06 14:36:21 +00:00
tags:
  - dokkimi
  - GitHub Actions
draft: false
repo: https://github.com/dokkimi/github-action
marketplace: https://github.com/marketplace/actions/dokkimi-run-tests
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dokkimi/github-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dokkimi-run-tests) to find the latest changes.

## What's Changed

- Removed k3s dependency — tests now run directly on Docker
- Added automatic dump artifact upload on test failure (configurable via `dump-retention-days`)
- Dropped unused sidecar images (busybox, fluent-bit)
