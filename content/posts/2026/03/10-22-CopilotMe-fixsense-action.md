---
title: FixSense — AI Test Failure Analysis
date: 2026-03-10 22:04:50 +00:00
tags:
  - CopilotMe
  - GitHub Actions
draft: false
repo: https://github.com/CopilotMe/fixsense-action
marketplace: https://github.com/marketplace/actions/fixsense-ai-test-failure-analysis
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/CopilotMe/fixsense-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fixsense-ai-test-failure-analysis) to find the latest changes.

## Action Summary

FixSense is a GitHub Action that uses AI to analyze failing tests, identify root causes, classify issues as app bugs or test bugs, assess test flakiness, and suggest actionable fixes. It automates the process of debugging CI failures by providing detailed insights and posting the analysis as a comment on pull requests. This tool simplifies test failure troubleshooting, saving developers time and improving workflow efficiency.

## Release notes

## FixSense GitHub Action v1

Analyze CI test failures with AI directly in your workflow.

### Features
- **Root Cause Analysis** — AI explains why your test failed
- **App Bug vs Test Bug** — Distinguishes application bugs from test assertion errors
- **Flakiness Score** — 0-100 score for flaky test detection
- **Fix Suggestions** — Actionable steps to resolve failures
- **PR Comments** — Auto-updating analysis comment on your PR

### Quick Start

```yaml
- uses: CopilotMe/fixsense-action@v1
  with:
    api-key: ${{ secrets.FIXSENSE_API_KEY }}
```

### Supported Frameworks
Any framework producing JUnit XML: Playwright, Cypress, Jest, pytest, JUnit/TestNG
