---
title: WAFtester — WAF Security Testing
date: 2026-03-03 13:34:14 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.52
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.52**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action integrates Web Application Firewall (WAF) testing into CI/CD workflows, enabling automated scanning, fingerprinting, and bypass testing of WAFs. It generates SARIF reports with security findings, uploads them to GitHub's Code Scanning for centralized visibility, and provides actionable insights for remediation. This action streamlines WAF security analysis, supports multiple scan types (e.g., bypass discovery, vendor detection), and automates report generation and integration.

## Release notes

## WAFtester Action v1.0.52

Updates bundled CLI to **WAFtester 2.9.44**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.44) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

