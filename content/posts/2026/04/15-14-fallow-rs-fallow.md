---
title: Fallow - Codebase Health
date: 2026-04-15 14:23:47 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.38.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.38.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a high-performance, Rust-native codebase analyzer for TypeScript and JavaScript projects. It automates the detection of dead code, duplicate code, code complexity issues, and architectural problems without requiring any configuration, enabling developers to maintain cleaner, more efficient codebases. With sub-second analysis, it provides actionable insights, supports framework-specific plugins, and includes features like auto-removal previews and real-time file change monitoring.

## What's Changed

## Highlights

**Ownership risk analysis** on hotspots: know who depends on which files, and surface single-contributor knowledge concentration before it becomes a retention problem. Runs entirely offline — no GitHub/GitLab API, no cloud — from your local git history.

```bash
fallow health --hotspots --ownership
```

```
● Hotspots (10 files, since 6 months)

  9/10 hotspots depend on a single recent contributor  ·  top authors: alice (6), bob (4)

   38.5 ▲  src/api/__mocks__/handlers.ts [test]
           6 commits    230 churn  0.19 density   1 fan-in  ▲ accelerating
         bus=1 (at risk)  top=alice (63%)

   20.9 ▲  src/wizards/ResultaatForm.tsx
           3 commits    357 churn  0.15 density   1 fan-in  ▲ accelerating
         bus=1 (sole author)  top=alice (100%)

   ...
```

## Added

- **`fallow health --hotspots --ownership`** enriches each hotspot with:
  - `bus_factor` (Avelino truck factor — minimum contributors covering ≥50% of recency-weighted commits)
  - `contributor_count` after bot-pattern filtering
  - `top_contributor` with `share`, `stale_days`, `commits`, and a `format` discriminator
  - `recent_contributors` (up to three additional by share)
  - `suggested_reviewers` (first-class field: recent contributors with `stale_days < 90` — paste-ready for AI agents doing PR review routing)
  - `declared_owner` from CODEOWNERS
  - Tristate `unowned` (`true` = no rule matches, `false` = rule matches, `null` = no CODEOWNERS file)
  - `drift` with human-readable `drift_reason` (fires when the original author has ≥30d file age AND <10% recent share)
- **Human output leads with an ownership summary** above the hotspot list so tech leads see the organizational pattern first (`N/M hotspots depend on a single recent contributor · top authors: ...`).
- **Conditional severity**: red + bold reserved for `bus=1 (sole author)` and `bus=1 + accelerating` cases so the marker stays meaningful on repos where most hotspots are single-contributor. The common bus=1 case is yellow; healthier bus=2+ is dimmed.
- **Test-path tagging**: hotspots in `**/__tests__/**`, `**/__mocks__/**`, `*.test.*`, `*.spec.*`, and `**/test(s)/**` get a `[test]` tag in human output and `is_test_path: true` in JSON. Test files stay in the ranking (test maintenance IS real work) but are visually distinguished.
- **Ownership-aware JSON actions** for AI agents:
  - `low-bus-factor` with file-specific candidate reviewers (`Candidate reviewers: @ron.planken, @huub.sepers`) when `suggested_reviewers` is non-empty
  - `unowned-hotspot` with a synthesized CODEOWNERS pattern (`/src/api/users/`) plus `heuristic: "directory-deepest"` so the strategy can evolve without breaking consumers
  - `ownership-drift` when the original author is no longer maintaining
- **`--ownership-emails={raw|handle|hash}`** controls author email privacy. Defaults to `handle` (local-part only, GitHub noreply unwrap: `12345+alice@users.noreply.github.com` → `alice`). `hash` emits stable `xxh3:<16hex>` pseudonyms for regulated environments where author identities are sensitive in CI artifacts. `raw` for public OSS.
- **`health.ownership` config section**: `botPatterns` (glob patterns matched against raw author email; `*noreply*` deliberately omitted because it would filter the majority of real GitHub contributors) and `emailMode`.
- **MCP `check_health`** gains `ownership: bool` and `ownership_email_mode: "raw"|"handle"|"hash"` (typed enum, JSON Schema constrained).

## Changed

- **Churn layer now tracks per-author contributions.** `git log` runs with `--use-mailmap` and the `%at|%ae` format to record authors. Per-file author contributions reference an interned email pool to keep the bitcode cache compact. Cache schema bumped to v2; older caches are automatically rejected on load.

## Why this matters

On a 135 KLOC monorepo, running this against 6,662 commits of history surfaces:
- 9 of the top 10 hotspots depend on a single recent contributor
- Two dominant authors own 10 of 10 top hotspots
- No CODEOWNERS file means any of those people leaving is a retention crisis

The feature is deliberately **raw-signals-first**: fallow does not ship an opinionated "Knowledge Loss Risk" composite score. It gives you the numbers and lets you (or your AI agent) decide how to weight them. The `actions[]` array is the agent contract.

Research-backed: Avelino et al. on truck factor; Thongtanunam et al. (ICSE 2016) on ownership and code quality.

Community-requested via [Discussion #116](https://github.com/fallow-rs/fallow/discussions/116).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.37.0...v2.38.0
