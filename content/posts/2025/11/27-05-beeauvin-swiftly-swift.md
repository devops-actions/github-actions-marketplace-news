---
title: Swiftly Swift
date: 2025-11-27 05:13:29 +00:00
tags:
  - beeauvin
  - GitHub Actions
draft: false
repo: https://github.com/beeauvin/swiftly-swift
marketplace: https://github.com/marketplace/actions/swiftly-swift
version: v2.0
dependentsNumber: "13"
---


Version updated for **https://github.com/beeauvin/swiftly-swift** to version **v2.0**.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/swiftly-swift) to find the latest changes.

## Release notes

## Prose
This release updates caching of Swiftly itself to be not-daily and uses the `self-update` mechanism to stay updated. Cache invalidation for swiftly can be done by either deleting the cache in actions or setting `swiftly-cache` to `false`. Additionally, this release also caches swift toolchain versions. All around a big performance boost for regular runs. <3

## What's Changed
* feat: cache toolchains by version by @beeauvin in https://github.com/beeauvin/swiftly-swift/pull/1
* ci: add dependabot by @beeauvin in https://github.com/beeauvin/swiftly-swift/pull/2
* chore(deps): bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/beeauvin/swiftly-swift/pull/3
* test: better testing around installs by @beeauvin in https://github.com/beeauvin/swiftly-swift/pull/4
* feat: cache swiftly and self update by @beeauvin in https://github.com/beeauvin/swiftly-swift/pull/5
* chore(release): v2.0 by @beeauvin in https://github.com/beeauvin/swiftly-swift/pull/6

## New Contributors
* @beeauvin made their first contribution in https://github.com/beeauvin/swiftly-swift/pull/1
* @dependabot[bot] made their first contribution in https://github.com/beeauvin/swiftly-swift/pull/3

**Full Changelog**: https://github.com/beeauvin/swiftly-swift/compare/v1...v2.0
