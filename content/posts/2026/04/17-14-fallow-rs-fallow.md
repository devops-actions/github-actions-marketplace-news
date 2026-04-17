---
title: Fallow - Codebase Health
date: 2026-04-17 14:12:23 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.39.0
dependentsNumber: "8"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.39.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action provides a codebase analysis tool for TypeScript and JavaScript projects, focusing on identifying unused code, duplication, complexity, and architectural issues. It automates the detection of dead code, circular dependencies, boundary violations, and other inefficiencies, enabling developers to optimize and maintain cleaner codebases. With sub-second performance, zero configuration, and broad framework compatibility, it offers a streamlined solution for improving code quality and maintainability.

## What's Changed

## Phase 2 Production Coverage Intelligence

`fallow health --production-coverage <path>` merges V8 or Istanbul runtime coverage into the existing health report. This release closes the gap between static dead-code analysis and production reality: static analysis tells you what *appears* unused; production coverage tells you what *is* unused, with proof from real traffic.

This is the first paid feature. A 30-day trial is available with `fallow license activate --trial --email you@company.com` (email only, no credit card). All existing dead-code analysis, complexity, duplication, CI integration, LSP, and MCP surfaces remain free and open-source forever.

### New features

- **`fallow health --production-coverage <path>`** — accepts a V8 dump directory (`NODE_V8_COVERAGE=./coverage`), a single V8 JSON file, or an Istanbul `coverage-final.json`. Spawns the closed-source `fallow-cov` sidecar to produce a typed report with:
  - Per-finding **verdict**: `safe_to_delete` (statically unused AND never invoked), `review_required` (statically used, never invoked — needs a human look), `low_traffic` (invoked below configurable threshold), `coverage_unavailable` (V8 couldn't track), `active` (hot enough to keep).
  - **Stable content-hash IDs** (`fallow:prod:<hash>`) for CI baselines, suppression, and agent cross-references.
  - **Evidence block** on every finding so the "why" is machine-readable: `static_status`, `test_coverage`, `v8_tracking`, `untracked_reason`, `observation_days`, `deployments_observed`.
  - **Hot paths** ranked by invocation count and percentile.
- **`fallow license`** — `activate` (with `--trial` / `--from-file` / stdin), `status`, `refresh`, `deactivate`. Fully offline Ed25519 verification against a compiled-in public key; only `--trial` and `refresh` touch the network.
- **`fallow coverage setup`** — single resumable entry point: license check → sidecar install → framework-specific coverage recipe → automatic handoff into `fallow health --production-coverage`. Works with Next.js, Nest, SvelteKit, Remix, Astro, and plain Node.
- **New `fallow health` flags**: `--min-observation-volume <N>` caps confidence at `medium` until enough traces have been observed (spec default 5000); `--low-traffic-threshold <RATIO>` sets the fraction of total trace count below which an invoked function is classified `low_traffic` (spec default `0.001`).
- **`fallow-cov-protocol 0.2.0`** published to crates.io — versioned envelope types shared between the public CLI and the closed-source sidecar.

### Bug fixes

- **GitLab CODEOWNERS `[Section]` headers and `^[Frontend]` exclusions** are now parsed correctly. Previously treated as ordinary rules, which produced nonsensical `reviewer: @Frontend` output.
- **Windows `~` home-directory resolution** for license paths now falls back to `%USERPROFILE%` when `$HOME` is unset (the default on Windows).
- **Health exit code** for production coverage now triggers on `safe_to_delete` + `review_required` verdicts (replacing the 0.1 `never-called` state). CI stays red on definitive dead-code signals.

### Breaking changes

- **`fallow health --production-coverage` JSON output** moves from the 0.1 shape to the 0.2 shape. `schema_version` bumps `3 → 4`. Field renames: `functions_total` → `functions_tracked`, `functions_called` → `functions_hit`, `functions_never_called` → `functions_unhit`, `functions_coverage_unavailable` → `functions_untracked`, `percent_dead_in_production` → `coverage_percent` (inverted semantics). Findings gain `id`, required `line`, per-finding `verdict`, `evidence` block, and nullable `invocations`. Hot paths gain `id`, `line`, `percentile`. Summary adds `trace_count`, `period_days`, `deployments_seen`. The top-level report `verdict` (`clean` / `hot-path-changes-needed` / `cold-code-detected` / `license-expired-grace`) is unchanged.
- **`fallow-cov-protocol`** now requires `StaticFunction::static_used` + `test_covered` on every function. The sidecar rejects 0.1-shape requests at deserialization (exit code 2) rather than silently defaulting to "used + covered" — a silent default would have hidden every `safe_to_delete` finding.

### Open source commitment

All 14 dead-code issue types, 90 framework plugins, complexity, duplication, CI integration, LSP, MCP, and all six output formats remain free and open-source. Production coverage analysis is a separate, closed-source capability distributed via the `fallow-cov` sidecar. No existing feature has moved behind a paywall.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.38.0...v2.39.0
