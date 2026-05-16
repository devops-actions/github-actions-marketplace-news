---
title: TrustBoost PII Scanner
date: 2026-05-16 13:57:20 +00:00
tags:
  - teodorofodocrispin-cmyk
  - GitHub Actions
draft: false
repo: https://github.com/teodorofodocrispin-cmyk/trustboost-action
marketplace: https://github.com/marketplace/actions/trustboost-pii-scanner
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/teodorofodocrispin-cmyk/trustboost-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustboost-pii-scanner) to find the latest changes.

## Action Summary

The TrustBoost PII Scanner GitHub Action scans repository files for Personally Identifiable Information (PII) to prevent sensitive data, such as passwords, API keys, or private user information, from being inadvertently committed to production. It automates the detection of various PII categories (e.g., CRITICAL, PRIVATE, SENSITIVE) across multiple file types and languages, providing insights like the number of files scanned and detected PII severity. This tool helps developers enhance data security and compliance by identifying and mitigating risks before deployment.

## What's Changed

## TrustBoost PII Scanner — GitHub Action v1.0

Scan your repository files for PII before commits reach production.

### What's included
- Automatic PII detection across **/*.txt, **/*.md, **/*.json, **/*.csv
- Multilingual support: EN, ES (LATAM), PT (BR/PT), DE, JA
- Fail-safe error handling — CRITICAL by default on API failure
- Configurable fail conditions: fail_on_critical, fail_on_private
- Zero setup — no API key, no payment required to start

### Quick start
Add to your `.github/workflows/pii-scan.yml`:

```yaml
- name: TrustBoost PII Scan
  uses: teodorofodocrispin-cmyk/trustboost-action@v1
  with:
    files: "**/*.txt,**/*.md,**/*.json"
    fail_on_critical: "true"
```

### Free usage
Uses TrustBoost preview endpoint — no wallet required for scanning.

Powered by [TrustBoost PII Sanitizer](https://github.com/teodorofodocrispin-cmyk/TrustBoost-PII-Sanitizer)
