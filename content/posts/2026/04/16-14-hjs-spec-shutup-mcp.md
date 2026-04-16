---
title: shutup - MCP Tool Filter
date: 2026-04-16 14:14:16 +00:00
tags:
  - hjs-spec
  - GitHub Actions
draft: false
repo: https://github.com/hjs-spec/shutup-mcp
marketplace: https://github.com/marketplace/actions/shutup-mcp-tool-filter
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/hjs-spec/shutup-mcp** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shutup-mcp-tool-filter) to find the latest changes.

## Action Summary

`shutup` is a GitHub Action designed to streamline the interaction between MCP (Model Context Protocol) agents and servers by filtering and presenting only the most relevant tools based on the user's intent. It reduces token usage, improves tool selection accuracy, and accelerates response times by aggregating tool lists across multiple MCP servers, creating a dynamic, privacy-preserving index, and limiting visible tools to the top 3-5 matches. This action automates tool discovery, ensures efficient context management, and enhances the agent's decision-making process.

## What's Changed

## 🚀 Initial Release

`shutup` is now available on GitHub Marketplace as a GitHub Action.

### ✨ What it does
- Connects to all your MCP servers and builds a unified tool index
- Filters tools based on user intent using local embeddings
- Reduces token usage by up to **98%** and response time by **85%**
- Fully local and private (`sentence-transformers` or `Ollama`)

### 📦 Usage Example
```yaml
- name: Filter MCP tools
  id: shutup
  uses: hjs-foundation/shutup-mcp@v0.2.0
  with:
    config: './claude_desktop_config.json'
    intent: 'process excel files and validate data'
    top_k: '5'

**Full Changelog**: https://github.com/hjs-spec/shutup-mcp/commits/v0.2.0
