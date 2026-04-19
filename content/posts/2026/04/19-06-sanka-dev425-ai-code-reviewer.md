---
title: Aegis AI Code Review Engine
date: 2026-04-19 06:44:28 +00:00
tags:
  - sanka-dev425
  - GitHub Actions
draft: false
repo: https://github.com/sanka-dev425/ai-code-reviewer
marketplace: https://github.com/marketplace/actions/aegis-ai-code-review-engine
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sanka-dev425/ai-code-reviewer** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-code-review-engine) to find the latest changes.

## Action Summary

The "AI Code Reviewer" GitHub Action automates the process of reviewing pull requests by leveraging Anthropic Claude to generate inline review comments directly on modified lines of code. It focuses on identifying critical issues, security concerns, and maintainability suggestions while providing configurable review depths, file skipping controls, and cost visibility. The action enhances CI/CD workflows by offering structured feedback, re-run safety, and summary reports with merge recommendations.

## What's Changed

**Aegis AI Code Review Engine is a production-ready GitHub Action for automated pull request reviews using Anthropic Claude.**

**What it does**
- Reviews only added lines from PR diffs
- Posts inline review comments on exact changed lines
- Supports review levels: quick, standard, deep
- Posts PR-level summary with verdict and issue counts
- Skips ignored files via glob patterns
- Limits files reviewed with configurable max_files

**Production safety features**
- Retry with exponential backoff for API rate limits
- Graceful handling of malformed AI JSON (skips file, does not crash run)
- Re-run safety by deleting old bot review comments
- Large PR guardrail (>50 files): prioritizes highest-addition files
- Token usage estimation logs for cost visibility
- 500ms pacing between file reviews to reduce API pressure

**Required inputs**
- github_token
- anthropic_api_key

**Recommended permissions**
- contents: read
- pull-requests: write

