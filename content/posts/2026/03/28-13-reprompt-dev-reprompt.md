---
title: reprompt lint
date: 2026-03-28 13:54:14 +00:00
tags:
  - reprompt-dev
  - GitHub Actions
draft: false
repo: https://github.com/reprompt-dev/reprompt
marketplace: https://github.com/marketplace/actions/reprompt-lint
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/reprompt-dev/reprompt** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reprompt-lint) to find the latest changes.

## Action Summary

The `re:prompt` GitHub Action is a tool designed to analyze and enhance prompts used with AI tools by providing scoring, optimization, and management capabilities. It helps users improve the effectiveness of their prompts by identifying issues such as inefficiencies, error loops, and sensitive data exposure, while offering features like prompt compression, conversation distillation, and detailed analytics. This action automates prompt evaluation and optimization, enabling users to streamline workflows and ensure higher-quality AI interactions.

## Release notes

## What's New

### Agent Workflow Analysis
`reprompt agent` detects error loops, tool call patterns, and session efficiency from existing session files. Zero config, zero instrumentation — reads your Claude Code and Codex CLI JSONL files directly.

### Codex CLI Adapter (9th adapter)
Full support for OpenAI Codex CLI sessions, including user/assistant turns, tool calls (shell + function), error detection with exit codes, and file path tracking.

### Sensitive Content Detection
`reprompt privacy --deep` scans stored prompts for API keys (OpenAI, AWS, GitHub, Anthropic, Stripe), JWT tokens, emails, IP addresses, passwords, env secrets, and home paths. All regex-based, zero network.

### CI Integration
- `reprompt lint --score-threshold N` — exit 1 if average prompt score below threshold
- `.pre-commit-hooks.yaml` — use reprompt as a pre-commit hook
- GitHub Action `score-threshold` input + `avg-score` output

### MCP Server Enhancements
8 tools now available: `score_prompt`, `check_privacy`, `search_prompts`, `get_prompt_library`, `get_best_prompts`, `get_trends`, `get_status`, `scan_sessions`

### Other
- Chrome Web Store extension wired to CLI with default extension ID
- Extension E2E tests (8 tests covering full pipeline)
- Claude Code adapter now extracts individual tool names
- 1,494 tests passing

## Install / Upgrade

```bash
pip install --upgrade reprompt-cli
```

**Full changelog:** [CHANGELOG.md](https://github.com/reprompt-dev/reprompt/blob/main/CHANGELOG.md)
