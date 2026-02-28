---
title: mcpman - MCP Server Manager
date: 2026-02-28 13:25:15 +00:00
tags:
  - tranhoangtu-it
  - GitHub Actions
draft: false
repo: https://github.com/tranhoangtu-it/mcpman
marketplace: https://github.com/marketplace/actions/mcpman-mcp-server-manager
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tranhoangtu-it/mcpman** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpman-mcp-server-manager) to find the latest changes.

## Action Summary

The `mcpman` GitHub Action is a command-line tool designed to manage Model Context Protocol (MCP) servers across various AI clients such as Claude Desktop, Cursor, VS Code, and Windsurf. It automates server installation, configuration synchronization, health diagnostics, security auditing, and encrypted secret management, ensuring a streamlined and secure setup process. With features like registry integration, lockfile tracking, plugin support, and real-time logging, it simplifies server lifecycle management for developers working with multiple AI environments.

## Release notes

# mcpman v1.0.0 🎉

**The package manager for MCP servers** — now production-ready.

## What's New in v1.0.0

### Production Polish
- MIT LICENSE file
- CONTRIBUTING.md, SECURITY.md, CHANGELOG.md
- Landing page website (`website/index.html`)
- Complete documentation update (all 8 docs files)
- CI/CD publish workflow with lint + test gates
- Fixed package.json ESM module path

### Full Feature Set (38 Commands)

**Core:** install, list, remove, update, upgrade
**Health:** doctor, test, validate, status, bench
**Config:** init, config, sync, diff, env, secrets
**Discovery:** search, info, why
**Authoring:** create, link, watch
**Organization:** profiles, group, pin, rollback
**Registry:** registry, plugin, completions
**Migration:** export, import, template
**Ops:** run, logs, notify, replay, alias

### Stats
- 38 CLI commands
- 457 tests passing
- 92 source files
- 4 AI clients supported (Claude Desktop, Cursor, VS Code, Windsurf)
- Zero runtime dependencies beyond citty, picocolors, nanospinner, @clack/prompts

## Install

```sh
npm install -g mcpman
# or
npx mcpman install @modelcontextprotocol/server-filesystem
```

**Full changelog:** https://github.com/tranhoangtu-it/mcpman/blob/main/CHANGELOG.md
