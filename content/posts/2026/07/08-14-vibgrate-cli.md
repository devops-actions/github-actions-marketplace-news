---
title: Vibgrate Scan
date: 2026-07-08 14:52:19 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.708.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.708.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## What's Changed

# Vibgrate CLI 2026.708.1

_Released 2026-07-08_

This release of the CLI ships 1 new change, 1 improved change, 1 changed change and 1 fixed change.

## What changed

### New

- New `vg fix` command turns a drift scan into ranked, risk-tiered upgrade plans and applies the one you choose.

### Improved

- `vg fix` now re-scans automatically when your last drift scan is out of date.

### Changed

- Scan reports now label the drift metric as "DriftScore" (one word), matching the name used across the website and docs.

### Fixed

- Scan reports now match your plan.

## Benchmarks

Two-arm benchmark of this release against 2026.704.3, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 18590 count | 18590 count |
| Call edges extracted (corpus total) | 7120 count | 7120 count |
| Locate accuracy (top-1) | 0.97 ratio | 0.97 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 606.50 ms | 608.20 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.708.1

