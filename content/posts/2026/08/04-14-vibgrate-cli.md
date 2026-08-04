---
title: Vibgrate Scan
date: 2026-08-04 14:47:24 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.804.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `@vibgrate/cli` is a tool designed to analyze codebases locally using AI coding agents. It helps answer questions about the codebase's structure and drift, providing insights such as drift scores, ranked upgrade priorities, and impact surfaces. The action runs on your machine without requiring API keys or network calls, making it useful for developers who want to perform local analysis without leaving their repositories.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.804.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

`@vibgrate/cli` is a tool designed to analyze codebases locally using AI coding agents. It helps answer questions about the codebase's structure and drift, providing insights such as drift scores, ranked upgrade priorities, and impact surfaces. The action runs on your machine without requiring API keys or network calls, making it useful for developers who want to perform local analysis without leaving their repositories.

## What's Changed

# Vibgrate CLI 2026.804.1

_Released 2026-08-04_

This release of the Vibgrate CLI includes a fix that improves log management during scans. The output from the Editor LSP is now handled more effectively.

## What changed

### Fixed

- Editor LSP no longer dumps the full scan JSON into the main log; the artifact is sent on vibgrate/scanArtifact for Output ▸ Vibgrate Scan.

## Benchmarks

Two-arm benchmark of this release against 2026.803.5, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21474 count | 21474 count |
| Call edges extracted (corpus total) | 10674 count | 10674 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 696.30 ms | 699 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.804.1

