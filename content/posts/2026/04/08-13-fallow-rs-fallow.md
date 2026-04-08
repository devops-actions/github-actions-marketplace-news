---
title: Fallow - Codebase Health
date: 2026-04-08 13:58:28 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.20.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.20.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer for TypeScript and JavaScript that identifies unused code, duplication, complexity issues, and architectural problems without requiring configuration. It automates the detection of inefficiencies such as dead code, duplicate code blocks, circular dependencies, and overly complex functions, facilitating cleaner, more maintainable code. With sub-second performance and built-in support for framework conventions, it provides fast and comprehensive insights into code health, making it ideal for improving code quality in projects of any size.

## What's Changed

## Tiered CRAP Scoring

CRAP scores now use a **per-function coverage spectrum** instead of the old binary per-file model.

### Graph-based estimation (new default)

Out of the box, fallow estimates per-function coverage from the module graph's export reference data:

| Signal | Estimated coverage | CRAP for CC=10 |
|--------|-------------------|----------------|
| Function's export directly referenced by tests | 85% | 10.3 |
| File is test-reachable, function not directly referenced | 40% | 31.6 |
| File not test-reachable | 0% | 110.0 |

The canonical CRAP formula (`CC² × (1 - cov/100)³ + CC`) is applied with these estimates. Zero config, zero extra latency. JSON output reports `"coverage_model": "static_estimated"`.

### Istanbul coverage (`--coverage`)

For exact per-function CRAP scores, provide real coverage data:

```bash
# Generate coverage with your test runner
vitest run --coverage --provider istanbul
# or: jest --coverage

# Fallow reads it automatically
fallow health --file-scores
# or explicitly: fallow health --coverage coverage/coverage-final.json
```

Auto-detected from `coverage/coverage-final.json` and `.nyc_output/coverage-final.json`. Also configurable via `FALLOW_COVERAGE` env var for CI. JSON output reports `"coverage_model": "istanbul"`.

Uses the published [oxc-coverage-instrument](https://github.com/fallow-rs/oxc-coverage-instrument) crate for parsing Istanbul-format coverage data.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.19.3...v2.20.0
