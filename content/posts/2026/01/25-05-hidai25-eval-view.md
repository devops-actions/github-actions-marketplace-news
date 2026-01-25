---
title: EvalView - AI Agent Testing
date: 2026-01-25 05:43:36 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.2.3
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.2.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed to automate the testing and validation of AI agent behavior in CI/CD pipelines. It detects issues like tool changes, output inconsistencies, cost increases, and latency regressions by comparing current runs to a golden baseline, ensuring that regressions are caught before deployment. The tool provides capabilities such as built-in CI integration, tool call tracking, cost/latency monitoring, and interactive debugging, helping developers maintain reliable and efficient agent performance.

## Release notes

## What's New

### CLI Statistical Mode Flags
- **`--runs N` flag**: Run each test N times for statistical evaluation (pass@k metrics)
- **`--pass-rate` flag**: Set required pass rate for `--runs` mode (default: 0.8)
- **`--difficulty` filter**: Filter tests by difficulty level

### Difficulty Levels for Test Cases
- New `difficulty` field: `trivial`, `easy`, `medium`, `hard`, `expert`
- Console reporter shows difficulty column and breakdown

### Partial Credit for Sequence Evaluation
- Sequence scoring now uses partial credit instead of binary pass/fail
- Example: 3/5 expected steps completed = 60% score (not 0%)

### Fixed
- `--runs` CLI flag now properly implemented (was documented but missing)
