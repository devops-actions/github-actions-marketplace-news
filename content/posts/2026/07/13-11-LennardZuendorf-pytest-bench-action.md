---
title: pytest Benchmark Baseline Check
date: 2026-07-13 11:38:24 +00:00
tags:
  - LennardZuendorf
  - GitHub Actions
draft: false
repo: https://github.com/LennardZuendorf/pytest-bench-action
marketplace: https://github.com/marketplace/actions/pytest-benchmark-baseline-check
version: v1.0.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates performance benchmarking using `pytest-benchmark`. It compares test results against per-branch baselines, allowing developers to track and report changes in performance over time. Key features include automatic baseline management, tolerance-based threshold checking, and the ability to override regressions for specific PRs. The action is particularly useful for maintaining consistent performance metrics across different environments and detecting unexpected performance regressions.
---


Version updated for **https://github.com/LennardZuendorf/pytest-bench-action** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pytest-benchmark-baseline-check) to find the latest changes.

## Action Summary

This GitHub Action automates performance benchmarking using `pytest-benchmark`. It compares test results against per-branch baselines, allowing developers to track and report changes in performance over time. Key features include automatic baseline management, tolerance-based threshold checking, and the ability to override regressions for specific PRs. The action is particularly useful for maintaining consistent performance metrics across different environments and detecting unexpected performance regressions.

## What's Changed

# pytest Benchmark Baseline Check — v1.0.1 (General Availability)

A reusable GitHub Action that runs `pytest-benchmark`, manages per-branch baselines committed to your repository, gates PRs on regressions, and posts a formatted results comment — with no Docker, no external services, and no third-party Python dependencies in its own scripts.

The action performs its own checkout — it's the only step you need in the job. See [`docs/example-workflow.yml`](docs/example-workflow.yml) for a complete job (triggers, permissions, runner).

## Highlights

* 🖥️ **Hardware-aware comparison**
  Comparability is judged by a CPU/system fingerprint (`cpu.brand_raw` + architecture + core count + system) rather than the runner hostname, since hosted runners randomize the node name on every job.
  * Same CPU model → compares cleanly across jobs.
  * Genuinely different hardware → rejected, never silently mis-compared.
  * `enforce-same-node` (default `"false"`): `"false"` skips a hardware mismatch with a `::warning::` and `comparison-skipped=true`; `"true"` hard-fails the job — the right setting for stable/self-hosted runners.

* 📈 **Dual baseline comparison**
  * PR vs. target-branch baseline, gated by `cross-branch-tolerance` (default `20%`).
  * Sequential comparison vs. `HEAD~1`.
  * Missing benchmarks fail the run; new benchmarks (not yet in the baseline) pass.

* 🧬 **Baselines committed to your repository**
  * Versioned, diffable JSON per branch under `baselines-dir` (default `.benchmarks/baselines`).
  * Raw sample arrays stripped from stats — roughly 99% smaller than raw `pytest-benchmark` output.
  * During a PR run, the action checks out the PR's own head branch, compares against the **target branch's** committed baseline, and — if drift exceeds `update-tolerance` (default `5%`) — stages the updated baseline file **on the PR branch itself**, tagged `[skip ci]`.
  * Lands on the target branch automatically when the PR merges. No separate post-merge push, no rerun, and never a direct write to a protected branch.
  * Same-repo PRs only — forks can't push a baseline update (no write access), but still get the comparison and PR comment.

* 🏷️ **Per-PR regression override**
  Add the `override-label` (default `benchmark-override`) to a PR to waive a detected regression for that PR only. The regression still shows in the comment (`regression-overridden=true`) but doesn't fail the job. Scoped per-PR, self-clearing (remove the label to re-enforce), and never loosens the repository-wide tolerance.

* 📊 **One clean PR comment per run**
  Results table, per-test thresholds, and both baseline comparisons in a single comment. Previous bot comments (matching the `## 📊 Performance Benchmark Results` header) are deleted before posting a new one — no stacking.

* 🔒 **Fail loudly, pass quietly**
  The PR comment and results artifact are always published first; a detected regression fails the job afterward, so you always get the full report regardless of outcome.

* ⚙️ **Per-test thresholds**
  `threshold-map` maps a test-name substring to a max-seconds ceiling (first match wins); tests not covered default to `1.0s`.

* 📦 **No extra dependencies for the action itself**
  All internal scripts (`scripts/benchmark_baseline.py`, `scripts/benchmark_compare.py`) are Python stdlib only — `json`, `pathlib`, `sys`. Your job still needs `pytest-benchmark` installed via `setup-command`.

**Full Changelog**: https://github.com/LennardZuendorf/pytest-bench-action/compare/v0.0.1...v1.0.1

