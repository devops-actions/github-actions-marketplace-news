---
title: EvalView - AI Agent Testing
date: 2026-03-23 21:41:37 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.4**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed for regression testing of AI agents by automating behavior snapshotting, change detection, and quality monitoring. It identifies regressions such as altered tool paths, degraded output quality, or silent errors after model updates by comparing execution traces against golden baselines. This tool streamlines testing workflows and ensures AI agents maintain consistent and reliable performance before deployment.

## Release notes

## What's New

### Python API
- `gate()` and `gate_async()` — programmatic regression checks, no CLI needed
- `gate(quick=True)` — skip LLM judge for free, sub-second checks
- `from evalview import gate, DiffStatus` — clean top-level imports
- Typed results: `GateResult`, `TestDiff`, `GateSummary`

### Terminal Dashboard
- Scorecard panel with colored health bar, streak tracker, and gauge
- Unicode sparkline trends from drift history
- Confidence scoring on each verdict (z-score based signal vs noise)
- Smart accept suggestions when changes look intentional

### HTML Report Dashboard
- SVG health gauge with pass/fail breakdown
- Chart.js trend lines for output similarity over time
- Confidence badges on diff rows
- Accept suggestion boxes with copy-paste commands

### OpenClaw Integration
- `evalview openclaw install` — install gate skill into claw workspace
- `evalview openclaw check` — run gate with auto-revert
- `gate_or_revert()` / `check_and_decide()` Python helpers
- Built-in SKILL.md for autonomous agent loops

### MCP Server
- `run_check` rewired to call `gate()` directly (no subprocess)
- Fallback to subprocess on error

### Other
- `evalview snapshot --preview` — dry-run before saving baselines
- `python -m evalview` support
- Centralized model defaults (`DEFAULT_MODELS`, `DEFAULT_JUDGE_MODEL`)
- Updated all defaults from gpt-4o-mini to gpt-5.4-mini
- 22 new API tests (1147 total passing)
- mypy clean (166 source files, 0 errors)

## Install

```bash
pip install evalview==0.5.4
```
