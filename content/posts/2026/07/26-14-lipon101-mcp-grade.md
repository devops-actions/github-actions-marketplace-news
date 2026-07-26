---
title: mcp-grade
date: 2026-07-26 14:51:37 +00:00
tags:
  - lipon101
  - GitHub Actions
draft: false
repo: https://github.com/lipon101/mcp-grade
marketplace: https://github.com/marketplace/actions/mcp-grade
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `mcp-grade` is an opinionated linter and Lighthouse tool for MCP (Microservice Cloud Platform) servers that automatically grades them on security, liveness, protocol, usability, and documentation. It provides a live protocol probing capability to verify server functionality and shares report cards in Markdown format. The action can be used as a CI gate to fail builds if servers do not meet specified quality standards.
---


Version updated for **https://github.com/lipon101/mcp-grade** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-grade) to find the latest changes.

## Action Summary

`mcp-grade` is an opinionated linter and Lighthouse tool for MCP (Microservice Cloud Platform) servers that automatically grades them on security, liveness, protocol, usability, and documentation. It provides a live protocol probing capability to verify server functionality and shares report cards in Markdown format. The action can be used as a CI gate to fail builds if servers do not meet specified quality standards.

## What's Changed

mcp-grade v1.0.0 — Lighthouse for MCP servers

Grade any MCP server A-F across 5 weighted categories (security, liveness, protocol, usability, docs). Optionally probe it live and rank the whole ecosystem on a leaderboard.

Key features:
- Static analysis with A-F grades, weights, and shareable report cards
- Live protocol probing (--live): real MCP handshake via the SDK
- GitHub Action: uses lipon101/mcp-grade@v1 as a CI quality gate
- --fail-under: fail the build below a grade threshold
- Machine-readable JSON output, Markdown report, shields badge
- Leaderboard engine + CLI: scan and rank many servers
- Deployable FastAPI dashboard for a public scoreboard
- Companion MCP server starter template (Use this template)

Install: pipx install mcp-grade
