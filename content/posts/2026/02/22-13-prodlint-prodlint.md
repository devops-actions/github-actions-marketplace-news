---
title: Prodlint
date: 2026-02-22 13:23:58 +00:00
tags:
  - prodlint
  - GitHub Actions
draft: false
repo: https://github.com/prodlint/prodlint
marketplace: https://github.com/marketplace/actions/prodlint
version: v0.8.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prodlint/prodlint** to version **v0.8.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prodlint) to find the latest changes.

## Action Summary

**prodlint** is a static analysis tool designed to assess whether vibe-coded applications are production-ready by identifying issues related to security, reliability, performance, and AI quality. It automates the detection of common vulnerabilities and bad practices, such as hardcoded secrets, unvalidated server actions, missing authentication, and hallucinated imports, ensuring that your code is robust and deployment-ready. With 52 built-in rules and a fast, zero-configuration setup, it provides actionable insights to bridge the gap between fast development and production-grade readiness.

## Release notes

## Prodlint v0.8.1

Production readiness for vibe-coded apps. 52 checks across security, reliability, performance, and AI quality.

### Changes
- Fix false positives in hydration-mismatch and dead-exports rules
- Positioning update: "Production Readiness" scoring throughout
- Updated MCP tool descriptions

### Usage

```yaml
- uses: prodlint/prodlint@v1
```

See [README](https://github.com/prodlint/prodlint#readme) for full docs.
