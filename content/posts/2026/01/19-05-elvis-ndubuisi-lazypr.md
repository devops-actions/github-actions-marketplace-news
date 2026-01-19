---
title: LazyPR AI PR Summary
date: 2026-01-19 05:54:56 +00:00
tags:
  - elvis-ndubuisi
  - GitHub Actions
draft: false
repo: https://github.com/elvis-ndubuisi/lazypr
marketplace: https://github.com/marketplace/actions/lazypr-ai-pr-summary
version: v1.0.4
dependentsNumber: "?"
---


Version updated for **https://github.com/elvis-ndubuisi/lazypr** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lazypr-ai-pr-summary) to find the latest changes.

## Action Summary

**lazypr** is an AI-powered GitHub Action designed to automate the generation of high-context Pull Request (PR) summaries, risk assessments, and changelogs by analyzing code diffs rather than relying solely on commit messages. It helps developers improve documentation quality, detect mismatched commit descriptions, and assess the impact of code changes with risk scoring. By integrating with multiple AI providers, it streamlines PR processes and enhances repository management efficiency.

## Release notes

## Changes

See [CHANGELOG.md](./CHANGELOG.md) for details.

## Installation

```yaml
steps:
  - uses: elvis-ndubuisi/lazypr@v1.0.4
    with:
      api_key: \${{ secrets.GEMINI_API_KEY }}
```

## Provider Defaults
- OpenAI: gpt-4-turbo (128K context)
- Anthropic: claude-sonnet-4-20250514 (200K context)
- Gemini: gemini-2.5-flash (1M context)
