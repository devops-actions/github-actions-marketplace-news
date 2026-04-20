---
title: GuardRail - Next.js Security Scanner
date: 2026-04-20 14:29:55 +00:00
tags:
  - Montech-stack
  - GitHub Actions
draft: false
repo: https://github.com/Montech-stack/GuardRail
marketplace: https://github.com/marketplace/actions/guardrail-next-js-security-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Montech-stack/GuardRail** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardrail-next-js-security-scanner) to find the latest changes.

## Action Summary

GuardRail AI is a GitHub Action designed to automatically scan pull requests in Next.js projects for over 20 security vulnerabilities, such as hardcoded secrets, XSS, and injection risks. It leverages AI to provide clear explanations and actionable fix suggestions directly within PR comments, streamlining security reviews and addressing issues early in the development workflow. This tool integrates seamlessly into the CI/CD pipeline, helping teams enhance security without disrupting developer productivity.

## What's Changed

## 🛡️ GuardRail AI — Initial Release

AI-powered security scanning for Next.js applications. Finds vulnerabilities in every PR and uses Gemini AI to explain what's wrong and show you exactly how to fix it.

### What's included

- **30 security rules** across 5 categories: secrets, XSS, injection, auth, and data exposure
- **Gemini AI analysis** — plain-English explanations and specific fix suggestions per finding
- **Clean PR comments** — severity-grouped, no spam (updates existing comment)
- **Configurable** — set severity threshold and choose when to fail the PR check
- **Zero setup** — single-file dist, no install step in CI

### Quick Start

```yaml
- uses: Montech-stack/GuardRail@v1.0.0
  with:
    gemini-api-key: ${{ secrets.GEMINI_API_KEY }}

