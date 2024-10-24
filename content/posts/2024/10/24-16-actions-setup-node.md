---
title: Setup Node.js environment
date: 2024-10-24 16:47:18 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-node
marketplace: https://github.com/marketplace/actions/setup-node-js-environment
version: v4.1.0
dependentsNumber: "2,299,769"
---


Version updated for **actions/setup-node** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2,299,769** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-node-js-environment) to find the latest changes.

## Release notes

## What's Changed

* Resolve High Security Alerts by upgrading Dependencies by @aparnajyothi-y in https://github.com/actions/setup-node/pull/1132
* Upgrade IA Publish by @Jcambass in https://github.com/actions/setup-node/pull/1134
* Revise `isGhes` logic by @jww3 in https://github.com/actions/setup-node/pull/1148
* Add architecture to cache key by @pengx17 in https://github.com/actions/setup-node/pull/843
This addresses issues with caching by adding the architecture (arch) to the cache key, ensuring that cache keys are accurate to prevent conflicts.
Note: This change may break previous cache keys as they will no longer be compatible with the new format.

## New Contributors
* @jww3 made their first contribution in https://github.com/actions/setup-node/pull/1148
* @pengx17 made their first contribution in https://github.com/actions/setup-node/pull/843

**Full Changelog**: https://github.com/actions/setup-node/compare/v4...v4.1.0
