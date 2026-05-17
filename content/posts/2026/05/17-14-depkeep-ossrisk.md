---
title: ossrisk
date: 2026-05-17 14:05:47 +00:00
tags:
  - depkeep
  - GitHub Actions
draft: false
repo: https://github.com/depkeep/ossrisk
marketplace: https://github.com/marketplace/actions/ossrisk
version: v0.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/depkeep/ossrisk** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossrisk) to find the latest changes.

## Action Summary

The `ossrisk` GitHub Action scans project dependencies to evaluate their long-term viability by identifying risks such as end-of-life (EOL) versions, known vulnerabilities (CVEs), and abandonment or staleness signals. It automates dependency risk assessment, providing detailed reports and allowing teams to integrate proactive checks into their CI pipelines. Key capabilities include customizable risk thresholds, support for npm and PyPI projects, and the ability to post risk analysis reports as comments on GitHub pull requests.

## What's Changed

## ossrisk v0.1.0

Scan your project's dependencies for long-term viability risk directly in CI.

### What it checks
- 🔴 **CVEs** - via OSV.dev batch API (no API key required)
- 🟠 **EOL versions** - via endoflife.date
- 🟡 **Abandoned packages** - no release in 24+ months
- 🔵 **Stale packages** - no release in 12–24 months
- **Outdated versions** - flags when a newer version is available

### Supported ecosystems
- `package.json` (npm)
- `requirements.txt` (PyPI)

### Usage

```yaml
- uses: depkeep/ossrisk@v1
  with:
    fail-on: high
    github-token: ${{ secrets.GITHUB_TOKEN }}
