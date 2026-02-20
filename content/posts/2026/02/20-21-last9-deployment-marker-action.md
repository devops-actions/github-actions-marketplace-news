---
title: Last9 Deployment Marker
date: 2026-02-20 21:29:07 +00:00
tags:
  - last9
  - GitHub Actions
draft: false
repo: https://github.com/last9/deployment-marker-action
marketplace: https://github.com/marketplace/actions/last9-deployment-marker
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/last9/deployment-marker-action** to version **v1.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/last9-deployment-marker) to find the latest changes.

## Action Summary

The Last9 Deployment Marker GitHub Action automates the process of sending deployment markers to Last9’s Change Events API, enabling seamless tracking of deployment events on observability dashboards. This action simplifies integration with GitHub workflows, captures rich metadata (e.g., commit info and actor details), and supports features like retries, secure logging, custom attributes, and multi-stage deployments. It solves the problem of correlating deployments with system performance metrics, enhancing visibility into deployment impacts.

## Release notes

## What's Changed

### Documentation

- Updated all usage examples to include required `env` input
- Added explicit `service_name` example for monorepos
- Updated inputs table with `env` (required) and `service_name` (optional)
- Added APM Dashboard Correlation section
- Added multi-environment and monorepo examples

No functional changes. Upgrade from v1.1.0 is optional.
