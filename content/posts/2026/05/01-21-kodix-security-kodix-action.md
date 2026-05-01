---
title: Kodix Security Scanner
date: 2026-05-01 21:50:08 +00:00
tags:
  - kodix-security
  - GitHub Actions
draft: false
repo: https://github.com/kodix-security/kodix-action
marketplace: https://github.com/marketplace/actions/kodix-security-scanner
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kodix-security/kodix-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kodix-security-scanner) to find the latest changes.

## Action Summary

The **Kodix Security Scanner GitHub Action** is an AI-powered code security tool that leverages multiple AI models (OpenAI, Anthropic Claude, and Google Gemini) to identify vulnerabilities in your repository. By surfacing only issues confirmed by at least two models, it significantly reduces false positives while providing comprehensive scans of all text-based files. It automates vulnerability detection on every code push or manually triggered workflow, offering actionable insights, severity classifications, and detailed reports to streamline the security review process.

## What's Changed

## 🛡️ Kodix Security Action v1

AI-consensus code security scanner. Runs OpenAI, Claude, and Gemini on your code in parallel.
Only vulnerabilities confirmed by 2+ models are surfaced.

### Usage

```yaml
- uses: kodix-security/kodix-action@v1
  with:
    api_key: ${{ secrets.KODIX_API_KEY }}
```

### What's included
- Full and diff scan modes
- Live progress bars per AI model in the terminal
- Structured results table with severity breakdown
- PDF report URL and dashboard link as outputs
- Fails only on API errors (invalid key, insufficient tokens) — never on findings

