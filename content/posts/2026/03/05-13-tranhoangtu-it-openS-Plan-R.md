---
title: mcpman - MCP Server Manager
date: 2026-03-05 13:29:16 +00:00
tags:
  - tranhoangtu-it
  - GitHub Actions
draft: false
repo: https://github.com/tranhoangtu-it/openS-Plan-R
marketplace: https://github.com/marketplace/actions/mcpman-mcp-server-manager
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tranhoangtu-it/openS-Plan-R** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpman-mcp-server-manager) to find the latest changes.

## Action Summary

The `mcpman` GitHub Action is a CLI tool designed to install, manage, and inspect Model Context Protocol (MCP) servers across multiple AI clients, including popular tools like VS Code, Cursor, and Zed. It simplifies server management by automating tasks such as configuration synchronization, health checks, security audits, and updates, while providing advanced features like encrypted secrets storage, remote server connectivity, and team collaboration. Its comprehensive capabilities streamline MCP server deployment and maintenance without requiring additional daemons, making it a versatile solution for developers and teams.

## Release notes

## mcpman v2.0.0 — Major Ecosystem Release

### Highlights

- **10 AI Client Support** — Claude Desktop, Claude Code CLI, Cursor, VS Code, Windsurf, Roo Code, Codex CLI, OpenCode, Continue, Zed
- **mcpman as MCP Server** — `mcpman serve` exposes 8 tools for AI agents to manage MCP servers programmatically
- **Remote HTTP/SSE Transport** — Connect to remote MCP servers over HTTP and SSE
- **Registry & Publishing** — `mcpman publish` to share MCP servers with the community
- **Embedded Dashboard** — `mcpman dashboard` with REST API for monitoring
- **Team Collaboration** — `mcpman team` with RBAC (admin/maintainer/viewer), shared vault, audit logging
- **Skills & Agent Sync** — Universal `mcpman-skill.json` spec with format adapters for all 10 clients

### New Commands

| Command | Description |
|---------|-------------|
| `mcpman serve` | Run mcpman as MCP server (8 tools, `--allow-write` for destructive ops) |
| `mcpman publish` | Publish MCP server to community registry |
| `mcpman dashboard` | Launch embedded HTTP dashboard |
| `mcpman team` | Team collaboration (init, add, remove, sync, share, audit, list) |
| `mcpman skill` | Manage MCP server skills |
| `mcpman agent` | Agent config sync across clients |

### New Clients

| Client | Config Format |
|--------|---------------|
| Claude Code CLI | `~/.claude.json` (JSON) |
| Roo Code | `~/Library/Application Support/Code/User/globalStorage/rooveterinaryinc.roo-cline/settings/mcp_settings.json` |
| Codex CLI | `~/.codex/config.toml` (TOML) |
| OpenCode | `~/.config/opencode/config.toml` (TOML) |
| Continue | `~/.continue/config.json` |
| Zed | `~/.config/zed/settings.json` |

### Quality

- **1,123 tests** across 63 test files — all passing
- **132 TypeScript source files**, 56 core modules
- **Code reviewed** with all critical/high/medium issues resolved
- **No breaking changes** — fully backward compatible with v1.x configs

### Upgrade

```bash
npm install -g mcpman@2.0.0
```

Existing configs, lockfiles, and vault data are fully compatible — no migration needed.
