---
title: Prodlint
date: 2026-02-26 21:31:18 +00:00
tags:
  - prodlint
  - GitHub Actions
draft: false
repo: https://github.com/prodlint/prodlint
marketplace: https://github.com/marketplace/actions/prodlint
version: v0.9.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prodlint/prodlint** to version **v0.9.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prodlint) to find the latest changes.

## Action Summary

**prodlint** is a static analysis GitHub Action designed to assess the production readiness of vibe-coded applications by identifying security, reliability, performance, and AI quality issues. It automates the detection of common production risks, such as hardcoded secrets, missing authentication, unvalidated server actions, and hallucinated imports, ensuring that code meets production standards beyond basic type-checking. The tool provides fast, zero-configuration scanning with 52 built-in rules across four critical categories, making it a robust solution for improving code quality and mitigating production risks.

## Release notes

### Improved Detection

- **secrets**: Stripe key detection now catches shorter keys (8+ chars after prefix, down from 20)
- **env-fallback-secret**: Detects connection string fallbacks (`postgres://`, `mongodb://`, `redis://`, etc.) regardless of env var name
- **ai-smells**: Console.log threshold lowered from 5 to 3 — catches smaller files with debug spam

### Bug Fixes

- Added web-scanner module for `--web` and MCP `scan-web` support
