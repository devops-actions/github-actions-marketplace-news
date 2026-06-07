---
title: oss-signal
date: 2026-06-07 14:51:37 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.9.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.9.0 adds configuration for documented maintainer exceptions.

## Changes

- Local audits now auto-detect `.oss-signal.json`, `.oss-signalrc.json`, and `oss-signal.config.json`.
- CLI audits can pass `--config <file>`.
- The GitHub Action accepts a `config` input.
- Config can mark rules as not applicable with a maintainer reason.
- Not-applicable rules are shown as `N/A`, excluded from recommendations, and removed from the score denominator.
- Added [configuration.md](../configuration.md) and [examples/oss-signal-config.json](../examples/oss-signal-config.json).

## Verification

- `npm run check`
- `npm publish --dry-run`

