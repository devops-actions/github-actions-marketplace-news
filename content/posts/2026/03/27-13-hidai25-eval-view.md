---
title: EvalView - AI Agent Testing
date: 2026-03-27 13:57:34 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.6.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to detect silent regressions in AI agents by analyzing changes in behavior, tool usage, and output quality. It automates regression testing, drift tracking, and classification of changes, helping developers identify and differentiate between provider/model updates and actual system issues. Additionally, it provides capabilities for auto-healing flaky failures and maintaining audit logs, ensuring consistent and reliable agent performance.

## Release notes

## What's new

- **Auto-heal engine** — `evalview check --heal` retries flaky tests, distinguishes non-determinism from real regressions, and self-heals output drift
- **Model change detection** — detects when the underlying model has changed and adjusts evaluation accordingly

## Install / Upgrade

```bash
pip install --upgrade evalview
```

**Full changelog:** https://github.com/hidai25/eval-view/blob/main/CHANGELOG.md
