---
title: Beacon Analysis
date: 2026-03-26 22:03:27 +00:00
tags:
  - insideon
  - GitHub Actions
draft: false
repo: https://github.com/insideon/beacon
marketplace: https://github.com/marketplace/actions/beacon-analysis
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/insideon/beacon** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/beacon-analysis) to find the latest changes.

## Action Summary

Beacon is an AI-powered CLI and GitHub Action designed to analyze a codebase and provide actionable insights for software development. It automates the generation of prioritized task lists, strategic recommendations, and project overviews by leveraging data from git history, code structure, dependencies, and documentation. With support for multiple large language model (LLM) providers, caching, and JSON output, it streamlines project planning, task prioritization, and CI/CD integration.

## Release notes

## Beacon v1.0.0

AI-powered CLI that analyzes your codebase and tells you what to work on next.

### Features

- **Smart Analysis** — Understands your project's purpose, tech stack, and current state
- **Prioritized Todo Lists** — AI-generated tasks ranked by urgency and impact
- **5 LLM Providers** — Claude, OpenAI, Google Gemini, GitHub Copilot, OpenRouter
- **Easy Setup** — `beacon login` for interactive API key configuration
- **GitHub Action** — Automatic PR analysis with comment posting
- **Result Caching** — Skip redundant LLM calls with git-based cache
- **JSON Output** — Machine-readable output for CI/CD integration

### Quick Start

```bash
npm install -g beacon-ai
beacon login
beacon
```

### GitHub Action

```yaml
- uses: insideon/beacon@v1
  with:
    provider: claude
    api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

**Full Changelog**: https://github.com/insideon/beacon/commits/v1.0.0
