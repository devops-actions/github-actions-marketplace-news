---
title: GitHub Copilot CLI
date: 2025-11-28 21:09:06 +00:00
tags:
  - austenstone
  - GitHub Actions
draft: false
repo: https://github.com/austenstone/copilot-cli
marketplace: https://github.com/marketplace/actions/github-copilot-cli
version: v2.0
dependentsNumber: "3"
---


Version updated for **https://github.com/austenstone/copilot-cli** to version **v2.0**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-copilot-cli) to find the latest changes.

## Release notes

# Release v2.0

## 💥 Breaking Changes

### Token Configuration Overhaul
- **github-token → copilot-token** (renamed ;& now **required**)
  - The action now requires an explicit PAT with Copilot Requests permission
  - The default github.token does NOT have Copilot access — you must provide a PAT
  
- **New 
epo-token input** for separation of concerns
  - Use copilot-token for Copilot API access
  - Use repo-token for standard GitHub operations (push, PRs, etc.)
  - Defaults to github.token if not specified

### MCP Configuration Changes
- **MCP config no longer pre-configures GitHub MCP server by default**
  - In v1.0, the GitHub MCP server was always injected into your config
  - In v2.0, you must explicitly configure MCP servers or use enable-all-github-mcp-tools: true
  - This gives users full control over their MCP setup

---

### 🆕 New Inputs

| Input | Description |
|-------|-------------|
| allowed-tools | Comma-separated list of tools to explicitly allow |
| agent | Specify a custom agent to use |
| log-level | Configurable logging: none, error, warning, info, debug, all, default |
| enable-all-github-mcp-tools | Opt-in to enable all GitHub MCP tools |
| options | Pass arbitrary additional CLI flags |

### 🗑️ Removed Inputs

| Removed | Reason |
|---------|--------|
| github-mcp-toolsets | Replaced by explicit MCP configuration |
| no-color | Use options: --no-color instead |
| screen-reader | Use options: --screen-reader instead |
| show-banner | Use options: --banner instead |
| cache-cli | Removed for simplicity |

---

## 🛠️ Improvements

- Consolidated installation, configuration, and execution into a cleaner script
- Improved grouped logging for better CI readability
- Removed unnecessary git configuration step
- Prompt is now logged in its own group for visibility
- actions/setup-node upgraded from v4 → v6
- Boolean inputs now use proper true/false types

---

## 🔄 Migration Guide

**Before (v1.0):**
```yaml
- uses: austenstone/copilot-cli@v1
  with:
    github-token: (your PAT secret)
    prompt: Review this code
```

**After (v2.0):**
```yaml
- uses: austenstone/copilot-cli@v2
  with:
    copilot-token: (your COPILOT_TOKEN secret)
    prompt: Review this code
```

---

**Full Changelog:** https://github.com/austenstone/copilot-cli/compare/v1.0...v2.0
