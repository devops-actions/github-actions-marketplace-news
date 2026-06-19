---
title: ruribou Portfolio Metrics
date: 2026-06-19 15:05:23 +00:00
tags:
  - ruribou
  - GitHub Actions
draft: false
repo: https://github.com/ruribou/portfolio-metrics
marketplace: https://github.com/marketplace/actions/ruribou-portfolio-metrics
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ruribou/portfolio-metrics** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ruribou-portfolio-metrics) to find the latest changes.

## What's Changed

## ruribou Portfolio Metrics v1.0.0

First Marketplace release of **ruribou Portfolio Metrics**, a fork of
[lowlighter/metrics](https://github.com/lowlighter/metrics) — an infographics
generator with 40+ plugins and 300+ options to display stats about your GitHub account.

### Usage

```yaml
- uses: ruribou/portfolio-metrics@v1
  with:
    token: ${{ secrets.METRICS_TOKEN }}
    user: ruribou
```

Pin to `@v1` to follow the latest v1.x, or `@v1.0.0` to pin exactly.

### What's different from upstream

- 🐳 **Lightweight Docker image** — layers only this fork's `source/` on top of the
  upstream pre-built image, so builds finish in seconds instead of a full rebuild.
- 📦 **Pre-built image auto-publish** — every push to `main` and every version tag
  publishes an image to `ghcr.io/ruribou/portfolio-metrics`, which the action pulls
  at runtime for fast, build-free execution.
- ⚙️ **Marketplace-ready** — unique action name, branding, and versioned image tags
  (`v1`, `v1.0`, `v1.0.0`, `latest`).

### Notes

- Licensed under MIT, same as upstream.
- Full plugin and option reference: see the [README](https://github.com/ruribou/portfolio-metrics#readme).

