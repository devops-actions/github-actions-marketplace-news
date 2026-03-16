---
title: ShipScanner
date: 2026-03-16 21:41:00 +00:00
tags:
  - shipscanner
  - GitHub Actions
draft: false
repo: https://github.com/shipscanner/scan-action
marketplace: https://github.com/marketplace/actions/shipscanner
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/shipscanner/scan-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipscanner) to find the latest changes.

## Action Summary

ShipScanner Action is a GitHub Action that evaluates code quality by scanning repositories for security vulnerabilities, leaked secrets, outdated dependencies, and coding best practice violations, assigning a credit-style score (300–850) and grade. It automates the detection of problematic code and blocks merging if the score is below a configurable threshold, ensuring higher code quality and security standards. Key capabilities include generating detailed reports, CI integration, and customizable thresholds for passing scores.

## Release notes

## ShipScanner Action v1

Get a quality score (300–850) for your codebase on every push. Fail CI if the score drops below your threshold.

### Usage

```yaml
- uses: shipscanner/scan-action@v1
  with:
    score-threshold: 600
```

### Features

- Scans for security vulnerabilities, leaked secrets, outdated dependencies, code quality issues, and best practices
- Single score (300–850) with letter grade (A+ through F)
- Configurable pass/fail threshold
- Rich step summary with category breakdown
- Optional API key for private repos and higher rate limits
- Badge URL for your README

### Links

- [shipscanner.dev](https://shipscanner.dev) — Try it now
- [Documentation](https://github.com/shipscanner/scan-action#readme)
