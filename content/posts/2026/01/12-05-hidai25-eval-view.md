---
title: EvalView - AI Agent Testing
date: 2026-01-12 05:56:49 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.2.1
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.2.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to detect agent regressions, such as changes in tool usage, output quality, cost, or latency, during CI testing before deploying to production. It automates the comparison of current agent runs against a saved baseline to identify issues, ensuring reliability and preventing costly errors. Key capabilities include tracking performance metrics, regression detection, and local or API-based evaluation, making it a powerful tool for maintaining agent stability.

## Release notes

## What's New

### Chat Mode Enhancements
- **New slash commands**: `/run`, `/test`, `/adapters`, `/compare`
- **Natural language execution**: LLM suggests commands and prompts user to run them
- **`/compare` command**: Side-by-side regression detection between test runs

### Execution Tracing
- OpenTelemetry-style spans across all adapters
- LLM call tracking with token usage and costs
- Tool execution spans with timing

### Documentation
- Expanded Chat Mode section with slash commands table
- Added Natural Language Execution examples
- Updated Architecture section with tracing components

### Bug Fixes
- Fixed 20 mypy type errors in chat.py
- Corrected Evaluations attribute access
- Fixed variable shadowing issues

## Installation

```bash
pip install evalview==0.2.1
```

## Full Changelog
https://github.com/hidai25/eval-view/compare/v0.2.0...v0.2.1
