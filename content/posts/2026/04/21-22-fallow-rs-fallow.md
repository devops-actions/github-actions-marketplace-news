---
title: Fallow - Codebase Health
date: 2026-04-21 22:02:00 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.44.1
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.44.1**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, Fallow, provides static and optional runtime analysis for TypeScript and JavaScript codebases to identify and address issues like unused code, code duplication, high complexity, and architecture drift. It automates the detection of inefficiencies and risky code patterns across entire projects, offering insights beyond traditional file-local tools. With a focus on improving code health and maintainability, Fallow delivers rapid, zero-configuration analysis and supports runtime intelligence to enhance production-level decision-making.

## What's Changed

## Highlights

### `--coverage` now matches arrow-function exports

Istanbul records arrow functions bound to a `const` as `(anonymous_N)` while fallow extracts the binding identifier name. Neither the exact `(name, line)` match nor the name-only fuzzy match succeeded, so arrow-heavy codebases silently fell through to the estimated coverage model with `istanbul_matched: 0`, and `--max-crap` (new in v2.44.0) ran against estimates instead of observed coverage.

`IstanbulFileCoverage::lookup` now has a third fallback: when no name-based match exists and exactly one `(anonymous_N)` entry starts within ±2 lines of the requested line, use it. The single-candidate guard keeps the match unambiguous (multiple candidates return `None` rather than risk attributing coverage to the wrong function).

Before:
```
{ "coverage_model": "istanbul", "istanbul_matched": 0, "istanbul_total": 1880 }
```

After:
```
{ "coverage_model": "istanbul", "istanbul_matched": 1874, "istanbul_total": 1880 }
```

Closes [#155](https://github.com/fallow-rs/fallow/issues/155).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.44.0...v2.44.1

