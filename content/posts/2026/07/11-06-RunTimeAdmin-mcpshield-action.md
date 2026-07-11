---
title: MCPShield MCP Config Scan
date: 2026-07-11 06:11:36 +00:00
tags:
  - RunTimeAdmin
  - GitHub Actions
draft: false
repo: https://github.com/RunTimeAdmin/mcpshield-action
marketplace: https://github.com/marketplace/actions/mcpshield-mcp-config-scan
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/RunTimeAdmin/mcpshield-action** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpshield-mcp-config-scan) to find the latest changes.

## What's Changed

## Fixes
- `discover_files` no longer crashes when an **absolute path or glob** is passed to `--paths` (pathlib rejects non-relative glob patterns). Standard CI usage passes repo-relative paths and was unaffected.
