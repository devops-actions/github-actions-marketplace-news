---
title: DLP Secret Scan
date: 2026-07-24 13:50:14 +00:00
tags:
  - SpiderCob
  - GitHub Actions
draft: false
repo: https://github.com/SpiderCob/dlp-scan-action
marketplace: https://github.com/marketplace/actions/dlp-secret-scan
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action uses dlp-patterns to scan a codebase for secrets, PII, and sensitive data. It helps detect over 50 categories of sensitive information and provides detailed reports on findings, including the number and severity levels. The action can be configured to focus only on API keys and credentials or to scan everything, including PII. Users can set thresholds for severities to trigger different actions in CI/CD pipelines.
---


Version updated for **https://github.com/SpiderCob/dlp-scan-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dlp-secret-scan) to find the latest changes.

## Action Summary

This GitHub Action uses dlp-patterns to scan a codebase for secrets, PII, and sensitive data. It helps detect over 50 categories of sensitive information and provides detailed reports on findings, including the number and severity levels. The action can be configured to focus only on API keys and credentials or to scan everything, including PII. Users can set thresholds for severities to trigger different actions in CI/CD pipelines.

## What's Changed

 Scan your codebase for secrets and PII in CI — zero configuration needed.

  - Detects 50+ categories: AWS/GitHub/Stripe/Slack keys, JWTs, private keys, DB connection strings, SSNs, credit cards, and more
  - Entropy gating and Luhn validation to minimise false positives
  - `secrets-only` mode for fast source code scanning
  - Configurable `fail-on` severity: critical, high, medium, low
  - Outputs `findings-count` and `highest-severity` for downstream steps

  Powered by [dlp-patterns](https://github.com/SpiderCob/dlp-patterns) — Apache 2.0
