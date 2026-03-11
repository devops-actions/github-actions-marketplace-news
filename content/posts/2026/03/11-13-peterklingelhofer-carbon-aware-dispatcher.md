---
title: Carbon-Aware Dispatcher
date: 2026-03-11 13:35:35 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## Action Summary

The Carbon-Aware Dispatcher GitHub Action optimizes CI/CD workflows by running jobs only when the energy grid is clean, based on real-time carbon intensity data. It automates the detection of cloud regions or zones and evaluates energy conditions, allowing users to schedule non-urgent tasks like ML training or media rendering during low-carbon periods. This action promotes sustainable computing by reducing the carbon footprint of development workflows.

## Release notes

## What's New

### Easier Setup
- **Zero-config default** — no inputs needed at all. Auto-detects cloud region (AWS/GCP/Azure) or checks 17+ zones worldwide.
- **One-liner setup** — `curl -fsSL .../setup.sh | bash` generates a workflow file in any repo
- **Reusable workflow** — other repos can call `uses: peterklingelhofer/carbon-aware-dispatcher/.github/workflows/carbon-check.yml@v1` with no files to copy
- **`auto:nearest` preset** — detects timezone and picks geographically closest zones
- **`auto:detect` preset** — reads AWS_REGION/GCP/Azure env vars and maps to grid zone

### More Providers & Coverage
- **Cloud auto-detection** — reverse mappings from 100+ AWS/GCP/Azure regions to grid zones
- **Time-of-day forecast heuristics** — India (solar peak), Brazil (hydro/thermal), South Africa even without API forecasts
- **Open-Meteo expanded** — 90+ zones with coordinates (up from 30)
- **ENTSO-E emission factors** — corrected for accurate EU intensity calculations

### Better CI/CD
- **uv replaces pip** — near-instant dependency installs via astral-sh/setup-uv
- **CI templates** — ready-to-use templates for GitLab CI, Bitbucket Pipelines, CircleCI
- **Cron schedule optimizer** — suggests optimal cron expression based on zone energy type
- **Carbon savings badge** — Shields.io badge URL output for READMEs

### Robustness
- **Fallback chains** — primary provider failure automatically falls back to Open-Meteo
- **Rate-limit-aware zone ordering** — free providers checked first
- **Upfront token warnings** — tells you exactly which tokens to add and what they unlock
- **Organization-wide carbon policy** — `.github/carbon-policy.yml` for team defaults
- **Queue strategy** — find optimal green window within a deadline across all zones

### Docs
- **README rewritten** — quickstart first, no redundancy


**Full Changelog**: https://github.com/peterklingelhofer/carbon-aware-dispatcher/commits/v1.1.0
