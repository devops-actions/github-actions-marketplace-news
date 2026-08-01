---
title: Vibgrate Scan
date: 2026-08-01 13:51:02 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.801.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The Vibgrate CLI action provides local codebase intelligence for AI coding agents, including a deterministic code graph, drift score (drift behind runtime/framework lag and dependency age), and prioritized upgrade priorities. It runs on your machine without API keys or network calls, providing an interactive command-line simulator to see how it works.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.801.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The Vibgrate CLI action provides local codebase intelligence for AI coding agents, including a deterministic code graph, drift score (drift behind runtime/framework lag and dependency age), and prioritized upgrade priorities. It runs on your machine without API keys or network calls, providing an interactive command-line simulator to see how it works.

## What's Changed

# Vibgrate CLI 2026.801.1

_Released 2026-08-01_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.731.3, interleaved on one runner against the pinned corpus (182 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21236 count | 21236 count |
| Call edges extracted (corpus total) | 10322 count | 10322 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 545.60 ms | 541.40 ms |

21 regression(s) — published, not omitted:
- Locate accuracy (top-1): 0.98 → 0.94 (-4.4%)
- Locate accuracy (top-3): 0.93 → 0.92 (-1.4%)
- Locate accuracy (top-5): 0.95 → 0.93 (-2.0%)
- Locate top-1 — bash: 0.97 → 0.94 (-2.4%)
- Locate top-1 — c: 1 → 0.96 (-4.4%)
- Locate top-1 — cpp: 1 → 0.94 (-5.6%)
- Locate top-1 — cs: 0.98 → 0.92 (-5.7%)
- Locate top-1 — dart: 0.99 → 0.96 (-3.3%)
- Locate top-1 — elixir: 0.98 → 0.94 (-3.5%)
- Locate top-1 — java: 0.93 → 0.86 (-8.3%)
- Locate top-1 — js: 0.99 → 0.92 (-6.8%)
- Locate top-1 — kotlin: 1 → 0.92 (-7.8%)
- Locate top-1 — lua: 1 → 0.98 (-2.2%)
- Locate top-1 — php: 0.98 → 0.93 (-4.6%)
- Locate top-1 — py: 0.94 → 0.88 (-7.0%)
- Locate top-1 — rb: 0.96 → 0.94 (-1.3%)
- Locate top-1 — rust: 0.99 → 0.96 (-3.3%)
- Locate top-1 — scala: 1 → 0.97 (-3.3%)
- Locate top-1 — swift: 1 → 0.98 (-2.2%)
- Locate top-1 — ts: 0.92 → 0.83 (-9.7%)
- Locate top-1 — zig: 1 → 0.97 (-3.3%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.801.1

