---
title: SecAI Scan
date: 2026-05-23 14:11:17 +00:00
tags:
  - own2pwn-fr
  - GitHub Actions
draft: false
repo: https://github.com/own2pwn-fr/secai-scan
marketplace: https://github.com/marketplace/actions/secai-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/own2pwn-fr/secai-scan** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secai-scan) to find the latest changes.

## Action Summary

The **SecAI Scan GitHub Action** automates application security scanning (SAST, SCA, IaC, and secrets detection) for repositories on every pull request and push. It identifies security vulnerabilities, generates SARIF reports for GitHub Code Scanning, and optionally posts a summary comment on pull requests while gating builds based on configurable severity thresholds. This action streamlines security assessments, ensuring consistent and actionable insights during the development process.

## What's Changed

First public release of the SecAI scan GitHub Action.

## What it does
Runs the SecAI AI-native AppSec scanner against your repository on every PR (or push). Produces a SARIF report you can upload to GitHub Code Scanning, posts a PR comment summary, and exits non-zero when findings exceed your severity threshold.

## Usage
```yaml
- uses: own2pwn-fr/secai-scan@v1
  with:
    api-key: \${{ secrets.SECAI_API_KEY }}
    fail-on-severity: high
```

See [README.md](https://github.com/own2pwn-fr/secai-scan#readme) for all inputs/outputs and [examples/](https://github.com/own2pwn-fr/secai-scan/tree/main/examples) for ready-to-use workflows.

## Requirements
A SecAI account with an API key. Sign up at https://www.own2pwn.fr/produits/ai-native-appsec — free tier (10 credits/month) is enough to try it out.
