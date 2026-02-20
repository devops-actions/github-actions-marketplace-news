---
title: WAFtester — WAF Security Testing
date: 2026-02-20 13:21:55 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.29
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.29**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) within CI/CD workflows. It uses the WAFtester CLI to perform scans, generate detailed SARIF reports with security findings, and upload results to GitHub's Code Scanning dashboard, enabling developers to identify vulnerabilities and refine WAF configurations. This action simplifies security testing by supporting various scan types, tampering techniques, and vendor detection, while also providing actionable output for further remediation.

## Release notes

## WAFtester Action v1.0.29

Updates bundled CLI to **WAFtester 2.9.21**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.21) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

