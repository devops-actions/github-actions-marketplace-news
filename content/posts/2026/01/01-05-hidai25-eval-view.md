---
title: EvalView - AI Agent Testing
date: 2026-01-01 05:35:04 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.1.8
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.1.8**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a regression testing framework for AI agents, designed to detect behavioral issues, such as tool changes, output differences, cost increases, or latency spikes, before deployment. It automates the process of comparing current agent performance against a golden baseline and integrates into CI pipelines to block problematic deployments. This ensures that agents maintain consistent performance and reliability while enabling fast iteration on prompts, models, and tools.

## Release notes

## What's New

### uv Support for Faster Development
- Added [uv](https://docs.astral.sh/uv/) as an optional package manager for 2x faster installs
- Both pip and uv are fully supported - use whichever you prefer
- New Makefile targets: `make install` (uv) and `make pip-install` (pip)

### CI Hardening
- Config file support for `ci.fail_on` and `ci.warn_on` 
- Exit code 2 for execution errors (network, timeout) vs exit code 1 for test failures
- Model/provider validation to catch mismatches early (e.g., llama3.2 + openai)

### LangGraph Example
- Added complete LangGraph example agent at `examples/langgraph/agent/`
- Includes ReAct agent with search and calculator tools

### UX Improvements
- Diverse quickstart test cases (division, weather, multi-tool, multiplication)
- Demo agent now supports division operations
- GitHub star CTA always shows after quickstart
- `evalview connect` shows actual paths instead of placeholders

### Bug Fixes
- Fixed `list` builtin being shadowed by CLI command
- Fixed demo agent division support

## Installation

```bash
pip install evalview==0.1.8
```

## Full Changelog
https://github.com/hidai25/eval-view/compare/v0.1.7...v0.1.8
