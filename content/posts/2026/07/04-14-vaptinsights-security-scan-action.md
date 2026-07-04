---
title: VAPT Insights Security Scan
date: 2026-07-04 14:24:12 +00:00
tags:
  - vaptinsights
  - GitHub Actions
draft: false
repo: https://github.com/vaptinsights/security-scan-action
marketplace: https://github.com/marketplace/actions/vapt-insights-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vaptinsights/security-scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vapt-insights-security-scan) to find the latest changes.

## What's Changed

## VAPT Insights Security Scan v1.0.0

Initial GitHub Marketplace release of the VAPT Insights Security Scan Action.

### Features

- Generates CycloneDX SBOMs using Trivy
- Uploads SBOM results securely to VAPT Insights
- Supports complete repository scans
- Supports nested application folders
- Supports matrix-based monorepo service scanning
- Uses commit SHA values for artifact versioning
- Supports custom artifact names and versions

### Usage

```yaml
- name: Run VAPT Insights Security Scan
  uses: vaptinsights/security-scan-action@v1
  with:
    api-key: ${{ secrets.VAPT_INSIGHTS_API_KEY }}
    scan-path: .
    artifact-name: ${{ github.event.repository.name }}
