---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-04-25 13:22:55 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## Action Summary

AgentRepoCoach is a GitHub Action and CLI tool that evaluates a codebase's readiness for autonomous AI agents by computing a "Codebase Agent Health" (CAH) score, ranging from 0 to 100. It automates the analysis of five key areas—navigability, error quality, decision queryability, test quality, and module hygiene—identifying areas for improvement and enabling teams to maintain high standards for AI agent compatibility. The action can also enforce quality thresholds in CI pipelines, generating detailed reports in various formats for further insights.

## What's Changed

## [0.3.0] — 2026-04-23

### Added

- `compare` CLI subcommand for local score file comparison (base vs. PR JSON reports)
- PR bot module (`pr_bot.py`) for structured score comparison on pull requests
- `--compare` flag on the default `score` command for inline baseline comparison
- GitHub Actions workflow for automated PR score comments (`cah-score.yml`)
- GitHub Actions CI pipeline with Python 3.11/3.12/3.13 test matrix (`ci.yml`)
- CLI integration tests (`test_cli_compare.py`)

### Fixed

- Language detection priority when multiple adapters tie on confidence — tiebreaker now uses production file count to select the dominant language deterministically

### Security

- ReDoS regex safety guard (`regex_safety.py`) for user-configurable patterns — detects nested quantifiers before compilation to prevent catastrophic backtracking

---

Install: `pip install agentrepocoach==0.3.0`

Full changelog: https://github.com/WouterDeBot/AgentRepoCoach/compare/v0.2.0...v0.3.0
