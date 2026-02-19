---
title: WAFtester — WAF Security Testing
date: 2026-02-19 05:57:49 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.26
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.26**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the process of testing, fingerprinting, and bypassing Web Application Firewalls (WAFs) within CI/CD workflows. It performs comprehensive security assessments using an extensive payload library, vendor signatures, and tamper scripts, generating detailed SARIF reports that are uploaded to GitHub's Code Scanning for analysis. This action streamlines WAF security testing, helping developers identify vulnerabilities, evaluate WAF effectiveness, and implement remediations efficiently.

## Release notes

## WAFtester Action v1.0.26

Updates bundled CLI to **WAFtester 2.9.17**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.17) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

