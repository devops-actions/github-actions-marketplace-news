---
title: Carbon-Aware Dispatcher
date: 2026-06-20 07:12:09 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.9.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.9.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

# v1.9.1

A maintenance release focused on efficiency, accuracy, and a few new free tools.
Everything here is additive and non-breaking.

## Efficiency (less energy per run)

- Multi-zone checks now run concurrently across a small thread pool, so a run
  takes roughly the slowest single zone instead of the sum of all of them. On
  GitHub-hosted runners that is a direct cut in billed, powered-on time.
- Connections are pooled through a shared session (keep-alive, reused TLS), and
  the per-request timeout drops from 30s to 10s so one hung host can't stall a
  check.
- Optional short-TTL disk cache for grid reads (`CARBON_CACHE_TTL`, `--cache-ttl`;
  on by default in the container and action). When an entry expires it
  revalidates with `If-None-Match` / `If-Modified-Since`, so a provider that
  supports ETags answers with a tiny `304` instead of resending the payload.
- The routine CI test matrix runs only the boundary Python versions (full matrix
  on release tags), and the dogfooding self-check no longer fires on doc-only PRs.

## Accuracy (better carbon decisions)

- The worldwide Open-Meteo estimate is now anchored to a per-zone annual-average
  intensity prior, so a structurally clean grid (nuclear France, hydro Norway)
  reads clean rather than defaulting to a fossil average, and coal grids are no
  longer understated.
- `worth-it` runs a one-way ANOVA F-test where raw history exists (GB), so a
  curve that only looks bumpy from a few noisy samples is called out as not worth
  shifting. `curve` adds a robust (median) cleanest hour and a 95% confidence band.
- `marginal-estimate` (new): a free estimate of marginal emissions for any EIA
  (US) zone, by regressing the change in emissions on the change in generation
  across recent hours, with an r-squared confidence. The metric that reflects
  real avoided emissions, no longer limited to WattTime's single free region.

## New free tools

- `carbon_scale` output and `carbon-aware scale`: a continuous autoscaling factor
  in `[scale_min, scale_max]` for KEDA/HPA/Ray/matrix sizing.
- `carbon-aware split`: emissions-optimal water-filling of N divisible shards
  across the cleanest regions, respecting optional per-zone capacity.
- Optimal-stopping `wait-for-green` (with `--energy-kwh`): runs now instead of
  blocking when idling for a cleaner forecast window would emit more than it saves.
- `carbon-aware forecast-accuracy`: grades our own green-window forecasts against
  reality over time and reports the bias to correct for.
- Escape-coal now routes any locatable origin to its geographically nearest clean
  grids when no curated mapping exists.

## Fixes

- The container image now bundles every first-party module the CLI uses, so
  `curve` / `worth-it` / `suggest-cron` / `audit` / `score` work inside Docker.

## Upgrade notes

- No breaking changes. New outputs and CLI commands are additive; the disk cache
  is opt-in outside the container/action (set `CARBON_CACHE_TTL=0` to disable).

