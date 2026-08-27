---
title: Claude Canary
date: 2026-08-27 17:42:26 +00:00
tags:
  - SLP-DEV1
  - GitHub Actions
draft: false
repo: https://github.com/SLP-DEV1/claude-code-canary
marketplace: https://github.com/marketplace/actions/claude-canary
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Claude Code Canary automates deterministic regression testing and compatibility intelligence for Claude Code, solving common issues such as identifying regressions between different releases, verifying plugin compatibility, and ensuring CI runs without paying for redundant executions. It captures tool calls, tokens, duration, and reported cost to provide actionable insights into changes in Claude Code workflows.
---


Version updated for **https://github.com/SLP-DEV1/claude-code-canary** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-canary) to find the latest changes.

## Action Summary

Claude Code Canary automates deterministic regression testing and compatibility intelligence for Claude Code, solving common issues such as identifying regressions between different releases, verifying plugin compatibility, and ensuring CI runs without paying for redundant executions. It captures tool calls, tokens, duration, and reported cost to provide actionable insights into changes in Claude Code workflows.

## What's Changed

## Claude Canary v1.0.0 🐤

The first stable release of Claude Canary.

Catch Claude Code regressions before they reach your workflow.

### Highlights

- 🔎 Compare Claude Code releases deterministically
- 🧬 Automatically bisect the first bad Claude Code release
- 🧪 A/B test CLAUDE.md, settings, hooks, MCP servers and plugins
- 🎬 Record real Claude tasks and replay them from the exact Git commit
- 📦 Generate privacy-first reproduction bundles
- 🔌 Automatically discover Claude Code plugin components
- 🧩 Test plugins across multiple Claude Code releases
- 📊 Generate complete plugin compatibility matrices
- ⚙️ Native GitHub Action with CI summaries and artifacts
- 🔐 Signed historical Claude Code release verification
- 🖥️ Tested on Linux, Windows and macOS
- 🟢 Node.js 20, 22 and 24

### GitHub Action

```yaml
- uses: SLP-DEV1/claude-code-canary@v1.0.0
