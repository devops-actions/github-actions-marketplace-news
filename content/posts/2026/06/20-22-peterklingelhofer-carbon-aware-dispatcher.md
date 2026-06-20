---
title: Carbon-Aware Dispatcher
date: 2026-06-20 22:08:52 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.9.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.9.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

# v1.9.2

A maintenance release: internal cleanup only. No behavior, output, or API
changes, and every existing test passes unchanged.

## Internal cleanup (DRY / readability)

- Providers now share a small set of helpers in `providers/base.py`
  (`green_result`, `mix_to_intensity`, `flatten_mix`) instead of each repeating
  the weighted-intensity math, the storage-exclusion rule, and the result-print
  tail. About a dozen providers shrank with byte-for-byte identical behavior.
- The CLI repo-scanning commands (`audit` / `schedule-cost` / `advise` /
  `score`) share zone-resolution, profile-or-bail, and workflow-cron helpers
  rather than re-globbing and re-parsing in each one; a leaked file handle in
  `advise` is fixed along the way.
- `ledger` and `carbon_curve` collapse their curve/weekday and sample-bucketing
  pairs into one parameterized helper each.
- Comments use ASCII `->` instead of the Unicode arrow, redundant comments were
  removed, and the setup wizard's zone counts are derived from the data rather
  than hardcoded (the old numbers had already drifted).

## Upgrade notes

- No breaking changes. Nothing to do on upgrade; this release only tidies the
  codebase.

