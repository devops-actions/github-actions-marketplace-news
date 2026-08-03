---
title: Vibgrate Scan
date: 2026-08-03 14:55:08 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.803.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates local codebase intelligence tasks, including generating a deterministic code graph and drift score for AI coding agents. It provides features such as runtime/framework lag, dependency age, and EOL proximity to help identify potential issues in the codebase. The action runs on your machine without relying on API keys or network calls, ensuring no data leaves your repository unless explicitly pushed.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.803.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action automates local codebase intelligence tasks, including generating a deterministic code graph and drift score for AI coding agents. It provides features such as runtime/framework lag, dependency age, and EOL proximity to help identify potential issues in the codebase. The action runs on your machine without relying on API keys or network calls, ensuring no data leaves your repository unless explicitly pushed.

## What's Changed

# Vibgrate CLI 2026.803.3

_Released 2026-08-03_

This release of the Vibgrate CLI includes improvements to task capsule seed ranking and fixes for the `vg lsp` command to enhance usability and performance.

## What changed

### Improved

- Task Capsule seed ranking now understands conversational follow-ups in `vg code`, allowing for better context retention and interpretation.

### Fixed

- `vg lsp` no longer allows a cold semantic index to keep an editor Ask open indefinitely, with improved handling for time budgets and progress reporting.

## Benchmarks

Two-arm benchmark of this release against 2026.803.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21381 count | 21381 count |
| Call edges extracted (corpus total) | 10551 count | 10551 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 688.60 ms | 691.30 ms |

3 regression(s) — published, not omitted:
- Ask quality — relevance module active (full corpus): 1 → 1.00 (-0.2%)
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.803.3

