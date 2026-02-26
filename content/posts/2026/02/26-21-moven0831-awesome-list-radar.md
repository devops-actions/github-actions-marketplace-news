---
title: Awesome List Radar
date: 2026-02-26 21:31:57 +00:00
tags:
  - moven0831
  - GitHub Actions
draft: false
repo: https://github.com/moven0831/awesome-list-radar
marketplace: https://github.com/marketplace/actions/awesome-list-radar
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/moven0831/awesome-list-radar** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/awesome-list-radar) to find the latest changes.

## Action Summary

The "Awesome List Radar" GitHub Action automates the discovery and suggestion of relevant content for awesome lists by scanning GitHub repositories, arXiv papers, and blog RSS feeds. It classifies, scores, and deduplicates candidates based on specified criteria, then creates GitHub Issues with metadata and reasoning for maintainer review. This action alleviates manual curation efforts, addressing problems like content decay and maintainer burnout by streamlining content triage and approval.

## Release notes

## Awesome List Radar v1.0.0

Automatically discover relevant content for awesome lists and file GitHub Issues for maintainer triage.

### Features

- **3 source collectors**: GitHub repository search, arXiv papers, RSS/blog feeds
- **Smart filtering**: keyword matching + URL deduplication against your existing list
- **LLM-powered classification**: Claude API scores relevance (0–100) with reasoning
- **Automated issue creation**: formatted issues with metadata, suggested entry, and LLM rationale
- **Dry-run mode**: preview candidates without creating issues
- **Config-driven**: single `radar.config.yml` controls everything

### Quick Start

```yaml
# .github/workflows/radar.yml
name: Awesome List Radar
on:
  schedule:
    - cron: '0 9 * * 1'  # Weekly on Monday
  workflow_dispatch:

jobs:
  radar:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: moven0831/awesome-list-radar@v1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
```

See [radar.config.example.yml](./radar.config.example.yml) for configuration options.
