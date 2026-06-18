---
title: Carbon-Aware Dispatcher
date: 2026-06-18 06:54:19 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.8.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.8.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## Beyond CI: a complete carbon-aware toolkit

v1.8.0 takes the project from a GitHub Action that gates builds to a full
carbon-aware decision system that runs anywhere, accounts honestly, and tells you
exactly what to do.

### Run anywhere: standalone CLI and container
- **`carbon-aware` CLI**, the same engine usable from cron, Kubernetes CronJobs,
  Airflow, systemd timers, or any shell, so it reaches the large deferrable
  workloads (ML training, ETL, batch) where the real energy lives. Composes via
  exit codes: `carbon-aware check && ./train.sh`.
- **Multi-arch container** (amd64 and arm64) published to GHCR on each release.
- Latent packaging bug fixed so the installed console scripts work.

### Decide what, when, and where (each quantified in kg CO2/yr)
- **`suggest-cron`**: shift a recurring job to its cleanest hour, from a real
  historical curve, then forecast, then a per-zone heuristic. `--duration-hours`
  targets the cleanest multi-hour window for batch jobs; `--weekly` also picks the
  cleanest day of week.
- **`suggest-region`**: move a flexible workload to the cleanest region, with the
  saving and honest latency, data-residency, and egress caveats.
- **`plan`**: the cleanest region and hour together.
- **`best-window`** and the queue strategy for deadline-bound work.

### Use less, not just cleaner
- **`schedule-cost`**: rank scheduled workflows by annual emissions (firing
  frequency times per-run), so the jobs to throttle are obvious.
- The carbon-adaptive **dial** (`carbon_tier`) right-sizes work to the grid.

### Coverage, honesty, and one-shot advice
- **`audit`**: scan every workflow and rank the shiftable schedules.
- **`score`**: grade the repo's scheduling posture A to F, with a shareable badge.
- **`advise`**: one prioritized action plan across every lever.
- **`worth-it`**: an honest gut check that says when a flat grid means scheduling
  barely helps, so you skip the complexity.

### Honest accounting (SCI aligned)
- **`co2_emitted_grams`**: the trustworthy figure, what the run actually produced,
  the Green Software Foundation SCI operational term.
- Configurable, measured energy (`job_energy_kwh`, or power and duration), plus
  opt-in PUE and embodied carbon for a fuller SCI.
- **`co2_avoided_total_grams`**: verifiable avoided emissions versus each zone's
  own typical hour, accrued over time.
- `co2_saved_grams` kept, but clearly labeled as a benchmark, not an offset claim,
  with the basis carried in `co2_saved_basis`.
- **`carbon-aware report`** emits an SCI JSON record for CSRD and GHG Protocol
  reporting.

### New action modes and automation
- **`mode: suggest`** opens a pull request that shifts a workflow's daily cron to
  the cleanest hour (cadence and minute preserved), turning advice into action.
- **`mode: digest`** posts a weekly impact issue; **`mode: doctor`** runs a
  one-click diagnostic of zones, tokens, and live data.
- Self-accumulating hour-of-day and weekday curves in the ledger, so the
  scheduling features work for any zone over time, not just where free history
  exists.
- Webhook notifications (Slack, Discord, generic), a live current-grid status
  badge, and cost-aware zone selection (`cost_weight`, `cost_price_map`).
- Optional WattTime marginal-emissions timing signal.

### Quality
- Full code review and simplification passes, plus end-to-end integration tests.
  683 tests, mypy and ruff clean.

