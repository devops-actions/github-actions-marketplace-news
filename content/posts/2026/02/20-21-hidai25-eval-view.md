---
title: EvalView - AI Agent Testing
date: 2026-02-20 21:29:29 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.3.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action and CLI tool designed to detect regressions in AI agent behavior by comparing their current outputs against a saved baseline. It automates the process of identifying changes in prompt outputs, tool usage, and overall performance, helping developers confidently ensure their agents continue to function correctly after updates or modifications. Key features include regression detection, streak tracking, stability scoring, and support for non-deterministic agents with multi-reference baselines.

## Release notes

## What's New in 0.3

### 🤖 Claude Code MCP Integration
EvalView now runs as an MCP server inside Claude Code — test your agent without leaving the conversation.

```bash
claude mcp add --transport stdio evalview -- evalview mcp serve
cp CLAUDE.md.example CLAUDE.md
```

**7 MCP tools available:**

| Tool | What it does |
|------|-------------|
| `create_test` | Generate test cases from natural language |
| `run_snapshot` | Capture golden baseline |
| `run_check` | Detect regressions inline |
| `list_tests` | Show all baselines |
| `validate_skill` | Validate SKILL.md structure |
| `generate_skill_tests` | Auto-generate skill test suite |
| `run_skill_test` | Run Phase 1 (deterministic) + Phase 2 (rubric) |

### 📊 Telemetry Improvements
- Users now show as `EvalView-3f8a2b` instead of raw UUIDs in PostHog
- Session duration tracking (`session_duration_ms`)
- Set `EVALVIEW_DEV=1` to tag your own events for filtering

### 🐕 Dogfood Regression Testing
EvalView now tests itself using its own evaluation logic on every CI run.

### Bug Fixes
- Fixed PIPESTATUS CI bug (regression checks now correctly fail CI)
- Fixed deprecated `asyncio.get_event_loop()` → `get_running_loop()`
- Fixed silent failures in `--json` mode
- ANSI escape stripping improved in MCP output

## Upgrade
```bash
pip install --upgrade evalview
```
