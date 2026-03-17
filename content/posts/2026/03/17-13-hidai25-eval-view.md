---
title: EvalView - AI Agent Testing
date: 2026-03-17 13:36:39 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed for regression testing AI agents by capturing their behavior, creating baselines, and detecting performance or functionality changes after updates. It automates the identification of silent regressions, such as altered tool paths or degraded output quality, ensuring agents maintain consistent reliability and accuracy. Key capabilities include behavior snapshotting, diffing against baselines, and continuous monitoring with detailed trace logs.

## Release notes

## What's New in v0.5.2

### Cold-Start Test Generation (`evalview generate`)
- **Production-grade test generation** from live agent probing — no manual YAML writing needed
- Interactive probe budget and model selection
- Multi-turn conversation tests generated as single cohesive test cases
- Domain-aware draft generation with coherence filtering
- `--synth-model` flag to override the synthesis model
- Real-time elapsed timer during probe runs
- Delta reporting: shows changes since last generation

### Improved Reports
- Model and token usage displayed in HTML reports
- Judge cost tracking surfaced in check reports
- Per-query model shown in trace cost breakdown
- Cleaner baseline metadata and timeline in check reports
- Turn-level details with clickable chevrons in multi-turn traces

### Better Onboarding (`evalview init`)
- Remembers active test suite for plain `snapshot` and `check`
- Auto-approves generated drafts with scoped snapshot guidance
- Detects local agents on `/execute` and `/health` endpoints
- Refreshes stale config when a live agent is detected

### Check Command Improvements
- Shows last baseline snapshot timestamp
- Auto-generates local HTML report on failures
- Streamlined regression demo flow

### Model Support
- GPT-5 family model support (gpt-5.4, gpt-5.4-mini)
- Interactive model selection from available providers

### Multi-Turn & Monitoring
- Multi-turn golden baselines with per-turn tool sequences
- Cost/latency spike alerts in monitor mode
- Batch edge-case expansion for test coverage

### Bug Fixes
- Fix multi-turn filter — different output is meaningful regardless of tools
- Fix probe progress for skipped follow-ups
- Predictable timing — 1 discovery, multi-turn counts against budget
- Always show agent model in run output
- Eliminate duplicate multi-turn tests
- Silence Ollama JSON fallback warnings in normal runs

### Docs
- Trimmed README from 1420 to 274 lines — details moved to dedicated docs
- Comparison docs and SEO content added
