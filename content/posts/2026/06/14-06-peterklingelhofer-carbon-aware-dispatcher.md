---
title: Carbon-Aware Dispatcher
date: 2026-06-14 06:37:15 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.4.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.4.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## v1.4.1 — Mapping fix & internal hardening

A small correctness and maintainability release. No breaking changes; drop-in.

### Fixed
- **Kenya (`KE`) now maps to `af-south-1`** (Cape Town) on AWS. It was in the `auto:cleanest` preset but had no explicit AWS region, so it silently fell back to `us-east-1` (wrong continent). GCP/Azure were already correct.

### Internal
- **Single source of truth for emission factors.** Every provider now derives its gCO2eq/kWh values from one canonical `FUEL_FACTORS` table, so the numbers can't silently drift apart across providers. Values are unchanged.
- **Stronger region-mapping tests.** Cloud-region completeness now checks every curated preset against the actual mapping dicts (the previous check was effectively a no-op, which is how the Kenya gap slipped through), plus a forward/reverse round-trip guard so a new zone can't break `auto:detect`.
- Made the ONS Brazil forecast test time-deterministic, and expanded coverage of the queue/smart-wait orchestration and provider forecast paths (overall coverage 89% to 92%).

**Full changelog:** https://github.com/peterklingelhofer/carbon-aware-dispatcher/compare/v1.4.0...v1.4.1

