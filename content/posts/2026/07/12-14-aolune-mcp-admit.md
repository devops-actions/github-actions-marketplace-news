---
title: MCP Admit admission scan
date: 2026-07-12 14:52:01 +00:00
tags:
  - aolune
  - GitHub Actions
draft: false
repo: https://github.com/aolune/mcp-admit
marketplace: https://github.com/marketplace/actions/mcp-admit-admission-scan
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aolune/mcp-admit** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-admit-admission-scan) to find the latest changes.

## What's Changed

MCP Admit v0.3.0 is the first public release of a static-first,
no-exec-by-default admission gate for MCP servers and agent tools.

## Highlights

- Approval-aware admission decisions and explicit approval workflows
- Static scanning without executing MCP servers
- Toxic-flow composition detection
- MCP Registry metadata and supply-chain checks
- Risk scoring and explainable policy recommendations
- JSON, Markdown and SARIF reports
- Inventory, discovery, review packs and GitHub Actions integration

## Security properties

- Scanned MCP commands are not executed by default
- Secret values are redacted from reports
- Definition and capability drift require renewed approval
- Explicit approval cannot override deny or quarantine decisions

## Breaking changes

- Renamed `mcp-guard` to `mcp-admit`
- Renamed the `admission` command to `decide`
- Migrated schemas and baselines to the `mcp-admit.*` namespace

## Install from GitHub
```
pipx install "git+https://github.com/aolune/mcp-admit.git@v0.3.0"
```
Or run without installation:
```
uvx --from "git+https://github.com/aolune/mcp-admit.git@v0.3.0" mcp-admit --version
```
See [CHANGELOG.md](https://github.com/aolune/mcp-admit/blob/main/CHANGELOG.md) for the complete release notes.
