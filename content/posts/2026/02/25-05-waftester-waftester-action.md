---
title: WAFtester — WAF Security Testing
date: 2026-02-25 05:54:52 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.38
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.38**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) directly within GitHub workflows. It identifies vulnerabilities by running comprehensive scans using over 2,800 payloads, generates detailed SARIF reports with security findings, and uploads these results to GitHub's Code Scanning feature for streamlined analysis. This action simplifies WAF assessment, enabling security teams to detect and address weaknesses efficiently within CI/CD pipelines.

## Release notes

## WAFtester Action v1.0.38

Updates bundled CLI to **WAFtester 2.9.30**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.30) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

