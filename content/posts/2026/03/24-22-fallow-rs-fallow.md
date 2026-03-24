---
title: Fallow - Dead Code Analysis
date: 2026-03-24 22:05:28 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.7.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.7.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **fallow**, is a Rust-based codebase analyzer designed to optimize TypeScript and JavaScript projects by detecting unused code, circular dependencies, duplicate code, and high-complexity functions. It automates tasks like identifying dead files, unused exports, and unresolved imports, while offering significantly faster performance compared to similar tools. By streamlining code analysis and improving maintainability, it helps developers identify inefficiencies and reduce technical debt.

## Release notes

## Hotspot analysis

New `fallow health --hotspots` command identifies the riskiest files in your codebase by combining **git churn** with **complexity data**. The files that are both complex and frequently changing are where bugs hide — now fallow surfaces them automatically.

```bash
fallow health --hotspots                # Default: 6 months, min 3 commits
fallow health --hotspots --since 3m     # Last 3 months
fallow health --hotspots --top 10       # Top 10 riskiest files
fallow health --hotspots --format json  # Machine-readable for CI/dashboards
```

### How it works

- **Score**: `normalized_churn × normalized_complexity × 100` (0-100, higher = riskier)
- **Churn**: Recency-weighted commit count with exponential decay (half-life 90 days) — recent changes matter more
- **Trend detection**: Each file labeled as **accelerating** (getting worse), **stable**, or **cooling** (improving)
- **Fan-in**: Shown as "blast radius" column — how many files depend on this hotspot
- **`--since`**: Accepts durations (`6m`, `90d`, `1y`, `2w`) and ISO dates (`2025-06-01`)
- **`--min-commits`**: Filter out low-activity files (default: 3)

### Output

Clean two-line format with color-coded scores and trend symbols:

```
● Hotspots (12 files, since 6 months)

  78.3 ▲  src/components/Dashboard.tsx
          15 commits    892 churn  0.28 density    8 fan-in  ▲ accelerating

  64.1 ▲  src/services/api/client.ts
          11 commits    540 churn  0.19 density   12 fan-in  ▲ accelerating

  42.7 ─  src/utils/validation.ts
           8 commits    310 churn  0.14 density    6 fan-in  ─ stable
```

### Also in this release

- File health scores (`--file-scores`) now use the same two-line format for consistency
- MCP server `check_health` tool supports `hotspots`, `since`, and `min_commits` parameters
- Shallow clone detection with warning when git history may be incomplete

### Fixes

- MCP tests on Windows: skip `/bin/sh`-dependent tests on non-Unix platforms
- Typo checker false positive and Windows path separator in list tests

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.6.1...v1.7.0
