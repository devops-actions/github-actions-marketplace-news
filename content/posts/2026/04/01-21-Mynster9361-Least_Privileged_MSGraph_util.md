---
title: LeastPrivilegedMSGraph Audit
date: 2026-04-01 21:56:18 +00:00
tags:
  - Mynster9361
  - GitHub Actions
draft: false
repo: https://github.com/Mynster9361/Least_Privileged_MSGraph_util
marketplace: https://github.com/marketplace/actions/leastprivilegedmsgraph-audit
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Mynster9361/Least_Privileged_MSGraph_util** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/leastprivilegedmsgraph-audit) to find the latest changes.

## Action Summary

The **LeastPrivilegedMSGraph Audit Action** automates the process of auditing Microsoft Graph API permissions within an Entra ID (Azure AD) tenant by identifying unused or excessive permissions assigned to service principals. It collects and analyzes permission assignments, activity telemetry, and throttling data, flags excessive permissions, and logs changes between runs, providing detailed reports and maintaining an audit trail through GitHub commits. This action helps enhance security by ensuring adherence to least privilege principles and streamlines permission management.

## What's Changed

## What's Changed in 0.1.0

* No changes

**Full Changelog**: https://github.com/Mynster9361/Least_Privileged_MSGraph_util/compare/...v0.1.0

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
    uses: $OWNER/$REPOSITORY@v$RESOLVED_VERSION
    with:
      tenantId: ${{ secrets.AZURE_TENANT_ID }}
      clientId: ${{ secrets.AZURE_CLIENT_ID }}
      logAnalyticsWorkspaceId: ${{ secrets.LOG_ANALYTICS_WORKSPACE_ID }}
      daysToQuery: 7
      enableGitCommit: true
```

