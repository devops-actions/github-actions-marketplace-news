---
title: RSigma Detection-as-Code
date: 2026-06-27 06:25:46 +00:00
tags:
  - timescale
  - GitHub Actions
draft: false
repo: https://github.com/timescale/rsigma-action
marketplace: https://github.com/marketplace/actions/rsigma-detection-as-code
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/timescale/rsigma-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsigma-detection-as-code) to find the latest changes.

## What's Changed

First release of the rsigma Detection-as-Code composite action.

### Added

- A one-step Detection-as-Code CI gate wrapping `rsigma rule lint`, `rule validate --resolve-sources`, a merge-base fields-drift diff, `rule backtest`, and `rule coverage`.
- Verified binary acquisition: downloads the `rsigma-<target>` release archive, checks it against `SHA256SUMS`, and verifies the SLSA build-provenance attestation with `gh attestation verify`, with per-version-and-target caching. No insecure fallback.
- PR annotations generated from the stable `rule lint --output-format json` envelope via workflow commands, carrying the lint rule name as the annotation title.
- A sticky PR summary comment covering lint, validate, fields drift, the backtest expectations table, and ATT&CK coverage gaps, with links to the uploaded reports.
- JUnit XML and JSON backtest reports plus the ATT&CK Navigator layer uploaded as artifacts; action outputs for the resolved version, lint counts, backtest result, report paths, and fields-drift counts.
- Cross-platform support for the six rsigma release targets (Linux, macOS, Windows on amd64 and arm64).

Minimum supported rsigma version: `v0.17.0`.

Usage: `timescale/rsigma-action@v1`.
