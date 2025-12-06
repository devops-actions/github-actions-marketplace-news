---
title: GraphRisk Security Scan
date: 2025-12-06 05:20:46 +00:00
tags:
  - ioilmio
  - GitHub Actions
draft: false
repo: https://github.com/ioilmio/graphrisk-action
marketplace: https://github.com/marketplace/actions/graphrisk-security-scan
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ioilmio/graphrisk-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graphrisk-security-scan) to find the latest changes.

## Release notes

## 🚀 Initial Release - GraphRisk Security Action

This is the first official release of the GraphRisk GitHub Action. It enables automated dependency security scanning directly within your CI/CD pipeline.

### Key Features
*   **Automated Vulnerability Scanning**: Detect security risks in `npm` dependencies on every push.
*   **Async Architecture**: Non-blocking integration using efficient polling.
*   **SARIF Export**: Fully compatible with GitHub Security Code Scanning tab.
*   **Identity Locking**: Secure project identification based on Repository URL.

### Usage
```yaml
- name: GraphRisk Scan
  uses: ioilmio/graphrisk-action@v1.0.0
  with:
    api-key: ${{ secrets.GRAPHRISK_API_KEY }}
