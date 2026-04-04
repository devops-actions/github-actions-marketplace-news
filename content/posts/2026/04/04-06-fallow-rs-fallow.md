---
title: Fallow - Codebase Health
date: 2026-04-04 06:10:49 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.12.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.12.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-native codebase analyzer for TypeScript and JavaScript that detects unused code, duplication, and complexity issues across projects. It automates the identification of dead code, copy-pasted blocks, and problematic architectural patterns, offering sub-second analysis without requiring configuration. By streamlining code audits and providing actionable insights, it helps developers optimize their projects and maintain clean, efficient codebases.

## What's Changed

## What's New

### Vital Signs with Context

The orientation header now shows **what the percentages mean**:

```
■ dead files 0.6% (1 of 173) · dead exports 63.5% (418 of 658) · MI 89.5 (good)
  173 files analyzed
  130 entry points detected (124 plugin, 6 package.json)
```

Entry-point detection is surfaced inline so you can verify fallow understood your project structure. When zero entry points are found, a yellow warning with remediation appears.

### `--summary` Mode

Show only category counts — no individual items:

```
$ fallow check --summary
Dead Code Summary

       1  Unused files
     124  Unused exports
      30  Circular dependencies

     956  Total
```

Works for `check`, `dupes`, and `health`. JSON output always includes a `summary` counts object for CI dashboards.

### Baseline-Aware Deltas

When using `--baseline`, the failure summary now shows the delta:

```
Failed: check (42 issues, -8 since baseline)
```

### Monorepo Features

- **`--group-by package`** — groups findings by workspace package
- **`publicPackages`** config — mark packages whose exports are public API (not flagged as unused)
- **`dynamicallyLoaded`** config — glob patterns for runtime-loaded files
- **Smarter `fallow init`** — auto-detects TypeScript, monorepo tool, test framework, and generates a tailored config
- **Undeclared workspace diagnostic** — warns about directories with `package.json` not in workspace patterns

### Detection Improvements

- **Cross-package circular deps** — `(cross-package)` tag distinguishes cycles crossing workspace boundaries
- **Mirrored directories in JSON** — `mirrored_directories` array in duplication output
- **`fixture_glob_patterns()`** — Jest, Vitest, and Playwright plugins now declare test fixture patterns
- **Second-level directory rollup** — automatically breaks down dominant directories in unused file reports

### Bug Fixes

- Unlisted deps no longer include shell variables (`$DIR`), numbers (`1`), or bundler internals (`__barrel_optimize__`)
- "Start with X" nudge no longer points to test fixtures or generated files
- Nested `node_modules` directories excluded from workspace scanning

### Performance

No regressions. All 8 benchmark projects show identical issue counts and 1-8% faster execution (from short-circuiting invalid package name resolution).

| Project | Files | Time |
|---------|-------|------|
| zod | 173 | 90ms |
| preact | 252 | 91ms |
| fastify | 286 | 117ms |
| vue-core | 537 | 242ms |
| query | 1,014 | 462ms |
| vite | 1,695 | 642ms |
| svelte | 7,813 | 1.0s |
| next.js | 15,407 | 6.0s |

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.11.0...v2.12.0
