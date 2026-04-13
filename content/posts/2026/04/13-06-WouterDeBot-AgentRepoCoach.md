---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-04-13 06:27:03 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## Action Summary

AgentRepoCoach is a GitHub Action and CLI tool designed to evaluate a repository's readiness for autonomous AI agents by calculating a Codebase Agent Health (CAH) score. It automates the analysis of key aspects such as navigability, error handling, decision-making support, testing quality, and module hygiene, providing actionable insights for improvement. This tool ensures repositories are structured and documented in a way that facilitates seamless interaction with AI agents.

## What's Changed

# v0.1.0 — Initial Release

AgentRepoCoach scores your codebase on how ready it is for AI agents — and coaches you through the fixes.

## What it does

Scores a repository across 5 components (weights in parens):

- **Navigability** (25%) — `AGENTS.md`, codebase map, CLI manifest, root cleanliness
- **Error Quality** (25%) — exception subclassing, hint coverage, generic-exception dominance
- **Decision Queryability** (20%) — inline decision refs, ADR catalog presence
- **Test Quality** (15%) — helper file reuse, fixture dedup, naming convention
- **Module Hygiene** (15%) — internal visibility, god files, architecture doc freshness

## Usage

### As a GitHub Action

```yaml
- uses: WouterDeBot/agentrepocoach@v0.1.0
  with:
    repo-path: .
```

### As a CLI

```bash
pip install agentrepocoach
python -m agentrepocoach.cli --repo .
```

## What's supported

- C# (full)
- Python (full)
- TypeScript, Rust, Go (stubs — contribute!)

## Highlights

- Zero runtime dependencies (Python 3.11+ stdlib only, including `tomllib`)
- Composite Action (no Docker, no slow cold start)
- TOML config (`.agentrepocoach.toml`) with zero-config defaults
- JSON + Markdown output formats
- `fail-threshold` input for PR gating
- Output is safe to publish as a CI artifact (no source snippets)

## Feedback

This is v0.1.0. Feedback welcome via [GitHub Issues](https://github.com/WouterDeBot/agentrepocoach/issues)
and [Discussions](https://github.com/WouterDeBot/agentrepocoach/discussions).

## License

Apache 2.0

