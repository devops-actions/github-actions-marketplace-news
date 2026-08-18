---
title: Vibgrate Scan
date: 2026-08-18 13:21:40 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.818.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of analyzing codebases to provide insights on drift, risk, and potential fixes. It generates a deterministic code graph with call trees and import paths, calculates a drift score that ranks the lag in codebase maturity compared to runtime or dependency frameworks, and provides ranked upgrade plans for fixing issues. The analysis is performed locally on the user's machine without requiring network calls or data leaving the repository.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.818.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the process of analyzing codebases to provide insights on drift, risk, and potential fixes. It generates a deterministic code graph with call trees and import paths, calculates a drift score that ranks the lag in codebase maturity compared to runtime or dependency frameworks, and provides ranked upgrade plans for fixing issues. The analysis is performed locally on the user's machine without requiring network calls or data leaving the repository.

## What's Changed

# Vibgrate CLI 2026.818.1

_Released 2026-08-18_

This release of the vg CLI includes several important fixes related to Architecture Layers and DriftScore reporting. These changes enhance the accuracy of the analysis and improve the clarity of the output.

## What changed

### Fixed

- Architecture Layers no longer reports CLI command→helper imports or tests importing the code they cover as boundary violations.
- Path-vs-graph disagreements now list under Layer conflicts instead of Boundary violations.
- Architecture Layers no longer flags a repository or database module importing a domain entity as a layered violation.
- Empty layers (0 files) are omitted from the CLI report to avoid misclassifying missing domain folders as high risk.
- `vg lsp` no longer paints a parent package’s DriftScore onto an excluded nested manifest.

## Benchmarks

Two-arm benchmark of this release against 2026.817.2, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 22561 count | 22561 count |
| Call edges extracted (corpus total) | 12063 count | 12063 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 711.40 ms | 722.50 ms |

2 regression(s) — published, not omitted:
- Token reduction vs baseline agent (equal success): 0.41 → 0.27 (-33.9%)
- Agent tokens with vg (comparable tasks, total): 471365 → 590462 (25.3%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.818.1

