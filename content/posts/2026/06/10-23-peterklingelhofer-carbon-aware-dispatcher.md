---
title: Carbon-Aware Dispatcher
date: 2026-06-10 23:21:06 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.3.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## v1.3.1 — Reliability & accuracy

A focused reliability pass. No API changes, drop-in upgrade.

### Fixed
- **Curated presets no longer include geo-walled India zones.** Grid India's API is reachable only from Indian IPs, so it always failed from GitHub-hosted runners, leaving an error line on the most-used presets (`auto:green`, `auto:cleanest`, `auto:nearest`). India zones still work via explicit `grid_zones: 'IN-SO'` from a runner inside India.
- **Open-Meteo now uses the shared retry layer** (retries, HTTP 429 `Retry-After` handling, User-Agent), like every other provider. It was the last one calling the network directly with no retries, despite being the universal fallback.

### Improved
- Clearer `auto:detect` log message: it explains the fallback to `auto:cleanest` on GitHub-hosted runners (which don't expose a region) instead of reading like a failure. Documented in the README.
- Fixed a stale "17+ zones" claim in the zero-config example.

`@v1` now points here.

**Full changelog:** https://github.com/peterklingelhofer/carbon-aware-dispatcher/compare/v1.3.0...v1.3.1

