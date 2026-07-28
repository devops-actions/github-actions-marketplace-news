---
title: Velvet status page
date: 2026-07-28 22:48:57 +00:00
tags:
  - phranck
  - GitHub Actions
draft: false
repo: https://github.com/phranck/velvet
marketplace: https://github.com/marketplace/actions/velvet-status-page
version: v1.8.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Velvet is an open-source tool that creates static status pages from validated versioned data. It separates the temporary monitoring inputs from the public status page, using Upptime's `.upptimerc.yml`, `history/`, and incident or maintenance Issues to build a Velvet snapshot. The snapshot is then used to generate the status page, social card, and SEO files. This approach ensures that the monitor remains independent of Upptime while providing a controlled boundary between inputs and Velvet's public contract.
---


Version updated for **https://github.com/phranck/velvet** to version **v1.8.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/velvet-status-page) to find the latest changes.

## Action Summary

Velvet is an open-source tool that creates static status pages from validated versioned data. It separates the temporary monitoring inputs from the public status page, using Upptime's `.upptimerc.yml`, `history/`, and incident or maintenance Issues to build a Velvet snapshot. The snapshot is then used to generate the status page, social card, and SEO files. This approach ensures that the monitor remains independent of Upptime while providing a controlled boundary between inputs and Velvet's public contract.

## What's Changed

## Version 1.8.0

### New features

- A stable Velvet-owned data layer now separates the public status page from
  its temporary monitoring source.
- Native response-time charts show smooth IPv4 and IPv6 history, unavailable
  periods, protocol-specific styles, and accessible hover details.
- The local theme configurator previews the real status page, imports and saves
  YAML, supports community themes, and keeps opened configuration data local.
- Themes now provide linked named colors, detailed overrides, configurable card
  geometry, chart styling, and complete page backgrounds.

### Improvements

- Status, response history, incidents, and maintenance are published as one
  validated snapshot before the page deploys.
- Fresh monitoring repositories display a safe unknown state until their first
  check completes.
- Incident and maintenance banners refresh while the page is open and retain
  the latest valid state during temporary network or data failures.
- GitHub project Pages paths, navigation, social cards, accessibility, mobile
  protocol layouts, and configurator behavior are more reliable.
- Generated sites now include Velvet's license and third-party notices, while
  monitoring data keeps its separate provenance and licensing status.

### Breaking data-source change and migration

- The browser no longer reads Upptime history or raw GitHub Issues. Existing
  deployments must first install the Velvet data-sync workflow so it publishes
  `status.json`, `response-times.json`, and `incidents.json` under
  `velvet-data/v1`.
- The Pages workflow must build with `phranck/velvet@v1` after a successful
  **Sync Velvet data** run. A push-only deploy can miss snapshot commits created
  by `GITHUB_TOKEN`, so the documented workflow uses `workflow_run`.
- Upptime remains the temporary monitor for v1. Keep its checks and history in
  place; the compatibility adapter, not the browser, reads those inputs.
- Preserve any existing monitoring-data license and attribution when publishing
  the normalized Velvet snapshot.

See the [deployment and migration guide](https://github.com/phranck/velvet/blob/v1.8.0/CONFIGURATION.md#compatibility-pipeline-and-velvet-v1-data)
for the complete workflow and recovery steps.

