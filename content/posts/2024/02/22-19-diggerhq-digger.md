---
title: run-digger
date: 2024-02-22 19:11:07 +00:00
tags:
  - diggerhq
  - GitHub Actions
draft: false
repo: diggerhq/digger
marketplace: https://github.com/marketplace/actions/run-digger
version: v0.4.2
dependentsNumber: "14"
---


Version updated for **diggerhq/digger** to version **v0.4.2**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-digger) to find the latest changes.

## Release notes

## What's Changed
* Revert telemetry changes by @motatoes in https://github.com/diggerhq/digger/pull/1184

IMPORTANT: the flag to disable telemetry is now called `TELEMETRY` (previously was called `COLLECT_USAGE_DATA`)
If you are upgrading from an older version and wish to disable telemetry, you need to change the name of the flag.

We have also added a docs page how to disable telemetry: https://docs.digger.dev/howto/disable-telemetry

**Full Changelog**: https://github.com/diggerhq/digger/compare/v0.4.1...v0.4.2
