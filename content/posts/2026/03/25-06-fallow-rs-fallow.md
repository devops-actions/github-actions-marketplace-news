---
title: Fallow - Dead Code Analysis
date: 2026-03-25 06:01:06 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.8.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.8.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, *fallow*, is a high-performance codebase analyzer for TypeScript and JavaScript, designed to identify unused code, circular dependencies, code duplication, and complexity hotspots quickly and efficiently. Built with Rust, it automates the detection of issues like unused files, exports, dependencies, and types, while also highlighting risky areas such as high-complexity functions, enabling developers to optimize and maintain cleaner, more efficient codebases. Its standout capabilities include sub-second analysis, significantly faster performance compared to similar tools, and the absence of a Node.js runtime dependency.

## Release notes

## Highlights

**Completely redesigned terminal output** across all three commands (`check`, `health`, `dupes`) for readability at scale. Every section now includes a one-line explanation with a link to documentation.

### Features

- **Per-section explain footers** — every output section now includes a dimmed description + docs link (e.g., `Exported symbols not imported by any reachable file — https://docs.fallow.tools/explanations/dead-code#unused-exports`)
- **Mirrored directory detection** in `dupes` — collapses identical directory structures (e.g., `src/ ↔ deno/lib/`) into a single "Mirrored" group instead of listing every clone individually
- **Circular dependency hub grouping** — cycles sharing the same file are grouped together with path elision for compact display
- **`--complexity` flag** for `health` — select only complexity findings. Health now defaults to showing all sections (complexity + file-scores + hotspots)
- **`--explain` flag** — adds `_meta` with metric definitions to JSON output. Human output always includes explanations.
- **`--top` flag** for `dupes` — limit clone groups shown
- **Global truncation** — all sections cap at 10 items with `... and N more` overflow hints

### Output improvements

- Duplicate exports stacked vertically with path elision for monorepo paths
- Summary footer shortened: `27 files · 89 exports · 216 types` instead of verbose labels
- Health footer compacted to 1 line, dupes footer gets `✗` prefix for consistency
- Two-line format for health complexity findings (function + metrics)
- Tree connectors removed from dupes, single-group families suppressed
- Thousands separators for large numbers (`5,433` lines)

### Internal

- Config warnings use `tracing::warn!` instead of `eprintln!`
- CI workflow permissions scoped to per-job level
- 21 new tests for utilities, truncation, mirroring, and footers

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.7.0...v1.8.0
