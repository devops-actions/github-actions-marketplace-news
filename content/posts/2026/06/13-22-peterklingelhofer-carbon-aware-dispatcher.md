---
title: Carbon-Aware Dispatcher
date: 2026-06-13 22:12:40 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.4.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## v1.4.0 — More clean grids, smarter diagnostics, faster tests

### Added
- **Canada** (`CA-ON`, `CA-AB`, `CA-QC`), keyless: Ontario via IESO, Alberta via AESO, Quebec as a fixed low-carbon estimate (~30 gCO2eq/kWh, ~99% hydro). Quebec and Ontario join the `auto:green` / `auto:cleanest` presets as standout clean destinations.
- **Taiwan** (`TW`), keyless via Taipower's real-time feed. Usable as an explicit zone (left out of curated presets, as Taiwan's grid is coal/LNG-heavy).
- **Actionable skip reasons.** When a zone is skipped, the job summary now says *why*: `auth failed`, `rate limited`, `network error`, `HTTP <code>`, or a missing token, instead of a flat "API error". Documented in Troubleshooting.

### Improved
- **Test suite runs ~100x faster** (75s → under 1s) by mocking the retry/backoff sleep. Faster feedback on every PR and across the CI matrix.
- **Open-Meteo now routes through the shared retry layer** (retries, 429 handling, User-Agent), completing the "every provider retries" story.
- `setup_wizard` recognizes the new providers; its registry is now checked against the dispatcher so it can't silently mislabel a zone.
- Added `SECURITY.md` and issue templates.

### Evaluated and rejected
- Swapping AEMO to OpenElectricity: a head-to-head matched 4/5 NEM zones within ~1%, but OpenElectricity lumps all coal together, understating brown-coal Victoria (732 vs the correct 929 gCO2eq/kWh). The current AEMO source is more accurate, so it stays.

### Verified
- 375 tests pass; ruff, format, and mypy all green. New endpoints confirmed live and keyless.

Drop-in upgrade, no breaking changes. `@v1` now points here.

**Full changelog:** https://github.com/peterklingelhofer/carbon-aware-dispatcher/compare/v1.3.1...v1.4.0

