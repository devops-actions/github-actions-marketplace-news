---
title: xray-pr
date: 2026-04-11 06:26:13 +00:00
tags:
  - xray-pr
  - GitHub Actions
draft: false
repo: https://github.com/xray-pr/xray-pr
marketplace: https://github.com/marketplace/actions/xray-pr
version: v0.2.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/xray-pr/xray-pr** to version **v0.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xray-pr) to find the latest changes.

## Action Summary

The **xray** GitHub Action automates the process of code review by analyzing pull request diffs to identify key changes and potential risks. It uses deterministic methods (git + regex) to extract facts about code modifications and presents them visually as a risk-colored architecture diagram, highlighting areas needing attention. This tool addresses the bottleneck of manual code reviews, saving time while providing clear insights into structural changes and their impact.

## What's Changed

## What's new

### Multi-provider LLM support
- `anthropic_api_key` — Anthropic direct (default: claude-sonnet-4-20250514)
- `openai_api_key` — OpenAI direct (default: gpt-4o)
- `openrouter_api_key` — OpenRouter (default: anthropic/claude-sonnet-4)
- `model` input to override the default for any provider

### Risk-colored architecture diagrams
- Red nodes: concurrency changes (goroutines, mutexes, channels)
- Orange nodes: error path changes
- Green nodes: new files
- Blue nodes: modified files
- Risk badge nodes (⚠) branch off files with specific risky changes

### Smarter output
- AI-generated one-line summary at the top
- File table sorted by risk (highest first), linked to PR diff
- Risk column explains what specifically needs attention
- Concurrency primitives deduplicated into summary counts
- Test functions filtered out of structural changes
- Dynamic color legend (only shows colors present in the PR)

### New language patterns
- C#, Ruby, Swift, Kotlin, PHP, Solidity (11 total)

### Bug fixes
- Fork PR security: proper API-based fork check
- issue_comment trigger: fetch base ref via API
- OpenRouter: correct base URL and model IDs
- Mermaid: escape special characters in node labels
