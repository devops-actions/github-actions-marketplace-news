---
title: Fallow - Dead Code Analysis
date: 2026-03-22 21:44:06 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.3.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **fallow**, is a codebase analyzer for JavaScript and TypeScript, designed to detect and address unused code, circular dependencies, and code duplication with exceptional speed and efficiency. Built in Rust, it automates the identification of unused files, exports, dependencies, and types, as well as duplicate code blocks and import cycles, significantly improving code quality and maintainability. Its key capabilities include comprehensive dead code detection, duplicate code analysis (including semantic clones), and dependency auditing, without requiring a Node.js runtime.

## Release notes

## Performance

- **Workspace discovery: 27% faster on large monorepos.** The workspace glob expansion now checks for `package.json` existence before calling `canonicalize()` — reducing syscalls from 759 to ~20 on monorepos like vite that use deep `playground/**` workspace globs. Vite benchmark improved from 596ms → 435ms.

- **Re-export chain propagation: zero-allocation string comparisons.** Replaced `ExportName::to_string()` allocations in hot inner loops with a new `matches_str()` method that compares directly against the enum variant without heap allocation. Affects barrel-heavy monorepos with many re-export chains.

## New detection: `optionalDependencies`

Fallow now parses `optionalDependencies` from `package.json` and detects unused optional dependencies separately from regular dependencies. Full pipeline support:

- New `unused-optional-dependencies` rule (defaults to `error`, suppressed in `--production` mode)
- All output formats: human, JSON, SARIF, compact, markdown
- Auto-fix via `fallow fix` (removes from `optionalDependencies` section)
- LSP diagnostics in VS Code
- Included in `all_dependency_names()` for unlisted dependency cross-referencing

This eliminates false "unlisted dependency" reports for packages like `sharp` that are listed in `optionalDependencies`.

## TypeScript function overload deduplication

Function overload signatures are now deduplicated during extraction:

```typescript
export function parse(): void;           // overload
export function parse(input: string): void;  // overload  
export function parse(input?: string): void {}  // implementation
```

Previously reported as 3 separate exports (and flagged as duplicate exports). Now correctly treated as a single export. On vite, this reduced unused export false positives from 99 → 84 and duplicate exports from 21 → 16.

## Expanded benchmark suite

Added 5 large real-world monorepo projects to the comparative benchmark suite, bringing the total from 3 to 8 projects spanning 174 to 20,416 source files:

| Project | Files | fallow | knip v5 | knip v6 |
|:--------|------:|-------:|--------:|--------:|
| zod | 174 | **19ms** | 639ms | 334ms |
| preact | 244 | **20ms** | 819ms | — |
| fastify | 286 | **24ms** | 1.13s | 289ms |
| vue/core | 522 | **63ms** | 702ms | 299ms |
| TanStack/query | 901 | **148ms** | 2.75s | 1.41s |
| svelte | 3,337 | **325ms** | 1.93s | 860ms |
| next.js | 20,416 | **1.48s** | ✗ | ✗ |

Knip errors out on the largest monorepos (next.js, vite) without producing results. Fallow completes on all projects.

## Ecosystem test fix

Fixed the ecosystem CI workflow (`tests/ecosystem/run.sh`) which was failing on all 12 projects due to passing the project path as a positional argument instead of `--root`. Also fixed install commands for projects using yarn berry and pnpm version constraints.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.2.0...v1.3.0
