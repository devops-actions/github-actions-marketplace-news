---
title: WAFtester — WAF Security Testing
date: 2026-02-28 21:17:03 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.48
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.48**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypass analysis of Web Application Firewalls (WAFs) within CI/CD workflows. It leverages the WAFtester CLI to perform comprehensive security scans using an extensive library of payloads, vendor signatures, and tamper scripts, generating detailed SARIF reports that are automatically uploaded to GitHub's Security Code Scanning tab. This action streamlines WAF security assessments, helping developers identify vulnerabilities, bypasses, and improvement opportunities in their web applications.

## Release notes

## WAFtester Action v1.0.48

Updates bundled CLI to **WAFtester 2.9.40**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.40) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

