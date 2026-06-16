---
title: Carbon-Aware Dispatcher
date: 2026-06-16 06:53:03 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.7.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## Make every build carbon-optimal, not just gated

This release turns the action from an on/off switch into a full carbon-aware
control system, with observability.

### New capabilities
- **Carbon-adaptive CI (the dial)** — `tier_thresholds` → `carbon_tier`
  (green/amber/red) so jobs right-size work to the grid instead of skipping.
- **Carbon budgets as code** — `monthly_budget_grams` caps monthly emissions;
  `budget_exceeded` / `budget_*` outputs gate builds. Tracks month-to-date
  emissions in the ledger.
- **Cost + carbon routing** — `cost_weight` picks the cheapest-and-cleanest zone
  via the free Azure Retail Prices API, plus `cost_price_map` to price any cloud
  (AWS/GCP/on-prem) with your own rates.
- **Marginal emissions** — optional WattTime free signal (`marginal_clean`) for
  marginal-aware timing of flexible compute.

### Observability
- **Notifications** — Slack/Discord/generic webhook on carbon events.
- **Weekly digest** — `mode: digest` posts/updates a GitHub issue summarizing
  savings, emissions, and a daily sparkline.
- **Doctor mode** — `mode: doctor` one-click diagnostic of zones, tokens, and
  live data flow.
- **Live status badge** — `carbon-now.json` shields badge for the current grid
  zone/intensity/tier.

### Quality
- Hardening fixes from a full code review (budget gating on dirty-grid runs,
  clamping, edge cases), a simplification pass, and end-to-end integration tests.
  567 tests, mypy + ruff clean.

