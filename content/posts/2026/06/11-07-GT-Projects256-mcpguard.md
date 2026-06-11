---
title: mcpguard - MCP Security Scanner
date: 2026-06-11 07:27:48 +00:00
tags:
  - GT-Projects256
  - GitHub Actions
draft: false
repo: https://github.com/GT-Projects256/mcpguard
marketplace: https://github.com/marketplace/actions/mcpguard-mcp-security-scanner
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/GT-Projects256/mcpguard** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpguard-mcp-security-scanner) to find the latest changes.

## What's Changed

## GitHub Action

mcpguard is now available as a GitHub Action. Add MCP security scanning to any CI pipeline:

```yaml
- uses: GT-Projects256/mcpguard@v0.2.1
  with:
    fail-on: high
    sarif-upload: true
```

### Action inputs

| Input | Default | Description |
|-------|---------|-------------|
| `target` | `.` | File or directory to scan |
| `format` | `text` | Output: text, json, sarif |
| `severity` | `low` | Minimum severity to report |
| `fail-on` | `high` | Fail if findings at this level or above (`none` to never fail) |
| `sarif-upload` | `false` | Upload results to GitHub Code Scanning |
| `version` | `latest` | mcpguard version to install |

## Bugfixes

- Fixed `--version` reporting wrong version (was hardcoded to 0.1.0, now reads from package.json)
- Fixed SARIF output showing wrong tool version
- Fixed `--ci` flag not returning exit code 1 when findings exceeded threshold

## Full changelog

19 scanner rules, 30 tests, MIT license.

**Install:** `npm install -g @gtprojects/mcpguard && mcpguard scan`
