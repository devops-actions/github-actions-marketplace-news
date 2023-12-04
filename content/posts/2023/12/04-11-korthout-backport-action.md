---
title: Backport merged pull requests to selected branches
date: 2023-12-04 11:17:36 +00:00
tags:
  - korthout
  - GitHub Actions
draft: false
repo: korthout/backport-action
marketplace: https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches
version: v2.2.0
dependentsNumber: "275"
---


Version updated for **korthout/backport-action** to version **v2.2.0**.
- This action is used across all versions by **275** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches) to find the latest changes.

## Release notes

## What's Changed
This release introduces a new [`experimental`](https://github.com/korthout/backport-action#experimental) input that you can use to configure experimental features. We encourage everyone to try them out and share feedback.

As a first experimental feature, this release adds [`detect_merge_method`](https://github.com/korthout/backport-action#detect_merge_method). When enabled, it cherry-picks the resulting commits based on the detected merge method. Give it a try if you're using the `Squash and merge` or `Rebase and merge` merge method for your pull requests, and please [report any issues](https://github.com/korthout/backport-action/issues/new?labels=bug&template=bug_report.md) you encounter.

To enable merge method detection add the following to your backport workflow:
```yaml
using: korthout/backport-action@v2
with:
  experimental: >
    {
      "detect_merge_method": true
    }
```

A special shoutout and heartfelt thanks to @jschmid1 for their outstanding contribution to the `detect_merge_method` feature!

* Detect squash and rebase merge methods by @jschmid1 in https://github.com/korthout/backport-action/pull/399

## Documentation
* Avoid loop in backport by comment usage example by @jschmid1 in https://github.com/korthout/backport-action/pull/400
* Align event type in usage example by @chillleader in https://github.com/korthout/backport-action/pull/401

## Updated Dependencies
* build(deps): bump @types/dedent from 0.7.1 to 0.7.2 by @dependabot in https://github.com/korthout/backport-action/pull/396

## New Contributors
* @chillleader made their first contribution in https://github.com/korthout/backport-action/pull/401

**Full Changelog**: https://github.com/korthout/backport-action/compare/v2.1.0...v2.2.0
