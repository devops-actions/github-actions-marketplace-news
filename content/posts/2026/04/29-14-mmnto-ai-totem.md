---
title: Totem Shield
date: 2026-04-29 14:41:39 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.17.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.17.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents, helping them avoid repetitive architectural mistakes and maintain project integrity. It automates the process of turning plain-English coding lessons into deterministic rules that are enforced locally, ensuring that AI agents adhere to best practices and avoid common errors without relying on live large language models (LLMs). By catching mistakes preemptively and enforcing rules offline, Totem streamlines code reviews and improves collaboration between human developers and AI agents.

## What's Changed

### Minor Changes

-   6fd5271: `totem retrospect <pr>` — bot-tax circuit-breaker (mmnto-ai/totem#1713).

    Closes mmnto-ai/totem#1713. Reads a PR's bot-review history live, groups findings into push-based rounds via each review submission's `commit_id` (one round per push, not one round per submission), enriches each finding with cross-PR-recurrence flags read from `.totem/recurrence-stats.json` (mmnto-ai/totem#1715 substrate, read-only) plus rule-coverage flags read from `.totem/compiled-rules.json`, and emits a deterministic verdict per finding: `route-out`, `in-pr-fix`, or `undetermined`. The classifier is a fixed table over the four-axis cube `(severityBucket × roundPosition × crossPrRecurrenceBucket × coveredByRule)`; route-out reasons come from a closed catalog so the report doesn't accumulate one-off prose strings.

    No LLM. No GitHub mutation. Read-only outside the optional `--out <path>` JSON write. Sub-threshold runs exit 0 with a benign skip message; `--force` overrides. The no-LLM invariant is locked down by both a static-source-grep guard (mirrors `totem review --estimate` from mmnto-ai/totem#1714) and a runtime check that every dynamic import in the command file resolves to a non-LLM module.

    New CLI surface: `totem retrospect <pr-number>` with `--threshold <n>` (default 5), `--force`, `--out <path>`. Requires `gh` authenticated against the repo. The `--auto-file` flag proposed in the auto-spec is intentionally deferred to a follow-up ticket (mass-filing is irreversible; v0.1 emits suggested issue titles + bodies the human can copy-paste).

    New core surface: `RetrospectRoundSchema`, `RetrospectClassificationSchema`, `RetrospectFindingSchema`, `RetrospectReportSchema` plus pure helpers `groupFindingsByRound`, `classifyFinding`, `buildStopConditions`, `computeDedupRate`, `signatureOfBody`, `toRoundPosition`, `toCrossPrBucket`. `toSeverityBucket` is now exported from `@mmnto/totem` so the bot-tax cluster (`#1715` + `#1714` + `#1713`) shares one severity vocabulary. `GitHubCliPrAdapter` gains a `fetchReviews(prNumber)` method that reads `gh api repos/.../pulls/N/reviews --paginate` for `commit_id` + `submitted_at` (the existing `fetchPr` JSON shape doesn't include `commit_id`).

### Patch Changes

-   Updated dependencies [6fd5271]
    -   @mmnto/totem@1.17.0

