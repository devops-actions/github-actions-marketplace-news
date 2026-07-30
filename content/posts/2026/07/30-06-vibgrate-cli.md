---
title: Vibgrate Scan
date: 2026-07-30 06:42:05 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.729.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the local codebase intelligence for AI coding agents by generating a deterministic code graph, drift score, and upgrade priorities. It allows users to analyze their repositories locally without relying on external services or APIs. The action is particularly useful for developers who want to track dependencies, drift, and ensure version-correct library docs are available offline.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.729.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the local codebase intelligence for AI coding agents by generating a deterministic code graph, drift score, and upgrade priorities. It allows users to analyze their repositories locally without relying on external services or APIs. The action is particularly useful for developers who want to track dependencies, drift, and ensure version-correct library docs are available offline.

## What's Changed

# Vibgrate CLI 2026.729.3

_Released 2026-07-29_

This release of the Vibgrate CLI introduces several new features aimed at improving the user experience and performance. Key updates include enhanced session management for coding, improved change approval processes, and better daemon management.

## What changed

### New

- `vg code` takes a checkpoint when you approve a change, allowing for easy undoing later.
- `vg code --stream-json --session` keeps a coding session open for follow-up turns, maintaining context between messages.
- `vg daemon stop` and `vg daemon restart` commands have been added for managing the Fusion Runtime daemon.
- `vg lsp` now keeps a local DriftScore history and reports changes since the last scan.
- `vg code` reads project-specific instructions from files like `AGENTS.md` and `CLAUDE.md`.
- `vg code` can now route through Vibgrate Relay using `--provider vibgrate-relay`.

### Improved

- Changes awaiting approval now show before and after content for a side-by-side diff.

### Fixed

- Fixed timeout issues when publishing large code maps to the Fusion Runtime daemon.

### Performance

- All per-ecosystem scanners now run concurrently, improving the fact-collection phase duration.
- `vg daemon publish` now loads the code map from disk, significantly speeding up the process.

## Benchmarks

Two-arm benchmark of this release against 2026.729.2, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21118 count | 21118 count |
| Call edges extracted (corpus total) | 10167 count | 10167 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 642.20 ms | 637.90 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.729.3

