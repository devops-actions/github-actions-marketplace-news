---
title: offsec-ai Security Scanner
date: 2026-08-29 22:11:58 +00:00
tags:
  - Htunn
  - GitHub Actions
draft: false
repo: https://github.com/Htunn/offsec-ai
marketplace: https://github.com/marketplace/actions/offsec-ai-security-scanner
version: v2.7.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `offsec-ai` is an offensive-security toolkit that combines classic network reconnaissance with modern AI/LLM security testing. It automates tasks such as scanning live AI/LLM endpoints, probing Model Context Protocol (MCP) servers, and performing full-stack infrastructure security assessments. The tool can also detect and report on secrets in responses from Postman collections.
---


Version updated for **https://github.com/Htunn/offsec-ai** to version **v2.7.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/offsec-ai-security-scanner) to find the latest changes.

## Action Summary

`offsec-ai` is an offensive-security toolkit that combines classic network reconnaissance with modern AI/LLM security testing. It automates tasks such as scanning live AI/LLM endpoints, probing Model Context Protocol (MCP) servers, and performing full-stack infrastructure security assessments. The tool can also detect and report on secrets in responses from Postman collections.

## What's Changed

- fix: bound pending task count in batch_check for hybrid identity and security headers (2041948)
- feat: add Postman Collection v2.x security scanner and attacker (v2.7.0) (e4668e8)
- ci: publish container to GitHub Container Registry (ghcr.io) (46d755c)
- fix: remove undefined OwaspScanResult string annotation in test_cli.py (F821) (8e750e3)
- feat: add A2A protocol security support (v2.6.0) (1b99a1b)
- fix: define OUTPUT_ARGS before use; -o was silently dropped (v2.5.9) (889e688)
- chore: replace all example.com targets with simpleportchecker.com (676106d)
- fix: --format not -f for ai-owasp-scan; use simpleportchecker target (v2.5.8) (504b6e8)
- fix: skip --timeout for ai-owasp-scan which does not support it (v2.5.7) (67a28cd)
- chore: use Gemini public endpoint in ai-owasp-scan job (6a13857)
