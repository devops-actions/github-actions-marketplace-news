---
title: oss-signal
date: 2026-06-21 14:55:33 +00:00
tags:
  - SalmonPlays
  - GitHub Actions
draft: false
repo: https://github.com/SalmonPlays/oss-signal
marketplace: https://github.com/marketplace/actions/oss-signal
version: v0.10.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SalmonPlays/oss-signal** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-signal) to find the latest changes.

## What's Changed

`oss-signal` v0.10.0 makes maintainer-readiness results safer to automate and
easier to compare over time.

## What Changed

- Added a funding-readiness rule and expanded the catalog to 17 rules with 113
  weighted points.
- Made GitHub URL audits honor committed `.oss-signal.json`,
  `.oss-signalrc.json`, and `oss-signal.config.json` files at the audited ref.
- Added baseline comparison and `--fail-on-regression` so CI can reject newly
  broken checks without imposing an arbitrary score threshold.
- Added CI-friendly `env` output and complete GitHub Action outputs for check
  counts and weighted scoring totals.
- Added structured priority, impact, category, suggested-file, and verification
  metadata to recommendations.
- Tightened numeric input validation and aligned the published JSON schemas with
  every field emitted by single-repository and inventory reports.
- Hardened release, package, workflow pinning, evidence verification, and
  reviewer-readiness checks.

## Upgrade Notes

The rule catalog now includes `funding`. Repositories without a public funding
destination can document the rule as not applicable in `.oss-signal.json`
instead of publishing an inactive funding link.

Existing JSON consumers should validate against the updated schemas. The
release adds fields but preserves the existing score, grade, checks, and
recommendations structure.

## Try It

```bash
npm exec --yes --package=oss-signal@0.10.0 -- oss-signal . --format summary
```

To compare against a saved JSON report:

```bash
npm exec --yes --package=oss-signal@0.10.0 -- oss-signal . \
  --baseline previous-report.json \
  --fail-on-regression
```

