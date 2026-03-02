---
title: WAFtester — WAF Security Testing
date: 2026-03-02 21:29:38 +00:00
tags:
  - waftester
  - GitHub Actions
draft: false
repo: https://github.com/waftester/waftester-action
marketplace: https://github.com/marketplace/actions/waftester-waf-security-testing
version: v1.0.51
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waftester/waftester-action** to version **v1.0.51**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waftester-waf-security-testing) to find the latest changes.

## Action Summary

The WAFtester GitHub Action enables automated security testing of Web Application Firewalls (WAFs) within CI/CD workflows. It tests, fingerprints, and attempts to bypass WAFs using a comprehensive suite of payloads, vendor signatures, and tamper scripts, generating detailed SARIF reports with findings that are automatically uploaded to GitHub's security scanning tools. This action simplifies WAF assessment, helps identify vulnerabilities, and provides actionable insights for improving application security.

## Release notes

## WAFtester Action v1.0.51

Updates bundled CLI to **WAFtester 2.9.43**.

See [CLI changelog](https://github.com/waftester/waftester/releases/tag/v2.9.43) for details.

### Usage

```yaml
- uses: waftester/waftester-action@v1
  with:
    target: https://app.example.com
```

