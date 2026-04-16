---
title: LyingDocs
date: 2026-04-16 14:13:56 +00:00
tags:
  - KMing-L
  - GitHub Actions
draft: false
repo: https://github.com/KMing-L/lying-docs
marketplace: https://github.com/marketplace/actions/lyingdocs
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KMing-L/lying-docs** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lyingdocs) to find the latest changes.

## Action Summary

LyingDocs is a GitHub Action designed to ensure alignment between a repository's documentation, code, and configuration by detecting discrepancies, such as outdated or misleading documentation, undocumented code paths, or mismatches between stated and actual behavior. It automates the auditing process using two agents: Hermes, which analyzes documentation to extract claims, and Argus, which verifies these claims against the actual codebase, producing a structured report of any misalignments. This helps maintain the repository's trustworthiness for both humans and AI systems, reducing "trust debt" and improving overall reliability.

## What's Changed

## What's New

### GitHub Actions CI Integration
- **New composite action** (`action.yml`) — add LyingDocs to any repo with `uses: KMing-L/lyingdocs@v1`
- **`lyingdocs init-ci` command** — generates a ready-to-commit `.github/workflows/lyingdocs.yml` with configurable triggers, backend, and authentication
- **Configurable triggers** — run on PRs, version tags, cron schedules, or manually via `--trigger pr,tag,manual,schedule`
- **Manual approval gate** — optional `--approval` flag adds a review step using GitHub Environment protection rules
- **Automatic PR comments** — posts findings as a PR comment with collapsible report; updates in place on re-runs (no spam)
- **Auto model selection** — picks `gpt-5.4` for OpenAI backends and `claude-sonnet-4-6` for Anthropic/Claude backends by default

### Anthropic Provider Support
- **Hermes and Argus now support Anthropic as an LLM provider** — set `provider = "anthropic"` in config or use `HERMES_PROVIDER` / `ARGUS_PROVIDER` env vars
- **Unified LLM abstraction** (`llm.py`) — OpenAI and Anthropic clients share a common `LLMResponse` / `ToolCall` interface with automatic message format conversion
- **Single-key Anthropic pipeline** — when using `backend: claude_code`, both Hermes and Argus use `ANTHROPIC_API_KEY` by default
- **Claude Code OAuth support** — Pro/Max subscribers can use `--claude-oauth` to run Argus on subscription quota instead of per-API-call billing
- **Custom base URLs** — both providers support custom endpoints for proxies and private deployments

### Documentation
- New guide: [GitHub Actions Integration](docs/guides/github-actions.md)
- New pages: [CLI Reference](docs/cli.md), [Configuration](docs/configuration.md), [Backends](docs/backends.md)
- Streamlined README — moved detailed docs to dedicated pages

## Upgrade

```bash
pip install --upgrade lyingdocs
```
