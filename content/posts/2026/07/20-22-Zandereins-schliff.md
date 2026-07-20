---
title: AGENTS.md Lint (Schliff)
date: 2026-07-20 22:53:05 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.6.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scoring of AGENTS.md files using Schliff, a tool that provides deterministic quality scores based on a versioned rubric. It helps ensure that AI instruction files remain consistent across different environments and tools by comparing them against an explicit evaluation standard. The action is designed to help identify and address issues in AI instruction files before they degrade over time, ensuring better performance and reliability of AI-driven tools.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.6.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

This GitHub Action automates the scoring of AGENTS.md files using Schliff, a tool that provides deterministic quality scores based on a versioned rubric. It helps ensure that AI instruction files remain consistent across different environments and tools by comparing them against an explicit evaluation standard. The action is designed to help identify and address issues in AI instruction files before they degrade over time, ensuring better performance and reliability of AI-driven tools.

## What's Changed


### Added
- **`check-commands`** — a deterministic CI gate that flags setup/build/test
  commands in an `AGENTS.md`/`CLAUDE.md` that don't resolve to a real make
  target, npm script, or path in the repo (exit 1 if dangling). Reuses the
  `operational_coverage` command extractor (no scoring impact); false-positive
  safe (unprovable absence → `unknown`, never `dangling`); live-hardened against
  ~70 real repos. schliff dogfoods it against its own `AGENTS.md` in CI. (#112)

### Fixed
- **`operational_coverage` object-first prohibitions**, badge temp-dir leak, and
  badge error caching (#110).


