---
title: Vibgrate Scan
date: 2026-07-27 22:52:44 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.727.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action provides a local tool called `@vibgrate/cli` that analyzes codebases to generate a deterministic code graph and drift score, helping AI coding agents understand project structures and dependencies. It runs on the user's machine without requiring an API key or network calls, providing insights such as drift scores, drift breakdowns, and upgrade priorities. The tool can be used for both one-time checks and recurring analysis, with options to install and configure it for integration with AI assistants.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.727.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action provides a local tool called `@vibgrate/cli` that analyzes codebases to generate a deterministic code graph and drift score, helping AI coding agents understand project structures and dependencies. It runs on the user's machine without requiring an API key or network calls, providing insights such as drift scores, drift breakdowns, and upgrade priorities. The tool can be used for both one-time checks and recurring analysis, with options to install and configure it for integration with AI assistants.

## What's Changed

# Vibgrate CLI 2026.727.3

_Released 2026-07-27_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.727.2, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 20920 count | 20956 count |
| Call edges extracted (corpus total) | 9936 count | 9936 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 520.90 ms | 517.30 ms |

1 regression(s) — published, not omitted:
- Response size p95 (est. tokens): 243 → 245 (0.8%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.727.3

