---
title: Monotrack CLI
date: 2025-12-26 05:30:00 +00:00
tags:
  - ArnoldVanN
  - GitHub Actions
draft: false
repo: https://github.com/ArnoldVanN/monotrack
marketplace: https://github.com/marketplace/actions/monotrack-cli
version: v0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ArnoldVanN/monotrack** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/monotrack-cli) to find the latest changes.

## Action Summary

Monotrack is a GitHub Action and CLI tool designed to simplify versioning and change tracking in monorepos. It automates tasks such as identifying which packages have changed between commits and generating pre-release or development tags, enabling more efficient testing and deployment workflows. Its lightweight design offers a simpler alternative to more complex versioning tools, making it ideal for targeted actions in monorepos without unnecessary overhead.

## Release notes

## [0.2.0](https://github.com/ArnoldVanN/monotrack/compare/v0.1.2...v0.2.0) (2025-12-19)


### ⚠ BREAKING CHANGES

* moved root command to "compare"

### Features

* added tag list command ([0039fff](https://github.com/ArnoldVanN/monotrack/commit/0039fffb58129d18a3330cf66c802b7e88ddaddf))


### Bug Fixes

* projects not being built correctly when manually specified ([0039fff](https://github.com/ArnoldVanN/monotrack/commit/0039fffb58129d18a3330cf66c802b7e88ddaddf))
* Remove branch for push event in publish workflow ([b5ab03f](https://github.com/ArnoldVanN/monotrack/commit/b5ab03f280a794de8377fa566596de227f368d1c))
* reworked action ([b3eb915](https://github.com/ArnoldVanN/monotrack/commit/b3eb915df62c4c516ed60d2b1e6fb0da474d77aa))
* test, added pre-release to to root cmd ([c0d78cd](https://github.com/ArnoldVanN/monotrack/commit/c0d78cd06ea317928052e25187f9e692afb00fb0))
* trigger release ([55b221f](https://github.com/ArnoldVanN/monotrack/commit/55b221fc77a8ca577a9857cc14dbf76f83d52b3e))


### Code Refactoring

* moved root command to "compare" ([0239e4e](https://github.com/ArnoldVanN/monotrack/commit/0239e4e32235f794c8a6a47686c785625d01a8b9))
