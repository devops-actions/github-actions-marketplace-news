---
title: Prowler Security Scan
date: 2026-06-12 22:57:07 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.30.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.30.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI


### 🐞 Fixed

- Threat Map no longer shows an empty map for accounts that only have Okta or Google Workspace scans [(#11542)](https://github.com/prowler-cloud/prowler/pull/11542)
- Compliance attributes requests now pass the selected scan, so multi-provider universal frameworks (e.g. CSA CCM) load the check IDs of the scan's provider and Azure/GCP requirement details show their findings instead of appearing empty [(#11546)](https://github.com/prowler-cloud/prowler/pull/11546)



## API


### 🐞 Fixed

- `compliance-overviews/attributes` now resolves the provider from the scan, so multi-provider universal frameworks (e.g. CSA CCM) return the check IDs of the scan's provider and Azure/GCP requirement details show their findings instead of appearing empty [(#11546)](https://github.com/prowler-cloud/prowler/pull/11546)
- Attack Paths: `drop_subgraph` now deletes relationships first and then nodes in batches, using less memory on Neo4j when clearing a dense provider graph [(#11557)](https://github.com/prowler-cloud/prowler/pull/11557)
- OCI scans now use API key credentials with the configured region instead of falling back to `/home/prowler/.oci/config` [(#11558)](https://github.com/prowler-cloud/prowler/pull/11558)




