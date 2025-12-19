---
title: EvalView - AI Agent Testing
date: 2025-12-19 21:09:37 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.1.5
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.1.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Release notes

## What's New

### Statistical Pass/Fail System
- **Variance-aware testing** - Run tests multiple times to get statistically significant results
- **Confidence levels** - Configure how confident you want to be in pass/fail decisions
- **CLI integration** - New `--runs` flag to run tests multiple times

```bash
# Run each test 5 times for statistical analysis
evalview run --runs 5
```

### LangGraph Adapter Fix
- Fixed adapter compatibility issues for better LangGraph integration

### Config-Free Runs
- Run `evalview run` without requiring a config file
- Automatically discovers test cases in the current directory

### Templates
- Added test case templates for common evaluation patterns
- Quick-start templates for tool calling, RAG, and multi-turn scenarios

### Node SDK License Fix
- Fixed license mismatch - now correctly uses Apache 2.0

### Documentation Improvements
- Added FAQ section and comparison table to README
- Added "Run examples directly" section
- Added design partners section
- Improved README structure for better clarity

## Full Changelog

https://github.com/hidai25/eval-view/compare/v0.1.4...v0.1.5
