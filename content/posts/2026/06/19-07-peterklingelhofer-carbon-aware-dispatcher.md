---
title: Carbon-Aware Dispatcher
date: 2026-06-19 07:05:01 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.9.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

# v1.9.0

The biggest release yet: carbon-aware scheduling grows from CI gating into a
platform that plugs into the large, deferrable workloads where the real energy
lives (ML training, batch inference, ETL, HPC), backed by a self-growing
community data commons and broader free grid coverage.

## Framework integrations (new)

Drop-in adapters that pause or route heavy work onto clean-grid windows. Each
uses a lazy/optional import, so the base install stays dependency-light; install
the matching extra to pull the framework (e.g. `pip install
carbon-aware-dispatcher[lightning]`).

- PyTorch Lightning: `CarbonAwareCallback` pauses at epoch boundaries while the grid is dirty
- Hugging Face Trainer: `CarbonAwareTrainerCallback`, the same gate for transformers
- Airflow: `CarbonAwareSensor` (use `mode="reschedule"` to free the worker slot)
- Prefect: `carbon_gate` task
- Dagster: `carbon_gate` op plus a clean-grid sensor
- Ray: `run_when_clean` gates the driver before submitting distributed work
- KEDA: a `ScaledJob` example pairing event scaling with a `wait-for-green` gate
- Slurm: a submit wrapper for HPC jobs
- Inference routing: `cleanest_endpoint` / `rank_endpoints` route requests to the cleanest region

See the Integrations table in the README for imports and runnable examples.

## Community curve commons (new)

Where no free historical API exists, an hour-of-day and day-of-week carbon curve
accumulates per zone and can be pooled across users, so any zone others have
sampled gains a profile even with no local history.

- `carbon-aware export-curves` exports your accumulated curves (anonymous sum/count cells only)
- `carbon-aware merge-curves` pools many files into one volume-weighted curve, with `--cap-n` to limit any single contributor's weight
- `carbon-aware validate-curves` gates contributions against malformed or implausible data
- `carbon-aware sample-curves` plus a scheduled workflow self-samples free-provider zones to grow coverage beyond GB
- `COMMUNITY_CURVE` accepts a local file or a published http(s) URL
- Both axes are covered: hour-of-day and day-of-week (weekend grids often run cleaner)
- The pool is published to an orphan `community-data` branch, so bot refreshes never touch `main`
- Seeded with real 14-day GB history on day one

## New free grid providers (no key required)

- EirGrid (Ireland)
- Energinet (Denmark, DK1/DK2)
- RTE (France, eco2mix; ENTSO-E token still preferred when set)
- Energy-Charts (~20 EU countries)
- CAMMESA (Argentina, intensity derived from the generation mix)

## Trust and accounting

- Green SLA monitoring: track and attest the share of runs that ran clean
- Provenance tagging: every reading carries `data_source` and `data_confidence`
- Marginal-first timing: `carbon-aware marginal` surfaces the WattTime marginal signal, the metric that reflects real avoided emissions

## Tooling

- Pre-commit hooks mirror CI exactly (ruff on commit, mypy + tests on push)
- mypy now type-checks `integrations/` in CI and the pre-commit push hook
- Optional-dependency extras for every framework adapter

## Upgrade notes

- No breaking changes. The new integrations and commons are additive.
- To use a published community pool, set
  `COMMUNITY_CURVE=https://raw.githubusercontent.com/peterklingelhofer/carbon-aware-dispatcher/community-data/community-curve.json`.
- The `community-data` branch is created automatically on the first run of the
  publish/sample workflows; no manual setup is needed beyond enabling read/write
  permissions for Actions.

