---
title: Vibgrate Scan
date: 2026-08-15 06:36:50 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.814.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates the local analysis of codebases to provide insights into drift, drift risk index, and actionable upgrade priorities using a code graph. It helps in maintaining code quality, preventing technical debt, and ensuring compatibility with dependencies. The tool runs on the developer's machine without relying on external APIs or data leaving the repository unless necessary.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.814.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action automates the local analysis of codebases to provide insights into drift, drift risk index, and actionable upgrade priorities using a code graph. It helps in maintaining code quality, preventing technical debt, and ensuring compatibility with dependencies. The tool runs on the developer's machine without relying on external APIs or data leaving the repository unless necessary.

## What's Changed

# Vibgrate CLI 2026.814.2

_Released 2026-08-14_

This release of the Vibgrate CLI introduces significant documentation improvements for the `vg code` and `vg evidence` commands, clarifying their functionalities and usage. Users can expect enhanced guidance on approval modes, lifecycle processes, and exit codes.

## What changed

### Improved

- `vg code` is now clearly documented as a coding agent with a default path in the multi-step tool loop, including a comprehensive section in the README.
- The README for `vg evidence` now explains the frozen release manifest, the lifecycle stages, and the meanings of the various states, along with exit codes for CI gating.
- `vg code --help` has been updated to accurately reflect that `--apply`/`--yes` apply only to the one-shot `--single` path.

## Benchmarks

Two-arm benchmark of this release against 2026.814.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21790 count | 21790 count |
| Call edges extracted (corpus total) | 11110 count | 11110 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 620.20 ms | 616.50 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.814.2

