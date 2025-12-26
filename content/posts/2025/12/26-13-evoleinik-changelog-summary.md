---
title: Changelog Summary
date: 2025-12-26 13:14:12 +00:00
tags:
  - evoleinik
  - GitHub Actions
draft: false
repo: https://github.com/evoleinik/changelog-summary
marketplace: https://github.com/marketplace/actions/changelog-summary
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/evoleinik/changelog-summary** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changelog-summary) to find the latest changes.

## Action Summary

This GitHub Action automates the generation of changelog summaries by analyzing git commits using AI and posting concise updates to Slack. It streamlines the process of tracking and communicating project changes, eliminating unnecessary details and focusing on key updates. The action offers customizable summary styles and supports multiple AI providers to adapt to different project needs.

## Release notes

# Changelog Summary

Summarize git commits with AI and post to Slack. No fluff, just what shipped.

## Features

- **Multiple LLM providers**: Gemini (default), OpenAI, Anthropic
- **Voice styles**: founder (direct, no-BS), developer (technical), marketing (user-facing)
- **Configurable**: time range, headers, project name
- **Slack formatting**: proper bold, bullets, clean output

## Usage

```yaml
- uses: evoleinik/changelog-summary@v1
  with:
    slack-webhook: ${{ secrets.SLACK_WEBHOOK_URL }}
    llm-provider: gemini
    llm-api-key: ${{ secrets.GEMINI_API_KEY }}
```

See [README](https://github.com/evoleinik/changelog-summary#readme) for full documentation.
