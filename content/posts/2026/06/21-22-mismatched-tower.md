---
title: Tower Health Check
date: 2026-06-21 22:22:34 +00:00
tags:
  - mismatched
  - GitHub Actions
draft: false
repo: https://github.com/mismatched/tower
marketplace: https://github.com/marketplace/actions/tower-health-check
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mismatched/tower** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tower-health-check) to find the latest changes.

## What's Changed

## What's new

### MCP Server (`tower serve`)
- Built-in Model Context Protocol server over stdio (zero SDK dependencies)
- 9 tools: `tower_ping`, `tower_dns`, `tower_tcp`, `tower_tls`, `tower_http`, `tower_trace`, `tower_https`, `tower_ws`, `tower_check`
- Actionable error messages with suggested fixes
- All tools annotated read-only, open-world

### Claude Code Skills Marketplace
- `.claude-plugin/marketplace.json` with two plugins
- `tower` — CLI usage, Go library reference, GitHub Actions templates
- `tower-mcp` — MCP server setup and tools reference
- Install: `claude plugin marketplace add github.com/mismatched/tower`

### Tower Template Skill
- GitHub Actions health check template skill
- Covers `tower-health.yml` and `tls-cert-expiry.yml`
- Cert expiry warning pattern via config file

### Install
```bash
go install github.com/mismatched/tower@v0.3.0
```

### Skills
```bash
claude plugin marketplace add github.com/mismatched/tower
claude plugin install tower
claude plugin install tower-mcp
```
