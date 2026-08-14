---
title: Vibgrate Scan
date: 2026-08-14 22:15:10 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.814.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `@vibgrate/cli` GitHub Action provides a local codebase intelligence tool that answers three main questions: what the codebase is, how far behind it is (measured by DriftScore and RiskScore), and whether it can be fixed locally. It generates a deterministic code graph, drift score, and ranked upgrade priorities for any repository. The action runs on your machine without relying on network calls or data leaving your repo unless explicitly pushed.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.814.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The `@vibgrate/cli` GitHub Action provides a local codebase intelligence tool that answers three main questions: what the codebase is, how far behind it is (measured by DriftScore and RiskScore), and whether it can be fixed locally. It generates a deterministic code graph, drift score, and ranked upgrade priorities for any repository. The action runs on your machine without relying on network calls or data leaving your repo unless explicitly pushed.

## What's Changed

# Vibgrate CLI 2026.814.1

_Released 2026-08-14_

This release of the vg CLI includes several enhancements and fixes aimed at improving usability and performance. Key updates include a new session protocol for vg code, incremental extraction for vg hcs, and improved handling of scans and updates.

## What changed

### New

- vg code session protocol v2 introduces new features for host UIs, including session details reporting and explicit session ID continuation.
- vg hcs extract is now incremental by default, optimizing re-extraction of files.
- vg code approval friction is reduced for read-only commands in Agent mode, enhancing usability.
- vg code session power features allow mid-flight steering of turns and improved management of stored chats.
- vg code now provides reasoning model insights and cost tracking for reasoning efforts.

### Changed

- The semantic backend now loads components from a specified directory when available.

### Fixed

- vg update no longer triggers unnecessary downloads during installation.
- vg scans now handle plan limits more gracefully, warning users without aborting.
- vg code --continue correctly identifies session IDs without confusion from instruction text.

## Benchmarks

Two-arm benchmark of this release against 2026.813.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21789 count | 21789 count |
| Call edges extracted (corpus total) | 11108 count | 11108 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 710 ms | 720 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.814.1

