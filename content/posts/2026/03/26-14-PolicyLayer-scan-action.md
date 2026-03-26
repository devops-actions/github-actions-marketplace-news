---
title: PolicyLayer Scan
date: 2026-03-26 14:01:35 +00:00
tags:
  - PolicyLayer
  - GitHub Actions
draft: false
repo: https://github.com/PolicyLayer/scan-action
marketplace: https://github.com/marketplace/actions/policylayer-scan
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PolicyLayer/scan-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/policylayer-scan) to find the latest changes.

## Action Summary

The **PolicyLayer Scan Action** is a GitHub Action designed to analyze MCP server configurations for security risks during pull requests. It identifies potential vulnerabilities by comparing the configuration against 115+ known servers and provides a detailed report via a comment on the PR. This action automates security reviews, ensures secrets remain private, and optionally enforces thresholds to prevent risky configurations from being merged.

## Release notes

Scan your MCP config for security risks on every PR.

## What it does

- Finds MCP server config in your repo
- Analyses against 115+ known servers, 2,500+ tools
- Posts a sticky PR comment with report URL and summary stats
- Optionally fails the check based on severity threshold

## Quick start

```yaml
- uses: PolicyLayer/scan-action@v1
  with:
    fail-on: high
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Privacy

Only server names and package identifiers are sent. API keys, tokens, env vars, and file paths are stripped before anything leaves the runner.

## Links

- [Example report](https://policylayer.com/scan/report/65545482-5d1d-472f-9fca-472ff1181d0d)
- [CLI: npx -y policylayer scan](https://www.npmjs.com/package/policylayer)
- [Intercept](https://github.com/PolicyLayer/Intercept)
