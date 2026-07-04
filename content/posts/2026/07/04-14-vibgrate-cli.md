---
title: Vibgrate Scan
date: 2026-07-04 14:23:39 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.704.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.704.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## What's Changed

# Vibgrate CLI 2026.704.1

_Released 2026-07-04_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.703.7, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 18437 count | 18433 count |
| Call edges extracted (corpus total) | 6934 count | 6928 count |
| Locate accuracy (top-1) | 0.97 ratio | 0.97 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 606.80 ms | 606.80 ms |

4 regression(s) — published, not omitted:
- Definitions extracted (corpus total): 18437 → 18433 (-0.0%)
- Call edges extracted (corpus total): 6934 → 6928 (-0.1%)
- Definitions — ts: 4217 → 4213 (-0.1%)
- Call edges — ts: 3215 → 3209 (-0.2%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.704.1

