---
title: WAFtester — WAF Security Testing
date: 2026-02-20 21:28:34 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.30
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.30**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the process of testing, fingerprinting, and bypassing Web Application Firewalls (WAFs) within CI/CD pipelines. It uses the WAFtester CLI to perform comprehensive scans with over 2,800 payloads, 197 vendor signatures, and 70+ tamper scripts, generating detailed SARIF reports for findings and uploading them to GitHub's Code Scanning tab. This action streamlines WAF security testing, enhances vulnerability detection, and provides actionable insights for remediation.

## Release notes

## WAFtester Action v1.0.30

Updates bundled CLI to **WAFtester 2.9.22**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.22) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

