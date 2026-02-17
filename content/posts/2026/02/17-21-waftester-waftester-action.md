---
title: WAFtester — WAF Security Testing
date: 2026-02-17 21:33:38 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.21
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.21**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action enables automated testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) directly within GitHub Actions workflows. It streamlines security testing by running scans against target URLs, generating SARIF reports with detailed findings, and uploading results to GitHub's Security tab for analysis. This action helps developers identify vulnerabilities, detect WAF vendor implementations, and assess WAF effectiveness across various attack scenarios.

## Release notes

## WAFtester Action v1.0.21

Updates bundled CLI to **WAFtester 2.9.11**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.11) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

