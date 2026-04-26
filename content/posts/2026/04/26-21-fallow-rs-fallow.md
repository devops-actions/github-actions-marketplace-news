---
title: Fallow - Codebase Intelligence
date: 2026-04-26 21:22:36 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.52.0
dependentsNumber: "15"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.52.0**.

- This action is used across all versions by **15** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

Fallow is a static analysis tool for TypeScript and JavaScript codebases that identifies unused code, duplication, complexity, and architectural issues, as well as providing optional runtime insights into code execution paths in production. It helps developers streamline code reviews, clean up dead code, reduce redundancy, and maintain code quality, all with minimal configuration. Built with a project-wide understanding of the codebase, Fallow enables efficient codebase management and supports AI-assisted development workflows without embedding AI itself.

## What's Changed

## Highlights

### `fallow dupes --group-by` partitions clone groups by team / directory / package / section

The flag was validated since v2.51.0 (so `--group-by owner` without CODEOWNERS produced a consistent error across `check` / `health` / `dupes`) but the resolver was built and discarded; output stayed ungrouped. v2.52.0 wires it through every output format.

```bash
fallow dupes --group-by owner --format json | jq '.groups[] | {key, total: .stats.duplicated_lines}'
```

**Multi-owner attribution** uses largest-owner with alphabetical tiebreak. A clone group with 5 instances split 4 in `team-a/` and 1 in `team-b/` is attributed to `team-a`. Per-instance owners are surfaced inline so consumers can see split ownership without re-resolving paths.

**Output shape**:
- JSON: top-level `grouped_by`, `total_issues`, `groups` array with per-bucket `stats` / `clone_groups` (each carrying `primary_owner`) / `clone_families`. Schema additive; ungrouped output is unchanged.
- SARIF: `properties.group` per result.
- CodeClimate: top-level `group` per issue.
- Human: cyan-bullet `Per-{mode} duplication` header, per-bucket sub-headers with stats. The largest-owner attribution preamble renders only for `--group-by owner`; directory / package / section modes hide it.

`--top` skips when `--group-by` is active so per-bucket stats reflect the full bucket; the renderer applies its own per-bucket cap.

### `BoundaryZone.root` for monorepo per-package boundaries

```toml
[[boundaries.zones]]
name = "ui"
patterns = ["src/**"]
root = "packages/app/"

[[boundaries.zones]]
name = "domain"
patterns = ["src/**"]
root = "packages/core/"
```

The zone's `patterns` resolve relative to the subtree instead of the project root. `packages/app/src/login.tsx` classifies as `ui`; `packages/core/src/order.ts` classifies as `domain`. Without `root`, these two zones with identical `src/**` patterns would have collided. Filter approach over prefix-rewriting: zero-cost for zones without `root`, keeps stored pattern strings un-corrupted.

Closes the `FALLOW-BOUNDARY-ROOT-RESERVED` warning ramp from v2.51.0. Patterns that double-prefix the root (e.g., `root: "packages/app/"` + `patterns: ["packages/app/src/**"]`) get a `FALLOW-BOUNDARY-ROOT-REDUNDANT-PREFIX` migration cue. Validation matches the existing `validate_zone_references` log-and-continue convention; a `--strict-config` follow-up to escalate to non-zero exit is tracked internally.

New ADR: `decisions/007-boundary-zone-root.md`.

### Inline Angular `@Component({ template: \`...\` })` complexity findings

v2.51.0 emitted synthetic `<template>` complexity for standalone `.html` files referenced via `templateUrl` only. v2.52.0 covers inline templates too, anchoring the finding at the host file's `@Component`/`@Directive` decorator line so jump-to-source lands on the decorator and `// fallow-ignore-next-line complexity` placed directly above it suppresses without extra plumbing. Cache version bumped to 49 so existing caches re-extract.

Closes [#187](https://github.com/fallow-rs/fallow/issues/187).

## Changed

- **Schema version policy** documented explicitly in `docs/output-schema.json`. Additive changes (new optional fields) do NOT bump; breaking changes do. Consumers should feature-detect new fields via JSON-key existence rather than gating on the version.

## Fixed

- `cargo doc --workspace --no-deps --document-private-items` now passes again. Three pre-existing rustdoc errors landed alongside the inline-template work: a bare `<template>` HTML tag in a doc comment, an unresolved `[VitalSigns]` / `[HealthScore]` intra-doc link, and a public-doc-links-private warning. CI is green.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.51.0...v2.52.0
