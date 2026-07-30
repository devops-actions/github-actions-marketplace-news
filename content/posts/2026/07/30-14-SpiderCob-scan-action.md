---
title: SpiderCob Security Scan
date: 2026-07-30 14:34:29 +00:00
tags:
  - SpiderCob
  - GitHub Actions
draft: false
repo: https://github.com/SpiderCob/scan-action
marketplace: https://github.com/marketplace/actions/spidercob-security-scan
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is a zero-setup security scan that performs regex-based checks for hardcoded secrets, PII, and vulnerabilities locally on the GitHub runner. It does not require an account or API token and works immediately. The action can be configured to detect various types of security issues based on specified input parameters, such as scan type (code, DLP, both) and failure threshold. It provides inline annotations for security findings in pull requests and offers outputs indicating the total number of findings and highest severity found. The action is recommended for air-gapped environments or privacy-first practices due to its offline nature.
---


Version updated for **https://github.com/SpiderCob/scan-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spidercob-security-scan) to find the latest changes.

## Action Summary

This GitHub Action is a zero-setup security scan that performs regex-based checks for hardcoded secrets, PII, and vulnerabilities locally on the GitHub runner. It does not require an account or API token and works immediately. The action can be configured to detect various types of security issues based on specified input parameters, such as scan type (code, DLP, both) and failure threshold. It provides inline annotations for security findings in pull requests and offers outputs indicating the total number of findings and highest severity found. The action is recommended for air-gapped environments or privacy-first practices due to its offline nature.

## What's Changed

Scan your code for hardcoded secrets, PII, and vulnerabilities on every push and pull request — fully offline, zero configuration required.

  ## What it detects

  **Secrets & API keys**
  AWS, GitHub PAT, OpenAI, Anthropic, Stripe, Slack, Google, Twilio, SendGrid, database connection strings, JWT tokens, private keys, and more
  (40+ patterns)

  **PII**
  Social Security Numbers, credit card numbers, email addresses, phone numbers

  **Vulnerable code patterns**
  SQL injection (CWE-89), command injection (CWE-78), path traversal (CWE-22), eval injection (CWE-95), XSS (CWE-79), insecure deserialization
  (CWE-502), weak cryptography (CWE-327)

  ## Quick start

  ```yaml
  name: Security Scan
  on: [push, pull_request]

  jobs:
    spidercob:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: SpiderCob/scan-action@v1

  Highlights

  - Findings appear as inline annotations directly on the PR diff
  - Configurable fail threshold (CRITICAL, HIGH, MEDIUM, LOW)
  - Changed-files-only mode for faster PR checks
  - No data sent externally — runs entirely on the GitHub runner

  Powered by https://pypi.org/project/spidercob/ · https://spidercob.com
