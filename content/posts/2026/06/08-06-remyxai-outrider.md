---
title: Remyx Outrider
date: 2026-06-08 06:59:10 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.4.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.4.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Behavior change: the deep-search retrieval loop introduced in v1.3.8 is now on by default for every customer pinned to `@v1`.

**What changes**

The action now runs an audit + refine pass after the broad `/papers/recommended` fetch on every run. The audit pass clusters the broad pool, identifies under-represented themes against the repo's README + recent Outrider Issue history, and drafts up to 3 keyword-style refine queries against `/search/assets`. New candidates are deduped against the broad pool and merged into the selection input.

In practice this surfaces papers the broad ranking misses because they fall outside the repo's import graph — substitutes for an imported model, single-view fallbacks for multi-view stages, training-recipe upgrades, alternative implementations of a pipeline step.

**What it costs**

About \$0.5–1.0 extra in Claude spend per run, plus a few GitHub API calls (README + recent Issues) and N `/search/assets` calls (default N = 3 queries × 5 results). All best-effort: any failure in the audit + refine path degrades silently to the broad pool — never blocks the run.

**How to opt out**

If the cost isn't worth it for a given target, set `REMYX_DEEP_SEARCH=0` in the workflow env:

```yaml
env:
  REMYX_API_KEY: ${{ secrets.REMYX_API_KEY }}
  ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
  REMYX_DEEP_SEARCH: '0'
```

**Tunables**

- `REMYX_AUDIT_TIMEOUT_S` — wall-clock budget for the audit Claude call (default 120s)
- `REMYX_AUDIT_MAX_TURNS` — max agentic turns for the audit pass (default 5)
- `REMYX_REFINE_PER_QUERY` — `/search/assets` results per refine query (default 5)

No API change, no input/output schema change.
