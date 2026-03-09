---
title: GHAGGA Code Review
date: 2026-03-09 05:57:31 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v2.5.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/JNZader/ghagga** to version **v2.5.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is an AI-powered code review tool that automates the process of analyzing pull request (PR) changes by combining static analysis tools, project memory, and language models (LLMs). It detects issues, provides intelligent suggestions, and posts structured review comments directly on PRs, while continuously learning from past reviews to improve over time. Key features include support for multiple LLM providers, integration with up to 15 static analysis tools, project memory for tracking decisions, and a dashboard for managing review history and settings.

## Release notes

## What's New

### TUI Polish
- Colored severity indicators (red/yellow/cyan) for findings
- Box-drawing summary at end of review
- Step progress `[n/m]` with spinners
- Section dividers between tool groups

### Output Formats
- New `--output json|sarif|markdown` flag (replaces `--format`)
- SARIF v2.1.0 output for GitHub Security tab integration

### AI Enhance (`--enhance`)
- Groups related findings by pattern
- Assigns AI priorities and suggests fixes
- Filters noise — opt-in, non-blocking

### Health Command (`ghagga health`)
- Project health scoring (0-100) with letter grades (A-F)
- Historical trend analysis (improving/declining/stable)
- Actionable recommendations grouped by category
- Per-project history stored locally

### Issue Export (`--issue`)
- `--issue new` creates a GitHub issue with review results
- `--issue <number>` adds a comment to an existing issue
- Auto-creates `ghagga-review` label — non-blocking on failure

## Bug Fixes

- **Dashboard ToolGrid invisible** — Server now initializes the tool registry at startup. The dashboard shows the full 15-tool toggle grid instead of the legacy 3-checkbox UI.
- **Webhook tool config dropped** — `enabledTools`/`disabledTools` are now properly forwarded when webhooks dispatch reviews.

## Deprecated

- `--format` flag — use `--output` instead (silent alias, still works)

## Stats

- **46 tasks** across 7 phases
- **92 new tests** (74 health + 18 issue)
- **2,859+ total tests** across the monorepo
- **23 documentation files** updated
