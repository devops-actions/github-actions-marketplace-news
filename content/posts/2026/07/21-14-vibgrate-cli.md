---
title: Vibgrate Scan
date: 2026-07-21 14:50:14 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.721.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `@vibgrate/cli` GitHub Action provides a local tool to analyze codebases, assess drift scores, and generate drift breakdowns. It automates tasks such as generating code graphs, calculating drift scores, and identifying upgrade priorities. The main purpose is to help AI coding agents understand the current state of a project's dependencies, runtime lag, and EOL proximity on the developer's machine without relying on external APIs or data transfer.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.721.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The `@vibgrate/cli` GitHub Action provides a local tool to analyze codebases, assess drift scores, and generate drift breakdowns. It automates tasks such as generating code graphs, calculating drift scores, and identifying upgrade priorities. The main purpose is to help AI coding agents understand the current state of a project's dependencies, runtime lag, and EOL proximity on the developer's machine without relying on external APIs or data transfer.

## What's Changed

# Vibgrate CLI 2026.721.3

_Released 2026-07-21_

This release of the vg CLI includes significant improvements to dependency-injection call resolution across multiple languages, enhancing the accuracy of dependency reporting. A new benchmark for cross-language dependency-injection resolution has also been introduced.

## What changed

### Improved

- C# dependency-injection call graph now accurately resolves interface-injected services, capturing their concrete implementations and linking tests.
- Dependency-injection call resolution has been enhanced across seven languages, ensuring accurate reporting of dependents for DI-wired code.
- PHP now supports dependency-injection resolution, linking tests to constructed classes and capturing injected interfaces.

### Changed

- A new cross-language dependency-injection resolution benchmark (bench:di) has been published to measure interface injection conformance.

## Benchmarks

Two-arm benchmark of this release against 2026.721.2, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 19238 count | 19238 count |
| Call edges extracted (corpus total) | 7991 count | 8084 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 622 ms | 612.90 ms |

3 regression(s) — published, not omitted:
- Call edges — java: 236 → 204 (-13.6%)
- Response size p95 (est. tokens): 247 → 248 (0.4%)
- Locate top-1 — cs: 1 → 0.98 (-2.2%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.721.3

