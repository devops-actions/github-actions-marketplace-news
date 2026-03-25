---
title: EvalView - AI Agent Testing
date: 2026-03-25 13:43:40 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to automate regression testing for AI agents, focusing on detecting silent behavior changes, tool call deviations, and quality regressions after updates. It provides capabilities to create baselines, track multi-turn execution traces, and pinpoint changes in agent behavior, ensuring reliable performance across model updates. This tool addresses gaps in traditional testing methods by offering specialized evaluations for scenarios like tool usage and multi-step workflows.

## Release notes

## What's New

### New Commands
- **`evalview watch`** — re-run regression checks on every file save with live scorecard ($0 in quick mode)
- **`evalview badge`** — shields.io status badge, auto-updates on every check
- **`evalview monitor --dashboard`** — live terminal dashboard with per-test history dots

### Native Adapters
- **Pydantic AI** (`pydantic-ai`) — calls `agent.run()` in-process, extracts tool calls from typed messages
- **CrewAI** (`crewai-native`) — calls `crew.kickoff()` in-process, captures tools via event bus

### Smart DX
- **Assertion wizard** — capture real traffic, get pre-configured assertions automatically
- **Auto-variant discovery** — `--statistical N --auto-variant` finds and saves non-deterministic paths
- **Budget circuit breaker** — `--budget 0.50` enforces spend limits mid-execution
- **Eval profiles** — `init` auto-detects agent type and configures evaluators

### Python API
- `gate()`, `gate_async()`, `gate_or_revert()` — programmatic regression checks
- OpenClaw integration with `check_and_decide()` for autonomous loops

### GitHub Action
- Auto PR comments, artifact uploads, version pinning — all in one step

### Documentation
- CrewAI, Pydantic AI, and OpenClaw integration guides
- README rewritten for conversion
- 26 community issues for contributors

---

**Full changelog:** https://github.com/hidai25/eval-view/blob/main/CHANGELOG.md

**Install:** `pip install evalview==0.5.5` or `curl -fsSL https://raw.githubusercontent.com/hidai25/eval-view/main/install.sh | bash`
