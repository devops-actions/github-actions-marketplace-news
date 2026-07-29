---
title: mcpgrade
date: 2026-07-29 06:35:41 +00:00
tags:
  - TengByte
  - GitHub Actions
draft: false
repo: https://github.com/TengByte/mcpgrade
marketplace: https://github.com/marketplace/actions/mcpgrade
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  mcpgrade is a tool that assesses the usability and compliance of an AI agent's MCP server by evaluating various aspects such as descriptions, schema design, naming conventions, token costs, and consistency. It provides scores in seconds, allowing users to quickly identify areas for improvement and make necessary adjustments before deploying their servers.
---


Version updated for **https://github.com/TengByte/mcpgrade** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpgrade) to find the latest changes.

## Action Summary

mcpgrade is a tool that assesses the usability and compliance of an AI agent's MCP server by evaluating various aspects such as descriptions, schema design, naming conventions, token costs, and consistency. It provides scores in seconds, allowing users to quickly identify areas for improvement and make necessary adjustments before deploying their servers.

## What's Changed

mcpgrade is a "Lighthouse for MCP servers" — one command scores any Model Context Protocol server on whether an AI agent can actually use it: description quality, schema design, naming, and token cost.

Highlights:
- 24 static-analysis rules + LLM-powered evaluation
- Scores MCP servers on real agent-usability, not just spec compliance
- Run with a single command: npx mcpgrade <target>
- Now available as a GitHub Action — integrate quality checks into your CI

No API key required. MIT licensed.
