---
title: WAFtester — WAF Security Testing
date: 2026-03-01 13:23:15 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.49
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.49**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) within GitHub workflows. It streamlines security assessments by running comprehensive scans with over 2,800 payloads, generating SARIF reports with detailed findings, and integrating results directly into GitHub's Code Scanning feature. This action simplifies WAF evaluation, helping teams identify vulnerabilities, bypasses, and vendor-specific WAF configurations efficiently.

## Release notes

## WAFtester Action v1.0.49

Updates bundled CLI to **WAFtester 2.9.41**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.41) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

