---
title: Plumber Score
date: 2026-07-10 15:16:01 +00:00
tags:
  - getplumber
  - GitHub Actions
draft: false
repo: https://github.com/getplumber/plumber
marketplace: https://github.com/marketplace/actions/plumber-score
version: v0.4.0
dependentsNumber: "22"
actionType: Composite
---


Version updated for **https://github.com/getplumber/plumber** to version **v0.4.0**.

- This action is used across all versions by **22** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plumber-score) to find the latest changes.

## What's Changed

# [0.4.0](https://github.com/getplumber/plumber/compare/v0.3.101...v0.4.0) (2026-07-10)

## One grade, one gate: the Plumber Score

Until now, Plumber gave you two competing verdicts: 
    1. The **Plumber Score** (A–E, severity-weighted)
    2. A **compliance percentage** (share of passing controls, severity-blind)

They could disagree: one Critical finding in a single control read as "95% compliant" while scoring an E. And only the percentage gated your CI. 

**As of 0.4.0 the score is the single source of truth**

**What you get:**

- **Severity-aware CI gating.** A Critical finding can now fail your pipeline on its own; a handful of Lows won't drag you below the bar the way they skewed the old percentage.
- **Two simple knobs instead of an opaque threshold:**
    - `--min-score <A-E>`: fail below a score floor. Ex: "require at least a B"
        - Combined with `--min-point` below: both must pass
    - `--min-points <0-100>`: fail below a points floor
        - GitHub Action input: `min-points` 
        - GitLab component input: `min_points`  
        - Default: 100 (any finding fails, same strictness as before)
        - Combined with `--min-score`: both must pass
- **No more false greens.** A run where nothing was actually checked  (like a a config that enables zero controls) now fails (exit 1) instead of passing with a perfect-looking result
- **Clearer verdicts everywhere.** The status line, MR comment, and job summary spell out the gate: `PASSED ✓ (score A - 100.0/100 pts, required ≥ 100 pts)`.

## ⚠️ Breaking changes & how to migrate

- **`compliance` fields are gone** from the JSON report (top-level and per-control) and from the GitHub Action's outputs.
    - Read `plumberScore.finalPoints` (0–100) and `plumberScore.score` (A–E) instead.
- **`passed` has new semantics** in the JSON report: it used to mean "compliance % ≥ threshold"; it now means "the active score gate was met". The report states the gate next to it (`minPoints`, `minScore`, or `threshold`), so the verdict is self-describing.
- **GitHub Action only: the default artifact name changed** from `plumber-compliance` to `plumber-report`.
    - If a downstream job downloads the artifact by name, update it or pin `artifact-name: plumber-compliance`.
- **Repos with nothing scoreable now fail instead of passing** (exit 1):
  - On GitHub, a repository with **no workflow files** previously passed (the old percentage ignored missing CI there); it now fails. GitLab behavior is unchanged — it already failed this case.
  - A `.plumber.yaml` that enables **zero controls** for the scanned provider (e.g. a `github:`-only config on a GitLab project), or a filter that skips them all, also fails now.
- **`--threshold` is deprecated, not removed.** Existing pipelines keep working: it still gates on the old percentage and prints a migration warning. It cannot be combined with the new flags, and it will be removed in a future release — move to `--min-points` / `--min-score` when convenient. An explicit `threshold: 100` is treated as unset (it's the same strictness as the new default).

Exit codes are unchanged: `0` pass, `1` gate failed, `2` usage/config error, `3` could not fully verify.

## ✨ Features

* **gate:** gate runs on the Plumber Score, drop the compliance percentage ([2bd2639](https://github.com/getplumber/plumber/commit/2bd26393123ebe29f2d6c04c4acbc5f54c055413)), closes [#320](https://github.com/getplumber/plumber/issues/320)

## 👷 CI/CD

* **claude:** use claude-opus-4-8 for PR review checks ([0c65684](https://github.com/getplumber/plumber/commit/0c65684441d67fcc9fe10ba07b4f4a25c73e9f48))
* **release:** pin v0.3.101 refs [skip ci] ([e209f31](https://github.com/getplumber/plumber/commit/e209f31449268f99df14022cc39a0e20b5768d6c))
