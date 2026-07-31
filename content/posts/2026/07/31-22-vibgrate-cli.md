---
title: Vibgrate Scan
date: 2026-07-31 22:14:54 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.731.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action reads and analyzes codebases to generate a deterministic code graph and drift score, helping AI coding agents understand the state of the codebase. It automates tasks such as building dependency graphs, identifying drift scores, and prioritizing fixes, all on the user's machine without requiring any external APIs or network calls.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.731.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action reads and analyzes codebases to generate a deterministic code graph and drift score, helping AI coding agents understand the state of the codebase. It automates tasks such as building dependency graphs, identifying drift scores, and prioritizing fixes, all on the user's machine without requiring any external APIs or network calls.

## What's Changed

# Vibgrate CLI 2026.731.3

_Released 2026-07-31_

This release of the Vibgrate CLI includes a fix for the monorepo scope picker, ensuring that all scanned packages with a DriftScore are listed, regardless of their lockfile status. This change improves the visibility of workspace members in various reports.

## What changed

### Fixed

- The monorepo scope picker now lists every scanned package with a DriftScore, including pnpm/yarn workspace members.

## Benchmarks

Two-arm benchmark of this release against 2026.731.2, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21189 count | 21189 count |
| Call edges extracted (corpus total) | 10273 count | 10273 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 693.80 ms | 685.70 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.731.3

