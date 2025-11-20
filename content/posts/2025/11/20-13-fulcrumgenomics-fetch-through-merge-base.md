---
title: Fetch through merge-base
date: 2025-11-20 13:08:35 +00:00
tags:
  - fulcrumgenomics
  - GitHub Actions
draft: false
repo: https://github.com/fulcrumgenomics/fetch-through-merge-base
marketplace: https://github.com/marketplace/actions/fetch-through-merge-base
version: v1.4.2
dependentsNumber: "32"
---


Version updated for **https://github.com/fulcrumgenomics/fetch-through-merge-base** to version **v1.4.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **32** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fetch-through-merge-base) to find the latest changes.

## Release notes

## What's Changed
* build(deps-dev): bump the minor-npm-dependencies group across 1 directory with 3 updates by @dependabot in https://github.com/fulcrumgenomics/fetch-through-merge-base/pull/23
* feat: logging updates and badge additions by @nh13 in https://github.com/fulcrumgenomics/fetch-through-merge-base/pull/30
* fix: fail-after number of iterations by @nh13 in https://github.com/fulcrumgenomics/fetch-through-merge-base/pull/31

Commentary: a bug fixed in #31 caused one more fetch occurred after attempting `fail-after`.  Furthermore, since `boolean` types are not supported for composite actions, both falling back to fetching the whole remote (`fallback-fetch-all: true`) could never be reached and the unit test meant to cover it also incorrectly succeeded.

**Full Changelog**: https://github.com/fulcrumgenomics/fetch-through-merge-base/compare/v1.4.1...v1.4.2
