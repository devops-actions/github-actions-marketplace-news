---
title: PhantomGuard CLI
date: 2026-08-22 22:09:53 +00:00
tags:
  - Luckiii
  - GitHub Actions
draft: false
repo: https://github.com/Luckiii/phantomguard
marketplace: https://github.com/marketplace/actions/phantomguard-cli
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PhantomGuard is a tool designed to automatically detect AI-hallucinated package names before they are installed, using Python and JavaScript/TypeScript imports. It checks these imports against the PyPI or npm registry and flags any that do not exist, providing risk scores and explanations for each result. The known-hallucination database can be expanded over time through a self-fuzz pipeline, making it an MCP-compatible tool for managing package dependencies in a secure manner.
---


Version updated for **https://github.com/Luckiii/phantomguard** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/phantomguard-cli) to find the latest changes.

## Action Summary

PhantomGuard is a tool designed to automatically detect AI-hallucinated package names before they are installed, using Python and JavaScript/TypeScript imports. It checks these imports against the PyPI or npm registry and flags any that do not exist, providing risk scores and explanations for each result. The known-hallucination database can be expanded over time through a self-fuzz pipeline, making it an MCP-compatible tool for managing package dependencies in a secure manner.

## What's Changed

## PhantomGuard CLI v0.1.2

Catches AI-hallucinated ("slopsquatted") package names before they get installed.

### What's included
- `phantomguard scan <path>` — extracts Python and JS/TS imports, checks each
  against PyPI/npm, scores risk against a known-hallucination database, prints
  ALLOW/WARN/BLOCK. `pip install phantomguard-cli`
- Pre-commit hook (`.pre-commit-hooks.yaml`) — verified against a real repo
- GitHub Action (this repo, composite) — verified in a live Actions run
- MCP server (`phantomguard-mcp`) — exposes a `check_dependency` tool for
  MCP-compatible agents (Cursor, Windsurf, etc.)
- No API key required for any of the above — see README "Scope"

### Not yet included
- Self-fuzz pipeline exists but hasn't been run for real yet — the
  known-hallucination DB currently only has 3 manually-sourced seed entries
- LLM-based necessity/rationale layer was deliberately skipped (see README)

See the [README](https://github.com/Luckiii/phantomguard#readme) for full usage.

