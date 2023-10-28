---
title: Backport merged pull requests to selected branches
date: 2023-10-28 19:16:40 +00:00
tags:
  - korthout
  - GitHub Actions
draft: false
repo: korthout/backport-action
marketplace: https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches
version: v2.0.0
dependentsNumber: "241"
---


Version updated for **korthout/backport-action** to version **v2.0.0**.
- This action is used across all versions by **241** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches) to find the latest changes.

## Release notes

## What's Changed

**Breaking change**: Support for node16 has been dropped with this release. If you're using self-hosted runners, please ensure that node20 is available. We also recommend using `actions/checkout@v4` alongside `korthout/backport-action@v2`. 

* Update from node16 to node20 by @korthout in https://github.com/korthout/backport-action/pull/392

## Updated Dependencies

* build(deps): bump actions/checkout from 3 to 4 by @dependabot in https://github.com/korthout/backport-action/pull/382
* build(deps): bump @actions/core from 1.10.0 to 1.10.1 by @dependabot in https://github.com/korthout/backport-action/pull/385
* build(deps): bump @types/dedent from 0.7.0 to 0.7.1 by @dependabot in https://github.com/korthout/backport-action/pull/388
* build(deps): bump @actions/github from 5.1.1 to 6.0.0 by @dependabot in https://github.com/korthout/backport-action/pull/387

**Full Changelog**: https://github.com/korthout/backport-action/compare/v1.4.0...v2.0.0
