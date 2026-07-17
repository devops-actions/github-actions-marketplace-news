---
title: Code Guard PR Scanner
date: 2026-07-17 14:56:54 +00:00
tags:
  - mlawsonking
  - GitHub Actions
draft: false
repo: https://github.com/mlawsonking/code-guard-action
marketplace: https://github.com/marketplace/actions/code-guard-pr-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `mlawsonking/code-guard-action` scans code changes in pull requests for security bugs using a deterministic rule engine, flagging them inline on the diff and posting findings as annotations. It automates the process of catching high-frequency vulnerabilities such as command injection, SQL injection, SSRF, hardcoded secrets/API keys, weak crypto, unsafe deserialization, disabled TLS verification, and XSS. The action runs on added lines in each PR, checks them with a deterministic rule engine, and posts findings inline on the "Files changed" tab. It can be configured to fail the check based on the worst verdict level or not at all.
---


Version updated for **https://github.com/mlawsonking/code-guard-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-guard-pr-scanner) to find the latest changes.

## Action Summary

The GitHub Action `mlawsonking/code-guard-action` scans code changes in pull requests for security bugs using a deterministic rule engine, flagging them inline on the diff and posting findings as annotations. It automates the process of catching high-frequency vulnerabilities such as command injection, SQL injection, SSRF, hardcoded secrets/API keys, weak crypto, unsafe deserialization, disabled TLS verification, and XSS. The action runs on added lines in each PR, checks them with a deterministic rule engine, and posts findings inline on the "Files changed" tab. It can be configured to fail the check based on the worst verdict level or not at all.

## What's Changed

Deterministic security scan for pull requests. Code Guard checks the added lines of your PR diff and posts inline annotations on the exact lines, with a single pass / review / block verdict. No LLM, so the results are consistent and there is nothing to hallucinate.

**Checks:** command and code injection, SSRF, hardcoded secrets, weak crypto, unsafe deserialization, disabled TLS verification, and reflected XSS.

**Usage** - add `.github/workflows/code-guard.yml`:

```
name: Code Guard
on: pull_request
permissions:
  contents: read
  pull-requests: read
jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: mlawsonking/code-guard-action@v1
        with:
          fail-on: block   # block | review | never
```

**Inputs:** `fail-on` (default `block`), `api` (override only if you self-host).
**Outputs:** `verdict` (pass/review/block), `findings` (count).

Your code is not stored; the diff is scanned and discarded. Uses a free hosted API; self-host by pointing `api` at your own deployment.
