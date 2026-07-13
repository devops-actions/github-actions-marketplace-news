---
title: Data Hogo Security Scan
date: 2026-07-13 00:15:09 +00:00
tags:
  - datahogo
  - GitHub Actions
draft: false
repo: https://github.com/datahogo/datahogo
marketplace: https://github.com/marketplace/actions/data-hogo-security-scan
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/datahogo/datahogo** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/data-hogo-security-scan) to find the latest changes.

## What's Changed

First public release of the Data Hogo GitHub Action.

Runs the open-source Data Hogo security scanner on your repository in CI —
300+ checks across JS/TS, Python, Go, Java, PHP, C#, mobile, and Supabase.
Everything runs locally in your runner; nothing is uploaded. Findings are
uploaded to your repository's Security tab as SARIF.

## Usage
```yaml
- uses: actions/checkout@v4
- uses: datahogo/datahogo@v0.1.0
  with:
    fail-on: high
