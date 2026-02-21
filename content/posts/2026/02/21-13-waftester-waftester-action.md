---
title: WAFtester — WAF Security Testing
date: 2026-02-21 13:31:50 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.32
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.32**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) within your CI/CD workflows. It helps identify vulnerabilities, assess WAF effectiveness, and generate detailed SARIF reports with findings such as vulnerabilities, severities, and remediation guidance, which are uploaded to GitHub's Code Scanning for visibility. This action supports various scan types, including vendor detection, bypass discovery, and API spec scanning, streamlining security assessments for web applications.

## Release notes

## WAFtester Action v1.0.32

Updates bundled CLI to **WAFtester 2.9.24**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.24) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

