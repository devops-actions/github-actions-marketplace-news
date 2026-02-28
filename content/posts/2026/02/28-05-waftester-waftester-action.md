---
title: WAFtester — WAF Security Testing
date: 2026-02-28 05:35:28 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.47
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.47**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester Action integrates Web Application Firewall (WAF) testing into GitHub Actions workflows. It automates the testing, fingerprinting, and bypass detection of WAFs using over 2,800 payloads, vendor-specific signatures, and tamper scripts. The action generates a detailed SARIF report with findings, uploads it to GitHub's Code Scanning, and provides actionable insights to enhance security.

## Release notes

## WAFtester Action v1.0.47

Updates bundled CLI to **WAFtester 2.9.39**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.39) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

