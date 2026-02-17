---
title: WAFtester — WAF Security Testing
date: 2026-02-17 13:23:56 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.18
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.18**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action integrates automated Web Application Firewall (WAF) testing directly into CI/CD workflows. It identifies vulnerabilities by testing, fingerprinting, and attempting to bypass WAFs using over 2,800 payloads, vendor-specific signatures, and tamper scripts. The action generates SARIF reports for findings and uploads them to GitHub's Security Code Scanning tab, providing actionable insights for enhancing application security.

## Release notes

## WAFtester Action v1.0.18

Updates bundled CLI to **WAFtester 2.9.8**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.8) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

