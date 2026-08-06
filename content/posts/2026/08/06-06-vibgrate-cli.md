---
title: Vibgrate Scan
date: 2026-08-06 06:13:37 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.805.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action provides a tool to analyze the technical and versioning aspects of a local codebase. It generates a deterministic code graph and drift score, which indicates how far behind the codebase is with respect to runtime/framework updates and dependency age, helping developers prioritize upgrades and maintainability. The tool runs locally on the user's machine without relying on APIs or network calls, ensuring all data stays within the repository.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.805.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action provides a tool to analyze the technical and versioning aspects of a local codebase. It generates a deterministic code graph and drift score, which indicates how far behind the codebase is with respect to runtime/framework updates and dependency age, helping developers prioritize upgrades and maintainability. The tool runs locally on the user's machine without relying on APIs or network calls, ensuring all data stays within the repository.

## What's Changed

# Vibgrate CLI 2026.805.2

_Released 2026-08-05_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.805.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21503 count | 21503 count |
| Call edges extracted (corpus total) | 10698 count | 10698 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 641.20 ms | 642.10 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.805.2

