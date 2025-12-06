---
title: Setup Go environment
date: 2024-10-24 16:47:23 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-go
marketplace: https://github.com/marketplace/actions/setup-go-environment
version: v5.1.0
dependentsNumber: "394,774"
---


Version updated for **actions/setup-go** to version **v5.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **394,774** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-go-environment) to find the latest changes.

## Release notes

## What's Changed

* Add workflow file for publishing releases to immutable action package by @Jcambass in https://github.com/actions/setup-go/pull/500
* Upgrade IA Publish by @Jcambass in https://github.com/actions/setup-go/pull/502
* Add architecture to cache key by @Zxilly in https://github.com/actions/setup-go/pull/493
This addresses issues with caching by adding the architecture (arch) to the cache key, ensuring that cache keys are accurate to prevent conflicts.
Note: This change may break previous cache keys as they will no longer be compatible with the new format.
* Enhance workflows and Upgrade micromatch Dependency by @priyagupta108 in https://github.com/actions/setup-go/pull/510

**Bug Fixes**
* Revise `isGhes` logic by @jww3 in https://github.com/actions/setup-go/pull/511

## New Contributors
* @Zxilly made their first contribution in https://github.com/actions/setup-go/pull/493
* @Jcambass made their first contribution in https://github.com/actions/setup-go/pull/500
* @jww3 made their first contribution in https://github.com/actions/setup-go/pull/511
* @priyagupta108 made their first contribution in https://github.com/actions/setup-go/pull/510

**Full Changelog**: https://github.com/actions/setup-go/compare/v5...v5.1.0
