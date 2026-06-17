---
title: Prowler Security Scan
date: 2026-06-17 22:51:38 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.30.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.30.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## API


### 🔄 Changed

- `scan-compliance-overviews` task now streams the findings aggregation and the requirement-row writes so it runs faster and its peak memory no longer grows with the number of regions and frameworks [(#11591)](https://github.com/prowler-cloud/prowler/pull/11591)



## SDK


### 🐞 Fixed

- GCP `logging_log_metric_filter_and_alert_*` checks now credit org-level aggregated sinks filtered to the Admin Activity audit stream [(#11575)](https://github.com/prowler-cloud/prowler/pull/11575)
- A broken built-in provider no longer aborts the CLI when a different provider was invoked [(#11618)](https://github.com/prowler-cloud/prowler/pull/11618)
- GCP organization scans with `--organization-id` no longer silently fall back to the credentials' host project when the Cloud Asset API call fails [(#11280)](https://github.com/prowler-cloud/prowler/pull/11280)




