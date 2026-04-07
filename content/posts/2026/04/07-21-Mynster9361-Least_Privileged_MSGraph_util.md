---
title: LeastPrivilegedMSGraph Audit
date: 2026-04-07 21:55:47 +00:00
tags:
  - Mynster9361
  - GitHub Actions
draft: false
repo: https://github.com/Mynster9361/Least_Privileged_MSGraph_util
marketplace: https://github.com/marketplace/actions/leastprivilegedmsgraph-audit
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Mynster9361/Least_Privileged_MSGraph_util** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/leastprivilegedmsgraph-audit) to find the latest changes.

## Action Summary

The **LeastPrivilegedMSGraph Audit Action** automates the auditing of Microsoft Graph permissions in an Entra ID tenant by analyzing assigned permissions against real usage data from Azure Log Analytics. It identifies unused or excessive permissions, tracks changes over time using Git history, and provides clear, actionable reports. This action helps enhance security by ensuring least-privilege access principles are consistently maintained and monitored.

## What's Changed

## What's Changed in 0.1.1

* Updated cmdlets to support v3 of leastprivilegedmsgraph

**Full Changelog**: https://github.com/Mynster9361/Least_Privileged_MSGraph_util/compare/v0.1.0...v0.1.1

## 🛡️ Installation & Setup
See the [Setup Guide](https://github.com/Mynster9361/Least_Privileged_MSGraph_util?tab=readme-ov-file#usage) for OIDC and Azure configuration.

```yaml
name: "LPM Permission Audit"

on:
  schedule:
    - cron: "0 6 * * 1"  # Every Monday at 06:00 UTC
  workflow_dispatch:     # Allow manual runs

permissions:
  id-token: write      # Required for OIDC
  contents: write      # Required to commit state files

jobs:
  audit:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v6
        with:
          fetch-depth: 0

  - name: Run LeastPrivilegedMSGraph Audit
    uses: Mynster9361/Least_Privileged_MSGraph_util@v0.1.1
    with:
      tenantId: ${{ secrets.AZURE_TENANT_ID }}
      clientId: ${{ secrets.AZURE_CLIENT_ID }}
      logAnalyticsWorkspaceId: ${{ secrets.LOG_ANALYTICS_WORKSPACE_ID }}
      daysToQuery: 7
      enableGitCommit: true
```

