---
title: WAFtester — WAF Security Testing
date: 2026-03-07 13:22:08 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.55
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.55**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester Action integrates the WAFtester CLI into GitHub Actions workflows to test, fingerprint, and attempt to bypass Web Application Firewalls (WAFs). It automates WAF security assessments by scanning target URLs with over 2,800 payloads, identifying vulnerabilities, generating SARIF reports, and uploading results to GitHub's Code Scanning interface. This action streamlines WAF testing, providing actionable insights and bypass detection to enhance application security.

## Release notes

## WAFtester Action v1.0.55

Updates bundled CLI to **WAFtester 2.9.47**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.47) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

