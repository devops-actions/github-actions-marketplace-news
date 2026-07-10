---
title: MCPShield MCP Config Scan
date: 2026-07-10 22:45:22 +00:00
tags:
  - RunTimeAdmin
  - GitHub Actions
draft: false
repo: https://github.com/RunTimeAdmin/mcpshield-action
marketplace: https://github.com/marketplace/actions/mcpshield-mcp-config-scan
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/RunTimeAdmin/mcpshield-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpshield-mcp-config-scan) to find the latest changes.

## What's Changed

## What's new
- **Hardcoded-secret detection**: flags embedded credentials in MCP config commands (AWS / GitHub / Slack / OpenAI / Anthropic / Google keys, private-key blocks, inline DB connection-string passwords), scored +30 as a typed finding. Only the credential *type* is surfaced, never the value. Parity with the MCPShield 0.4 engine.

```yaml
- uses: RunTimeAdmin/mcpshield-action@v1
  with:
    fail-on: high
```
