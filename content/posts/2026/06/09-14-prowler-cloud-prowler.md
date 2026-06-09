---
title: Prowler Security Scan
date: 2026-06-09 14:49:08 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.29.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.29.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI

### 🐞 Fixed

- Finding drawer tabs now keep the active tab text and underline styling when tooltip state changes [(#11493)](https://github.com/prowler-cloud/prowler/pull/11493)

## API

### 🐞 Fixed

- API startup no longer crashes when Neo4j is unreachable, as the Neo4j driver now connects lazily on first use rather than during app initialization [(#11491)](https://github.com/prowler-cloud/prowler/pull/11491)

## SDK

### 🐞 Fixed

- GCP `logging_sink_created` now recognizes organization-level aggregated sinks with `includeChildren=True`, avoiding false failures for covered projects [(#11355)](https://github.com/prowler-cloud/prowler/pull/11355)
- GCP `logging_log_metric_filter_and_alert_*` checks now recognize organization-level aggregated sinks with `includeChildren=True`, no longer false-failing projects covered by a central bucket-scoped metric + alert [(#11488)](https://github.com/prowler-cloud/prowler/pull/11488)
- Jira integration no longer fails with `400 INVALID_INPUT` when a finding has empty fields [(#11474)](https://github.com/prowler-cloud/prowler/pull/11474)
- GCP `iam_service_account_unused` now passes disabled service accounts instead of failing them, since a disabled account cannot authenticate or be used [(#11467)](https://github.com/prowler-cloud/prowler/pull/11467)
