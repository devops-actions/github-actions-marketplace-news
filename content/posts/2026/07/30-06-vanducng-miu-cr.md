---
title: MIU PR Review
date: 2026-07-30 06:44:02 +00:00
tags:
  - vanducng
  - GitHub Actions
draft: false
repo: https://github.com/vanducng/miu-cr
marketplace: https://github.com/marketplace/actions/miu-pr-review
version: v0.89.8
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary:**
  
  miu-cr is an AI code review tool that automates the process of reviewing staged changes locally, managing GitHub PRs with inline comments, and integrating with CI environments for automated reviews. It supports using ChatGPT or other LLMs through API keys and provides a CLI interface for review tasks. miu-cr also offers features like project rules, evaluation, and integration with MCP servers to enhance code quality and maintainability.
---


Version updated for **https://github.com/vanducng/miu-cr** to version **v0.89.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miu-pr-review) to find the latest changes.

## Action Summary

**Summary:**

miu-cr is an AI code review tool that automates the process of reviewing staged changes locally, managing GitHub PRs with inline comments, and integrating with CI environments for automated reviews. It supports using ChatGPT or other LLMs through API keys and provides a CLI interface for review tasks. miu-cr also offers features like project rules, evaluation, and integration with MCP servers to enhance code quality and maintainability.

## What's Changed

## miu-cr v0.89.8

AI code review for local changes and GitHub pull requests. Use it as a CLI, CI gate, or GitHub Action with your own LLM key.

### Install

```sh
curl -fsSL https://cr.miu.sh/install.sh | sh -s -- v0.89.8
brew install vanducng/tap/miucr
go install github.com/vanducng/miu-cr/cmd/miucr@v0.89.8
```

GitHub Action:

```yaml
permissions:
  pull-requests: write

steps:
  - uses: actions/checkout@v6
  - uses: vanducng/miu-cr@v0.89.8
    with:
      api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

### Common commands

```sh
miucr login --provider openai
miucr review --staged
miucr review --from main --to HEAD --gate high
miucr review --pr owner/repo#123 --post
miucr upgrade
```

Docs: https://cr.miu.sh
