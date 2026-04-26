---
title: AgentLint
date: 2026-04-26 06:14:40 +00:00
tags:
  - 0xmariowu
  - GitHub Actions
draft: false
repo: https://github.com/0xmariowu/AgentLint
marketplace: https://github.com/marketplace/actions/agentlint
version: v1.1.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/0xmariowu/AgentLint** to version **v1.1.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentlint) to find the latest changes.

## Action Summary

AgentLint is a linter designed to evaluate and improve the "harness" that surrounds AI coding agents, ensuring reliable and high-quality performance. It automates the assessment of configuration files, CI setups, and instruction layers through 51 core deterministic checks and optional AI-driven extended checks, identifying and addressing issues that can lead to suboptimal agent behavior. By scoring and providing actionable fixes for the agent's environment, it helps teams optimize their workflows and reduce errors in AI-assisted development.

## What's Changed

GitHub Copilot Code Review follow-up — three doc/comment fixes Copilot flagged on PR #196 that landed merged but unaddressed.

### You can now…

- **Read setup.sh's usage line and see all three supported languages** — `--lang <ts|python|node>` instead of `<ts|python>`. The runtime validator already accepted `node`; the comment now matches.
- **Get correct path pointers from `committer` error messages** — pointers no longer reference `configs/commitlint.config.cjs` / `configs/node/.gitignore` / `configs/ts/.gitignore` (template-only paths that don't exist after `agentlint setup` writes them to repo root). Errors now route users to the actual downstream files.
- **See the full enforcement story in `templates/configs/ship-boundary.md`** — the bullet covers both husky (TS / Node) and pre-commit (Python) paths instead of claiming `.husky/pre-commit` for everything.

No code-behavior change; doc/comment corrections only.

