---
title: Fallow - Codebase Intelligence
date: 2026-07-06 06:31:49 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v3.2.0
dependentsNumber: "252"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v3.2.0**.

- This action is used across all versions by **252** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## What's Changed

## Health: a configurable "function too big" threshold, surfaced in the summary

This release makes the unit-size (large-function) check configurable and reports the effective ceiling in the health output.

### `health.maxUnitSize`: raise the large-function bar instead of switching it off

The line count at which a function is reported as an oversized "large function" was hardcoded to 60 LOC. That made test suites noisy: a `describe()` callback spans hundreds of lines, and each large `it()` body trips the threshold too. The only escape was `health.ignore`, which drops every health signal (complexity, CRAP, hotspots) for those files, so you lost complexity checking on your test code as well.

You can now raise the bar rather than turning it off:

- Set a global `health.maxUnitSize` (default 60).
- Or scope it to a glob with a per-file `thresholdOverrides` entry, for example `{ "files": ["**/*.test.*"], "maxUnitSize": 500 }`. Leave `functions` empty so the override covers both the `describe()` wrapper and the individual `it()` blocks.

Complexity, cognitive, and CRAP findings on those files are unchanged. Like the existing `maxCyclomatic` / `maxCognitive` / `maxCrap` overrides, this filters the reported "large functions" list; the descriptive unit-size profile and the health score still reflect raw sizes (use `health.ignore` to remove a file from the score entirely). Resolved thresholds are inspectable via `fallow config`. Thanks @digulla for the request. (Closes #1731)

### The health JSON summary reports the effective unit-size threshold

The `summary` block on `fallow health --format json` already carried `max_cyclomatic_threshold`, `max_cognitive_threshold`, and `max_crap_threshold`, but not a unit-size sibling, so a consumer reading the summary to learn which thresholds a run uses saw only three of the four. It now also carries `max_unit_size_threshold` (the effective global `health.maxUnitSize`, default 60). The human report's "Large functions" section reflects the configured global instead of a static "60" when `health.maxUnitSize` is raised project-wide. This is an additive-required field matching the existing `max*Threshold` siblings; no change to the unit-size check itself. (Closes #1750)

### Other changes

- Reuse the audit analysis context in the programmatic API path for less redundant work per run.
- Benchmark-harness coverage and CI sharding improvements (internal).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v3.1.0...v3.2.0

