---
title: Remyx Outrider
date: 2026-06-15 23:23:35 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Highlights

- **Diff Risk Score gate** — a calibrated static-diff risk scorer (RADAR-style) routes generated PRs to `low` / `elevated` / `high` bands. High-risk diffs downgrade to an Issue rather than opening a PR; elevated stays as a draft PR for human review. Scoring weights, thresholds, and a calibration harness (`scripts/calibrate_diff_risk.py`) are all in-tree. See `docs/diff_risk_calibration_runs.md` for the baseline.
- **Cadence guard behavior change** — `rate-limit-days` no longer counts merged or closed artifacts toward the window. The gate now fires iff an **open** Remyx PR or Issue still exists on the target; engagement (merge or close) releases it immediately. The numeric value is preserved as an on/off bit (`> 0` enables, `<= 0` disables) so existing workflows keep working unchanged. New status code: `skipped_open_artifact` replaces `skipped_rate_limit` on new runs.
- **Run telemetry** — every run posts its outcome (status, paper, cost, diff risk, etc.) to the configured Remyx engine endpoint for centralized observability.
- **Selection-pass instrumentation** — exploration telemetry + `gh-graph` helper for better selection-quality measurement.

## Behavior changes worth noting

If you were relying on `rate-limit-days: 7` to enforce a hard weekly floor regardless of artifact state, that's no longer the behavior. The new semantic is: skip while unresolved Remyx work exists on the target, run as soon as the maintainer engages. See `action.yml` and `README.md` for full details.

## Included PRs

- #28 — Diff Risk Score (RADAR, calibration, harness)
- #37 — Selection-pass exploration telemetry + gh-graph
- #38 — Post-run telemetry endpoint
- #39 — Rate-limit gate: switch from time window to open-artifact check

The `v1` floating tag has been moved to v1.6.0.
