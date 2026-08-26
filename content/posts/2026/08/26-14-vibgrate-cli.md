---
title: Vibgrate Scan
date: 2026-08-26 14:54:27 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.826.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates the process of generating a code graph, drift score, and upgrade priorities for a given repository. It provides tools to understand the current state of the codebase and identify potential issues that may impact its functionality over time. The action is designed to run locally on the user's machine without requiring any API keys or network calls.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.826.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action automates the process of generating a code graph, drift score, and upgrade priorities for a given repository. It provides tools to understand the current state of the codebase and identify potential issues that may impact its functionality over time. The action is designed to run locally on the user's machine without requiring any API keys or network calls.

## What's Changed

# Vibgrate CLI 2026.826.1

_Released 2026-08-26_

This release of the vg command-line scanner includes a fix for the handling of reasoning models in the `vg code` command. Users can expect clearer reporting on the status of runs and better adherence to configuration settings.

## What changed

### Fixed

- `vg code` now properly manages turns when a reasoning model requires additional time to formulate an answer, providing a bounded budget for follow-up turns.
- Every incomplete run now reports the reason for its termination, including details on the step limit and guidance on how to adjust it.
- `maxSteps` in `vibgrate.config.json` is now respected, correcting the previous issue where a hard-coded `--max-steps` default was overriding it.

## Benchmarks

Two-arm benchmark of this release against 2026.825.2, interleaved on one runner against the pinned corpus (187 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21945 count | 21945 count |
| Call edges extracted (corpus total) | 11809 count | 11809 count |
| Locate accuracy (top-1) | 0.95 ratio | 0.95 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 722.40 ms | 726.20 ms |

2 regression(s) — published, not omitted:
- Token reduction vs baseline agent (equal success): 0.22 → 0.20 (-9.2%)
- Agent tokens with vg (comparable tasks, total): 562247 → 620882 (10.4%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.826.1

