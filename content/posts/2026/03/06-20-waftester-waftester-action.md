---
title: WAFtester — WAF Security Testing
date: 2026-03-06 20:57:24 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.54
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.54**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action enables automated testing, fingerprinting, and bypass discovery of Web Application Firewalls (WAFs) directly within CI/CD workflows. It streamlines WAF security assessments by running scans, generating SARIF reports with detailed findings, and uploading results to GitHub's Code Scanning tab for actionable insights. This tool is designed to help developers identify vulnerabilities, evaluate WAF effectiveness, and automate security processes.

## Release notes

## WAFtester Action v1.0.54

Updates bundled CLI to **WAFtester 2.9.46**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.46) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

