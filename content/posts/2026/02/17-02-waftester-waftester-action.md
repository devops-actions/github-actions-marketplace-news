---
title: WAFtester — WAF Security Testing
date: 2026-02-17 02:56:08 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.17
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.17**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action automates the testing, fingerprinting, and bypassing of Web Application Firewalls (WAFs) within CI/CD workflows. It simplifies security assessments by running comprehensive scans using over 2,800 payloads, generating detailed SARIF reports, and integrating findings directly into GitHub's Security Code Scanning tab. This action streamlines the detection of vulnerabilities and misconfigurations in WAFs, providing actionable insights for secure application development.

## Release notes

## WAFtester Action v1.0.17

Updates bundled CLI to **WAFtester 2.9.7**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.7) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

