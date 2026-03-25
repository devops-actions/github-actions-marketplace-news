---
title: Fallow - Dead Code Analysis
date: 2026-03-25 13:43:49 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.8.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.8.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, "fallow," is a high-performance codebase analyzer for TypeScript and JavaScript projects, built in Rust. It automates the detection of unused code (e.g., files, exports, dependencies), circular dependencies, duplicate code, and high-complexity functions, enabling developers to optimize and maintain cleaner, more efficient codebases. With its speed and comprehensive analysis, it addresses common code quality and maintainability challenges, significantly outperforming comparable tools.

## Release notes

### LSP Fixes

- **Pull-model diagnostics** — Resolves `textDocument/diagnostic` errors in Cursor and VSCodium
- **Precise import ranges** — Unresolved import squiggly now covers only the module specifier (`'./missing'`), not the entire import line
- **Correct diagnostic positions** — Unused dependencies appear on their package.json line, circular deps on the import that starts the cycle
- **Full first-line highlight** for file-level diagnostics (unused files, unlisted deps)
- **Multi-root workspace** — LSP discovers monorepo workspaces and analyzes each package independently
- **Stale diagnostic cleanup** — Resolved issues are cleared from the pull-model cache

### Internal

- Major refactoring: split large modules into focused submodules across graph, extract, core, and LSP crates
- Improved test coverage with 50+ new unit tests
- Extract cache version bumped to 16 (`ImportInfo.source_span`)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.8.0...v1.8.1
