---
title: Vibgrate Scan
date: 2026-07-17 14:45:54 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.715.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, `@vibgrate/cli`, automates local codebase intelligence and analysis tasks for AI coding agents. It provides a deterministic code graph with call trees, import paths, impact surfaces, dependency facts, and a drift score to assess how far behind the codebase is from current standards and best practices. The action runs on your machine without relying on external APIs or network calls, ensuring no data leaves your repository unless explicitly pushed.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.715.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action, `@vibgrate/cli`, automates local codebase intelligence and analysis tasks for AI coding agents. It provides a deterministic code graph with call trees, import paths, impact surfaces, dependency facts, and a drift score to assess how far behind the codebase is from current standards and best practices. The action runs on your machine without relying on external APIs or network calls, ensuring no data leaves your repository unless explicitly pushed.

## What's Changed

# Vibgrate CLI 2026.715.1

_Released 2026-07-15_

This release of the Vibgrate CLI includes enhancements to database schema detection and improvements in code analysis accuracy. Users can expect better handling of various database formats and improved recognition of dependencies in code.

## What changed

### New

- Extended database schema detection to also read raw SQL migrations, SQL Server database projects, Drizzle, and TypeORM, tagging each detected table with its source.

### Improved

- Improved code-search accuracy across all supported languages, especially for short, generated, or non-Latin symbol names.

### Fixed

- Code graph analysis now recognizes Spring-style constructor/field dependency injection in Java and correctly attributes XCTest cases to the Swift classes they construct, even across different source directories.

## Benchmarks

Two-arm benchmark of this release against 2026.711.2, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 18986 count | 18986 count |
| Call edges extracted (corpus total) | 7660 count | 7660 count |
| Locate accuracy (top-1) | 0.97 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 596.10 ms | 598.40 ms |

2 regression(s) — published, not omitted:
- Response size p95 (est. tokens): 246 → 247 (0.4%)
- Locate top-1 — java: 0.97 → 0.96 (-1.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.715.1

