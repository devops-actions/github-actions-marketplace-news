---
title: Vibgrate Scan
date: 2026-07-29 14:52:13 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.729.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:** `@vibgrate/cli` is a local tool that provides codebase intelligence, drift analysis, and version-correct documentation to AI coding agents. It automates tasks such as scanning for drift scores, generating build graphs, answering questions about the codebase, and serving an offline context protocol server for AI assistants. The tool operates on your machine without requiring network connections or API keys, providing detailed insights into a project's state and dependencies.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.729.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

**Summary:** `@vibgrate/cli` is a local tool that provides codebase intelligence, drift analysis, and version-correct documentation to AI coding agents. It automates tasks such as scanning for drift scores, generating build graphs, answering questions about the codebase, and serving an offline context protocol server for AI assistants. The tool operates on your machine without requiring network connections or API keys, providing detailed insights into a project's state and dependencies.

## What's Changed

# Vibgrate CLI 2026.729.2

_Released 2026-07-29_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.729.1, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21053 count | 21053 count |
| Call edges extracted (corpus total) | 10095 count | 10095 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 699.50 ms | 702.80 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.729.2

