---
title: Falsifying Swarm Orchestrator
date: 2026-05-25 06:31:10 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v10.3.0-advisory
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v10.3.0-advisory**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

Swarm Orchestrator is a GitHub Action and CLI tool designed to audit AI-generated pull requests by analyzing code diffs and scoring them against multiple cheat detection algorithms. It automates the evaluation of PRs for adherence to typed contracts, providing a suspicion score, generating compliance artifacts (e.g., CycloneDX-ML/SPDX 3.0 AI-profile), and optionally enforcing merge-blocking policies. This tool streamlines AI-enhanced code review processes and supports credible procurement with compliance mapping to standards like the EU AI Act and SBOM-for-AI.

## What's Changed

Four ship-ready items from the v10.2-advisory backlog that didn't need external humans.

## Headline

| | Value |
|---|---|
| **Real-corpus F1** | **0.167** (was 0.109) |
| **Real-corpus precision** | **0.100** (was 0.067) |
| **Real-corpus recall** | **0.500** (was 0.300) |
| Sample | 205 AI-labeled PRs, 10 broken / 195 clean, judge off |

The prior `latest.json` predated the v2.0 commits to `error-swallow`, `fake-refactor`, `mock-of-hallucination`, and `no-op-fix`. Rescoring against the live registry picks up the actual v2.0 surface. Single per-detector mover is `mock-of-hallucination`: 0 TP / 13 FP → 2 TP / 16 FP. No detector clears the F1 0.5 promotion gate; every detector stays `advisory-only`.

## `no-op-fix` 2.0.0 with a gated Anthropic Haiku judge

- Off by default. Opt in with `--enable-llm-judge` or `SWARM_AUDIT_LLM_JUDGE=1`. Requires `ANTHROPIC_API_KEY`. The no-credentials default contract of `swarm audit` is preserved.
- Pinned model id `claude-haiku-4-5-20251001`; replay-deterministic via a content-addressed cache at `.swarm/llm-judge-cache/<sha>.json`.
- A finding fires if either the deterministic v1.1.0 check or the judge says YES.
- Judge unavailable (no API key, API error, malformed reply) adds a single info-severity finding and the audit continues on deterministic signal alone.
- New `llm-judge-result` ledger entry kind for replay and auditing.
- The renderer surfaces the judge's one-sentence reasoning under any finding that carries it.

## Public dashboard

Live at **[moonrunnerkc.github.io/swarm-orchestrator/docs/leaderboard/](https://moonrunnerkc.github.io/swarm-orchestrator/docs/leaderboard/)**.

- Pure HTML + vanilla JS at `docs/leaderboard/` (no build step, no CDN).
- Fetches `benchmarks/real-corpus/scores/latest.json` directly.
- Header: overall precision / recall / F1 + score-file timestamp + pinned detector versions.
- Per-detector table sortable by clicking any column header.
- Synthetic regression sidebar preserved so the existing weekly cron still lands.
- Deployed via the new `.github/workflows/pages.yml` (skips cleanly when Pages isn't enabled).

## `--shadow-output <path>` single-file mode

- New flag alongside the existing `--shadow <repo-label>` per-repo rollup.
- Schema: `{ prRef, auditedAt, durationMs, detectorVerdicts, judgeInvocations, renderedComment }`.
- In advise mode suppresses stdout markdown so the run produces no human-visible comment.
- Operator guide at [`docs/shadow-mode.md`](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v10.3.0-advisory/docs/shadow-mode.md) with a runnable `jq` rollup recipe.

## What still needs external humans

- The labels-v2 human-labeled corpus under `benchmarks/real-corpus/labels-v2/` (scaffold only; rater pool, payment, kappa report still need real raters).
- `docs/case-studies/external-writeup-placeholder.md` (waits for an OSS maintainer's writeup).
- Cross-repo shadow-mode aggregate numbers (the tooling shipped here; third-party PR traffic is the blocker).

## Tests

1203 passing (was 1190). LOC budget raised from 26000 to 27000 to absorb the judge module; current 26364. All gates green: lint, typecheck, test, leaderboard, score-real, loc-budget.

Full [CHANGELOG entry](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v10.3.0-advisory/CHANGELOG.md#1030-advisory---2026-05-24).
