---
title: Vibe Clock
date: 2026-02-22 21:14:43 +00:00
tags:
  - dexhunter
  - GitHub Actions
draft: false
repo: https://github.com/dexhunter/vibe-clock
marketplace: https://github.com/marketplace/actions/vibe-clock
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dexhunter/vibe-clock** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibe-clock) to find the latest changes.

## Action Summary

**Summary:**  
The `vibe-clock` GitHub Action tracks and visualizes usage statistics for AI coding agents like Claude Code, Codex, and OpenCode. It automates the collection and sanitization of session metadata (e.g., token usage, activity logs) and generates customizable charts, which can be displayed on a GitHub profile. This helps developers monitor their coding habits and share insights while ensuring privacy by anonymizing sensitive data.

## Release notes

## What's New

- **Gemini CLI collector** — track sessions from `~/.gemini/` (token usage, models, messages)
- **Event-driven workflow dispatch** — `push` now triggers the profile repo render workflow directly via `workflow_dispatch`, eliminating cron coordination
- **Dynamic action version** — `action.yml` uses `github.action_ref` instead of a hardcoded version tag

## Supported Agents

- Claude Code
- Codex
- Gemini CLI (new)
- OpenCode
