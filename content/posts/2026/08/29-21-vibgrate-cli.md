---
title: Vibgrate Scan
date: 2026-08-29 21:52:08 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.829.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the creation of VIBGrate CLI command documentation, generating markdown files based on a template and JSON data. It simplifies the process of documenting command options, descriptions, and examples by rendering them directly from a JSON file structure. This is particularly useful for developers who need to maintain comprehensive documentation without manual intervention.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.829.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of VIBGrate CLI command documentation, generating markdown files based on a template and JSON data. It simplifies the process of documenting command options, descriptions, and examples by rendering them directly from a JSON file structure. This is particularly useful for developers who need to maintain comprehensive documentation without manual intervention.

## What's Changed

# Vibgrate CLI 2026.829.1

_Released 2026-08-29_

This release of the Vibgrate CLI includes important fixes and a new feature for improved architecture classification reporting. Users can expect enhanced accuracy in handling existing imports and better insights into unclassified files.

## What changed

### Changed

- `vg scan` now reports architecture classification coverage, detailing the share of source files with layers and identifying directories containing unclassified files.

### Fixed

- `vg review` now correctly treats an existing import as occupancy, preventing failures due to typos in handlers that have already called a repository.
- VG Code on a local Spark model no longer stalls on `search_symbols`, and project AGENTS.md MCP names now run as `search_code` / graph tools.

## Benchmarks

Two-arm benchmark of this release against 2026.826.1, interleaved on one runner against the pinned corpus (187 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 22212 count | 22212 count |
| Call edges extracted (corpus total) | 12188 count | 12188 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 745.30 ms | 756.90 ms |

2 regression(s) — published, not omitted:
- Token reduction vs baseline agent (equal success): 0.22 → 0.20 (-9.2%)
- Agent tokens with vg (comparable tasks, total): 562247 → 620882 (10.4%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.829.1

