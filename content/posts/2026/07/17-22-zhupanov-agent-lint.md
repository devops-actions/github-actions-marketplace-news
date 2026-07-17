---
title: Agent Lint
date: 2026-07-17 22:22:36 +00:00
tags:
  - zhupanov
  - GitHub Actions
draft: false
repo: https://github.com/zhupanov/agent-lint
marketplace: https://github.com/marketplace/actions/agent-lint
version: v3.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Agent Lint is a Rust-based linter designed to validate various configurations related to Claude Code, Cursor, and Codex. It checks for compliance with specific lint rules across multiple categories such as Manifest, Hooks, Skills, Agents, Prompt Content, Claude Rules, Output Styles, Settings, Hygiene, Email, User Config, MCP, Codex, Slack, Docs, Markdown Structure, Link/import integrity, and more. The action supports both Basic mode (for standard configuration validation) and Plugin mode (which runs the full rule suite when a `.claude-plugin/` directory is present). Agent Lint is configurable through `agent-lint.toml` to suppress or downgrade rules. It offers integration options via GitHub Actions and pre-commit, with cross-platform binaries available for macOS, Linux x86_64/aarch64, and macOS aarch64.
---


Version updated for **https://github.com/zhupanov/agent-lint** to version **v3.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-lint) to find the latest changes.

## Action Summary

Agent Lint is a Rust-based linter designed to validate various configurations related to Claude Code, Cursor, and Codex. It checks for compliance with specific lint rules across multiple categories such as Manifest, Hooks, Skills, Agents, Prompt Content, Claude Rules, Output Styles, Settings, Hygiene, Email, User Config, MCP, Codex, Slack, Docs, Markdown Structure, Link/import integrity, and more. The action supports both Basic mode (for standard configuration validation) and Plugin mode (which runs the full rule suite when a `.claude-plugin/` directory is present). Agent Lint is configurable through `agent-lint.toml` to suppress or downgrade rules. It offers integration options via GitHub Actions and pre-commit, with cross-platform binaries available for macOS, Linux x86_64/aarch64, and macOS aarch64.

## What's Changed

## What's Changed
* Document release admin merge procedure by @zhupanov in https://github.com/zhupanov/agent-lint/pull/188
* Add config-only per-file rule suppression overrides by @zhupanov in https://github.com/zhupanov/agent-lint/pull/190
* Release v3.0.1 by @zhupanov in https://github.com/zhupanov/agent-lint/pull/191


**Full Changelog**: https://github.com/zhupanov/agent-lint/compare/v3...v3.0.1
