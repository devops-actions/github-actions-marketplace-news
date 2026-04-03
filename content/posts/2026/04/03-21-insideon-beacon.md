---
title: Beacon Analysis
date: 2026-04-03 21:45:15 +00:00
tags:
  - insideon
  - GitHub Actions
draft: false
repo: https://github.com/insideon/beacon
marketplace: https://github.com/marketplace/actions/beacon-analysis
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/insideon/beacon** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/beacon-analysis) to find the latest changes.

## Action Summary

Beacon is a GitHub Action and command-line tool designed for continuous and persistent analysis of codebases, leveraging AI to provide structured insights, prioritized task lists, health metrics, and strategic recommendations. Unlike session-based AI tools, Beacon operates unattended via CI/CD pipelines, schedules, or terminal commands, ensuring ongoing monitoring and tracking of project trends over time. It automates project management tasks, enhances team collaboration, and supports multiple data sources and AI models to maintain a shared, comprehensive understanding of codebase health and trajectory.

## What's Changed

## What's New

### Continuous Monitoring
- `beacon trend` — Health score trends over time with ASCII charts
- `beacon gate` — CI quality gate with configurable thresholds
- `beacon diff [base]` — Branch-to-branch health comparison
- `beacon schedule` — Daily reminder notifications (macOS/Linux)
- Dependency alerts via npm audit/outdated
- Automatic health snapshot recording per analysis

### Team Visibility
- `beacon sprint` — Git activity based sprint/standup reports
- `beacon webhook <url>` — Send results to Slack/Discord
- `beacon report` — Stakeholder-friendly project health reports
- `beacon multi-repo <paths>` — Analyze multiple repositories
- `beacon dashboard` — Local web UI with Chart.js visualizations
- `beacon issues` — Auto-create GitHub Issues from recommendations

### AI Tool Integration
- `beacon onboard` — Getting-started guide for new developers
- `beacon autopilot` — Dispatch tasks to Claude Code automatically

### Extensibility
- Custom prompt templates in `.beacon/prompts/`
- `beacon analyze --consensus` — Multi-model consensus analysis
- Ollama provider for local/offline LLM analysis
- `beacon monorepo` — Per-package analysis for monorepos
- Plugin system for custom collectors (`.beacon/plugins/`)

### Improvements
- User-friendly error messages (raw API errors hidden by default)
- 6 LLM providers: Claude, OpenAI, Google Gemini, GitHub Copilot, OpenRouter, Ollama
