---
title: rekipedia — AI Codebase Wiki
date: 2026-05-30 14:13:20 +00:00
tags:
  - unrealandychan
  - GitHub Actions
draft: false
repo: https://github.com/unrealandychan/rekipedia
marketplace: https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki
version: v0.19.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/unrealandychan/rekipedia** to version **v0.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki) to find the latest changes.

## Action Summary

**Rekipedia** is a GitHub Action and CLI tool that transforms any code repository into an AI-ready knowledge base by indexing its structure, relationships, and content into a queryable SQLite store. It automates tasks such as providing natural-language Q&A with source citations, generating dynamic wikis, detecting architectural hotspots, and enabling seamless integration with AI tools via the Model Context Protocol (MCP). This action solves challenges like onboarding new developers, reducing AI hallucinations, and maintaining up-to-date documentation, streamlining codebase understanding and analysis.

## What's Changed

## What's new

### AI CLI tool integration
One command to configure all major AI coding assistants via MCP:

```bash
reki init --with-all-ai    # Copilot + Codex + Cursor in one step
reki init --with-copilot   # GitHub Copilot — .vscode/mcp.json
reki init --with-codex     # Codex CLI — .codex/instructions.md
reki init --with-cursor    # Cursor — .cursor/mcp.json + rules
```

### New MCP tools
- `list_wiki_pages` — enumerate all wiki pages
- `get_wiki_page` — read a specific wiki page by name

### Per-tool agent instructions
CLAUDE.md, AGENTS.md, and .github/copilot-instructions.md now each contain tool-specific MCP setup instructions.

See [CHANGELOG.md](https://github.com/unrealandychan/rekipedia/blob/main/CHANGELOG.md) for full details.
