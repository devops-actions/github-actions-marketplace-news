---
title: Fallow - Codebase Intelligence
date: 2026-04-26 13:39:10 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-intelligence
version: v2.50.0
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.50.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-intelligence) to find the latest changes.

## Action Summary

This GitHub Action provides static and optional runtime analysis for TypeScript and JavaScript codebases, helping developers identify unused code, duplication, complexity, circular dependencies, and architectural issues. It automates codebase health assessments and cleanup, enabling faster reviews of changes (including AI-generated ones) and enforcing maintainability standards. Designed for efficiency with no configuration required, it supports project-wide analysis and integrates seamlessly into development workflows.

## What's Changed

## Per-workspace health metrics for monorepos

`fallow health --workspace X` now actually scopes `vital_signs`, `health_score`, and `summary.files_analyzed` to the workspace's files instead of leaving them at monorepo-wide values. And `fallow health --group-by package|owner|directory|section` finally produces a real grouped envelope instead of silently discarding the flag.

### Why this matters

If you run `fallow health --workspace @scope/app-a` on a 30-package monorepo, you now get the answer to "what is the health score of @scope/app-a?" — previously you got the monorepo-wide score with only `findings` and `hotspots` scoped. And you can now answer "which workspace has the worst maintainability?" in a single invocation:

```bash
fallow health --score --hotspots --group-by package --format json | jq '.groups | sort_by(.health_score.score)'
```

### What lands

- **JSON envelope**: keeps `vital_signs`, `health_score`, `summary`, `findings`, `file_scores`, `hotspots`, `large_functions`, and `targets` at the project level so consumers that ignore grouping still see the headline. Adds `grouped_by` and a `groups` array where each bucket carries its own `vital_signs`, `health_score`, `findings`, `file_scores`, `hotspots`, `large_functions`, and `targets` recomputed against that bucket's files.
- **Human output**: per-group score / files / hot / p90 summary block sorted worst-first when `--score` is set, color-coded grade column, `(root)` legend for files outside any workspace package.
- **SARIF**: every result gains `properties.group`, so GitHub Code Scanning can partition findings per team or package.
- **CodeClimate**: every issue gains a top-level `group` field, so GitLab Code Quality can do the same.
- **Compact / markdown / badge**: fall back to ungrouped output with a stderr note pointing at `--format json` for the richer envelope.

### Other changes

- VS Code extension: new `fallow.changedSince` setting accepts a git ref (e.g. `main`, `HEAD~1`, `origin/main`) and scopes LSP diagnostics to changed files. Useful for legacy codebases adopting fallow incrementally without surfacing the entire pre-existing dead-code backlog at once. The status bar tooltip surfaces the active scope so users can see when diagnostics are filtered. The `changedSince` value is HTML-escaped in the trusted-content tooltip and truncated to 40 characters in the status bar.
- `fallow health --group-by package` on a non-monorepo emits exactly one structured JSON error instead of two (was producing two top-level objects in the same stdout, breaking `jq .` consumers). The new error message also suggests `--group-by directory` for single-package projects.

### Internals

- New `SubsetFilter` enum (`Full` / `Workspaces` / `Paths`) and `AnalysisCountsSnapshot` retained on `FileScoreOutput` let per-subset analysis counts be recomputed without re-running the analyser. `VitalSignsInput.module_filter` restricts per-module aggregates to a file-id subset.
- `--group-by` validation now runs upfront so misconfigured invocations short-circuit before any expensive pipeline stage.

Closes [#184](https://github.com/fallow-rs/fallow/issues/184).

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.49.0...v2.50.0

