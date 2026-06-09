---
title: AgentTrust Security Scanner
date: 2026-06-09 22:54:39 +00:00
tags:
  - poteshniy
  - GitHub Actions
draft: false
repo: https://github.com/poteshniy/agenttrust-scan-action
marketplace: https://github.com/marketplace/actions/agenttrust-security-scanner
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/poteshniy/agenttrust-scan-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agenttrust-security-scanner) to find the latest changes.

## What's Changed

Scan SKILL.md files, MCP manifests, and source code for security threats in CI/CD.

## What's scanned
- SKILL.md — 40 rules (malware, prompt injection, credential theft, wallet attacks)
- MCP manifests — tool poisoning, shadowing, hidden unicode, rug pull
- Source code — .js, .ts, .py, .sh

## Usage
```yaml
- uses: poteshniy/agenttrust-scan-action@v1
  with:
    path: '.'
    fail_on: 'CRITICAL'
```

Free tier, no API keys required. Powered by [AgentTrust](https://agenttrust.uk).
