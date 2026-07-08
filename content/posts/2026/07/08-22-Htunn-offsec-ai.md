---
title: offsec-ai Security Scanner
date: 2026-07-08 22:28:37 +00:00
tags:
  - Htunn
  - GitHub Actions
draft: false
repo: https://github.com/Htunn/offsec-ai
marketplace: https://github.com/marketplace/actions/offsec-ai-security-scanner
version: v2.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Htunn/offsec-ai** to version **v2.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/offsec-ai-security-scanner) to find the latest changes.

## What's Changed

- feat: add A2A protocol security support (v2.6.0) (1b99a1b)
- fix: define OUTPUT_ARGS before use; -o was silently dropped (v2.5.9) (889e688)
- chore: replace all example.com targets with simpleportchecker.com (676106d)
- fix: --format not -f for ai-owasp-scan; use simpleportchecker target (v2.5.8) (504b6e8)
- fix: skip --timeout for ai-owasp-scan which does not support it (v2.5.7) (67a28cd)
- chore: use Gemini public endpoint in ai-owasp-scan job (6a13857)
- fix: use case statement for format flag routing; no more grep substring match (v2.5.6) (1a8ac41)
- fix: per-command format flag; base64 report-json; bump to v2.5.5 (813d327)
- chore: update offsec-ai-action.yml to use v2.5.4 (c9ebc12)
- fix: switch action to GEMINI_API_KEY; remove secrets expression from action.yml (9bbe4cc)
