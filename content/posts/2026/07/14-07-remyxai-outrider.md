---
title: Remyx Outrider
date: 2026-07-14 07:56:33 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.23
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the validation and comparison of new research methods against an existing codebase. It helps teams measure changes by scheduling runs or triggering them on demand, using Anthropic Opus or z.ai's GLM models as backends. The action supports draft PRs with self-reviews, issues for preflight checks, and branch-only mode for exploration without committing to a single candidate.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.23**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action automates the validation and comparison of new research methods against an existing codebase. It helps teams measure changes by scheduling runs or triggering them on demand, using Anthropic Opus or z.ai's GLM models as backends. The action supports draft PRs with self-reviews, issues for preflight checks, and branch-only mode for exploration without committing to a single candidate.

## What's Changed

Closes the loop on the observation that spawned this release: the fleet's continuous mode kept re-picking the same top-relevance paper (WebSwarm) every cron cycle, either via intel-aware selection ignoring the "already-dispatched" prompt section, or via the fallback path when the selection Claude call failed empty. This release turns that pattern into cheap, auditable skips — with escape hatches for legitimate re-dispatch cases.

## What's in it

**Selection-pass history awareness**

* New "Already-dispatched arxivs on this fork" section renders in the selection prompt when `maintain-state: true` is on and the fork has landings in `.remyx/repo_intel.yaml`. Selection Claude sees the list before picking.
* Schema extended with `is_re_pick` + `re_pick_justification` fields — model self-flags when it re-picks a prior arxiv, must justify with "different mode / different call-site / new coordination signal" reasoning.
* Server-side detection catches unflagged re-picks: after JSON parse + chosen_index validation, cross-checks the pick's arxiv (versionless-normalized) against the dispatched list. If picked = prior-landing without `is_re_pick=true`, force the flag + trigger justification coercion.

**Collision-free branch naming**

* Before `git push`, checks `git/ref/heads/<slug>` via GitHub API for a collision.
* Applies `-v2..-vN` suffix hierarchy if the branch already exists; falls back to `-YYYYMMDD` timestamp for astronomically-unlikely `-v20`+ exhaustion.
* Preserves the `-refined` convention for `start-from-ref` runs.

**Duplicate-work guard at `process_target`**

* Catches picks that bypassed the selection layer's enforcement (e.g. fallback path when `_run_claude_oneshot_streaming` returns `ok=False`).
* Coerces terminal status to `skipped_arxiv_already_landed` instead of running a redundant coding session.
* Four bypass conditions preserve intentional re-dispatch: `INPUT_PIN_ARXIV`, `INPUT_START_FROM_REF`, `INPUT_LEAD_CONTENT`, or an already-justified `is_re_pick`. Each bypass surfaces its reason in `result["duplicate_work_guard_bypass_reason"]` for telemetry.

**Selection call resilience**

* Retry-on-empty-output: when the Claude streaming call returns `ok=False` with truly empty output (observed in the wild on z.ai's Anthropic-compat endpoint), retry once with reduced max-turns before falling back. Preserves the "signaled failure → no retry" behavior for timeouts / CLI-gone (which return non-empty error text).

## Observed behavior on ag2 continuous mode

Sequence of two consecutive cron dispatches during release testing:

* 20:26 cron (pre-fix): `selection call failed: ; falling back...` → picked WebSwarm → produced webswarm-...-v2 branch → $0.46 spent on duplicate work.
* 20:50 cron (post-fix): `selection call returned empty output... retrying` → retry also failed → fallback picked WebSwarm → `⚠ duplicate-work guard: picked arxiv 2607.08662 already has a landing... skipping` → status `skipped_arxiv_already_landed` → $0.20 spent, no duplicate branch produced.

## Backward compatibility

No breaking changes. All new behavior gated on `maintain-state: true` (default `false`). Existing dispatches without maintain-state ignore the guard entirely.

Tests: 1036 pass, 1 skipped. Adds 82 new tests specifically for the repo-intel + guard + collision-naming machinery.
