---
title: MergeShield Risk Check
date: 2026-03-30 14:13:59 +00:00
tags:
  - mergeshield
  - GitHub Actions
draft: false
repo: https://github.com/mergeshield/risk-check
marketplace: https://github.com/marketplace/actions/mergeshield-risk-check
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mergeshield/risk-check** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mergeshield-risk-check) to find the latest changes.

## Action Summary

The "MergeShield Risk Check" GitHub Action automates AI-powered risk analysis for pull requests by evaluating code changes across six dimensions: complexity, security, blast radius, test coverage, breaking changes, and dependency risk. It provides actionable insights, such as a risk score, risk level, and a detailed summary, helping teams identify potential issues early and prevent risky merges. This action streamlines CI workflows by integrating automated risk assessment into the development process.

## What's Changed

## MergeShield Risk Check v1.0.0

AI-powered risk analysis for pull requests using Claude AI.

### Quick Start

```yaml
- uses: mergeshield/risk-check@v1
  with:
    api-key: ${{ secrets.MERGESHIELD_API_KEY }}
```

### Features

- **6-dimension risk scoring**: complexity, security, blast radius, test coverage, breaking changes, dependency risk
- **Configurable threshold**: set your own risk tolerance (default: 50)
- **CI status check**: `mergeshield/risk-check` commit status on your PR
- **Job summary**: detailed results table in the Actions tab
- **Non-blocking mode**: use as advisory without failing CI
- **Output forwarding**: use risk score/level in downstream workflow steps

### Links

- [Documentation](https://mergeshield.dev/docs?tab=action)
- [Dashboard](https://mergeshield.dev/dashboard)
- [Setup Guide](https://mergeshield.dev/guides/github-action)
