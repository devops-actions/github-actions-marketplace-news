---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-27 22:02:01 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.9.1
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v1.9.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action and CLI tool that automates the orchestration of multiple AI coding agents to collaboratively complete software development tasks. It decomposes high-level goals into smaller tasks, assigns them to various AI agents, runs tests, and integrates only successfully verified code, providing a reproducible and efficient process. By leveraging a deterministic scheduling approach and supporting a wide range of AI agents and models, Bernstein minimizes token usage, eliminates vendor lock-in, and simplifies AI-driven code generation.

## What's Changed

## v1.9.1

### Bug fixes
- **catalog:** split exact-role threshold from fuzzy threshold; preserve no-cap fallback
- **ci+security:** unblock catalog tests, sanitize approval logs, bump uuid
- **orchestrator:** move _EVENT_* constants before first use
- **catalog:** remove keyword description fallback for exact role matches
- **catalog:** reject exact-role matches below minimum score threshold

### Documentation
- **reference:** surface v1.9 commands in glossary, feature matrix, and whats-new
- **blog:** v1.9.0 product narrative — four commands that close the last-mile gap
- **readme:** swap v1.8.15 highlights for v1.9 (acp, autofix, vault, preview)
- **readme:** swap v1.8.15 highlights for v1.9 (acp, autofix, vault, preview)

### Other
- add opencode and aider to _VALID_CLIS

**Full changelog:** https://github.com/sipyourdrink-ltd/bernstein/compare/v1.9.0...v1.9.1

