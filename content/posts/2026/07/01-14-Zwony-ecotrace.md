---
title: EcoTrace Carbon Gate
date: 2026-07-01 14:49:37 +00:00
tags:
  - Zwony
  - GitHub Actions
draft: false
repo: https://github.com/Zwony/ecotrace
marketplace: https://github.com/marketplace/actions/ecotrace-carbon-gate
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Zwony/ecotrace** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecotrace-carbon-gate) to find the latest changes.

## What's Changed

## EcoTrace v1.4.0

**Released:** 2026-07-01
**Type:** Feature Release — 6 new features, 4 bug fixes, zero breaking changes

---

## New Features

### Pausable Tracking API (pause() / 
esume())
Pause and resume carbon tracking to isolate your code's emissions from setup/teardown overhead.

\\\python
eco.pause()
expensive_setup_io()
eco.resume()
\\\

### Side-by-Side Run Comparisons (ecotrace diff)
Compare any two tracking runs directly from the terminal.

\\\ash
ecotrace diff abc123def456 789012abc345
ecotrace diff --latest
\\\

### Webhook Observability Exporter (WebhookExporter)
Stream carbon data to Slack, MS Teams, Discord, or any custom API in real-time.

\\\python
from ecotrace.exporters.webhook import WebhookExporter
WebhookExporter(eco, url='https://hooks.slack.com/services/...')
\\\

### Filtered CSV Exporting
Extended \ecotrace export\ with \--csv\ format and \--run\/\--func\ filters.

\\\ash
ecotrace export --csv -o filtered.csv --run abc123
\\\

### Log Maintenance (ecotrace clean & ecotrace reset)
\\\ash
ecotrace clean --keep-runs 10
ecotrace clean --before 2026-06-01
ecotrace reset --yes
\\\

---

## Bug Fixes

- **ML Callbacks Carbon Calculation:** Fixed duplicate carbon calculation in Keras and PyTorch callbacks
- **Empty GPU monitoring crash:** Guarded \EcoTraceML\ shutdown against empty GPU monitor histories
- **Async Hotspots:** Restored file path and line number tracking in \measure_async()\
- **CPU caching performance:** Eliminated duplicate \cpuinfo\ calls in \get_cpu_info\

---

## Install / Upgrade

\\\ash
pip install --upgrade ecotrace
\\\

Full documentation: https://github.com/Zwony/ecotrace
