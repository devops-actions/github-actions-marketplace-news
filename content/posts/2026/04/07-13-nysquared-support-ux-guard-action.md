---
title: Guard Action - AI Prompt Security
date: 2026-04-07 13:56:33 +00:00
tags:
  - nysquared-support-ux
  - GitHub Actions
draft: false
repo: https://github.com/nysquared-support-ux/guard-action
marketplace: https://github.com/marketplace/actions/guard-action-ai-prompt-security
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/nysquared-support-ux/guard-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guard-action-ai-prompt-security) to find the latest changes.

## Action Summary

This GitHub Action, **Guard Action - AI Prompt Security**, automatically scans AI prompts for security risks such as prompt injection attacks and sensitive personal information (PII) leakage within CI/CD pipelines. It performs offline, high-performance risk analysis using the `@ny-squared/guard` library, providing a risk score, threat type, and optional workflow failure if risks exceed a configurable threshold. This action helps developers secure AI systems by detecting vulnerabilities in prompts before deployment.

## What's Changed

## Guard Action v1.0.0 - AI Prompt Security for CI/CD

Detect prompt injection and PII in LLM prompts directly in your GitHub Actions workflow.

### Features
- Prompt injection detection
- PII scanning (emails, SSNs, credit cards)
- Jailbreak pattern detection
- Configurable risk threshold
- Zero external API calls, fully offline

### Quick Start
```yaml
- uses: nysquared-support-ux/guard-action@v1.0.0
  with:
    prompt: ${{ inputs.user_prompt }}

