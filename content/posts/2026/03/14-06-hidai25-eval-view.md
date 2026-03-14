---
title: EvalView - AI Agent Testing
date: 2026-03-14 06:05:06 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.5.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.5.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is a GitHub Action designed for regression testing and evaluation of AI agents, particularly tool-calling agents, in CI/CD workflows. It automates the generation of test suites, snapshots agent behavior as a golden baseline, and detects regressions in tool usage, output, cost, latency, and multi-turn interactions. By providing multi-layered testing and scoring, it ensures robust validation of AI agent performance before deployment.

## Release notes

## What's New

### Added
- **`evalview generate`** — draft test suite generation from agent probing or log imports, with approval gating and CI review flow
- **Approval workflow** — generated tests require explicit approval before becoming baselines
- **CI review comments** — `evalview ci comment` posts generation reports on PRs

### Fixed
- Python 3.9 compatibility: replaced `datetime.UTC` with `timezone.utc`
- Mypy type errors in generate command and test generation module
- Codebase refactor and cleanup across 71 files

**Full Changelog**: https://github.com/hidai25/eval-view/compare/v0.5.0...v0.5.1
