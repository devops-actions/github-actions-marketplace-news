---
title: WAFtester — WAF Security Testing
date: 2026-03-06 13:45:38 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.53
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.53**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypass analysis of Web Application Firewalls (WAFs) directly within GitHub workflows. It streamlines security assessments by running scans, generating detailed SARIF reports, and uploading findings to GitHub's Code Scanning feature, helping developers identify vulnerabilities and enhance WAF configurations. Key capabilities include support for multiple scan types, tamper scripts, WAF vendor detection, and API specification testing.

## Release notes

## WAFtester Action v1.0.53

Updates bundled CLI to **WAFtester 2.9.45**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.45) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

