---
title: Fallow - Codebase Health
date: 2026-03-28 05:59:09 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.5.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.5.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native tool designed to analyze TypeScript and JavaScript codebases for dead code, code duplication, and complexity hotspots. It automates the detection of unused code, duplicate code blocks, and overly complex functions, helping developers optimize and maintain cleaner, more efficient codebases. With zero configuration, fast performance, and various analysis modes, Fallow streamlines code quality assessment and refactoring efforts.

## Release notes

## Features

### Project health score (`--score`, `--min-score`)

A single 0–100 number with letter grade (A/B/C/D/F) that aggregates your codebase's vital signs into one metric.

```bash
fallow health           # score shown by default
fallow health --score   # score only
fallow health --min-score 70  # CI gate: exit 1 if below
```

The score starts at 100 and subtracts penalties for dead code, complexity, low maintainability, hotspots, unused dependencies, and circular dependencies. JSON output includes a `health_score` object with a `penalties` breakdown that is reproducible: `100 - sum(penalties) == score`.

Grades: **A** (≥85), **B** (70–84), **C** (55–69), **D** (40–54), **F** (<40).

Validated against 8 real-world projects (zod, preact, vite, fastify, query, svelte, vue-core, next.js).

### Regression detection (`--fail-on-regression`, `--tolerance`)

CI gate that compares issue counts against a saved baseline. Fail the build when code quality regresses.

```bash
# Save a baseline
fallow dead-code --save-regression-baseline

# On next run, fail if issues increased
fallow dead-code --fail-on-regression --tolerance 2%
```

Supports both absolute (`"5"`) and percentage (`"2%"`) tolerance. Baselines can be stored as a file or embedded in config.

## Changes

- Health score is shown by default in `fallow health` (no flags needed)
- `--save-snapshot` automatically includes health score and grade (snapshot schema v2, backwards compatible)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.4.0...v2.5.0
