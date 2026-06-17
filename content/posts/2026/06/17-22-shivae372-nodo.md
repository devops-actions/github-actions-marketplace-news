---
title: Nodo code map
date: 2026-06-17 22:47:48 +00:00
tags:
  - shivae372
  - GitHub Actions
draft: false
repo: https://github.com/shivae372/nodo
marketplace: https://github.com/marketplace/actions/nodo-code-map
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/shivae372/nodo** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nodo-code-map) to find the latest changes.

## What's Changed

## nodo v1.2.1

### MCP, now zero-dependency
`nodo --mcp` ships a built-in pure-stdlib JSON-RPC stdio server (all 19 tools), used
automatically when the `mcp` SDK isn't installed — so nodo's MCP **connects with no
`pip install`**, matching nodo's zero-dependency ethos. The `mcp` SDK is still used
when present.

### Claude Code plugin
- The plugin now **registers the `nodo` MCP server** (`${CLAUDE_PLUGIN_ROOT}/nodo.py --mcp`),
  so it shows up connected alongside your other plugins.
- Install docs corrected to the real flow:
  ```text
  /marketplace          # enter:  shivae372/nodo
  /plugin install nodo@nodo
