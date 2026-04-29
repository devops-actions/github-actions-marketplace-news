---
title: Totem Shield
date: 2026-04-29 06:08:28 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.16.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.16.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents, ensuring architectural integrity and preventing repetitive mistakes. It automates the process of converting plain-English lessons into enforceable rules that block problematic code patterns during `git push`, maintaining consistency and preventing regression without relying on runtime LLMs. This solves issues such as AI agents forgetting context, reinventing existing helpers, or introducing architectural errors, streamlining PR reviews and improving code quality.

## What's Changed

### Minor Changes

-   2d5b9ac: `totem stats --pattern-recurrence` — cross-PR recurrence clustering substrate.

    Closes mmnto-ai/totem#1715. Fetches bot-review findings (CodeRabbit + Gemini Code Assist) across the most recent merged PRs (`--history-depth`, default 50, capped at 200), folds in trap-ledger `override` events as co-equal signals, clusters them by a normalized signature (paths + line numbers + code-fence content stripped), filters out clusters covered by an existing compiled rule via Jaccard ≥ 0.6 keyword-overlap on the rule's `message`, and writes the surviving patterns at-or-above `--threshold` (default 5) to `.totem/recurrence-stats.json`. The console summary shows the top 5 by occurrence count.

    This is the substrate of truth for the upcoming `totem retrospect <pr>` (mmnto-ai/totem#1713 bot-tax circuit breaker) and `totem review --estimate` (mmnto-ai/totem#1714 pre-flight estimator) — patterns from those features will read this file rather than re-scan PR history per invocation.

    Output shape is versioned (`version: 1`), stable, and Zod-validated; consumers can parse against `RecurrenceStatsSchema` exported from `@mmnto/totem`. Atomic writes via temp + rename keep concurrent invocations safe.

### Patch Changes

-   Updated dependencies [2d5b9ac]
    -   @mmnto/totem@1.16.0

