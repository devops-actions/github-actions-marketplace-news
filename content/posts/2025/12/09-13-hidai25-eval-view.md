---
title: EvalView - AI Agent Testing
date: 2025-12-09 13:09:19 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.1.3
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.1.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Release notes

## EvalView GitHub Action

  Pytest-style testing framework for AI agents — now available as a GitHub Action.

  ### Usage

  ```yaml
  - uses: hidai25/eval-view@v0.1.3
    with:
      openai-api-key: ${{ secrets.OPENAI_API_KEY }}

  Features

  - 🧪 Test LangGraph, CrewAI, OpenAI, Anthropic, and custom agents
  - ⚡ Parallel test execution (4 workers by default)
  - 📊 Auto-generated HTML reports
  - 💬 PR comments with test results
  - 🤖 LLM-as-judge output evaluation
  - 💰 Cost and latency threshold checks

  Action Inputs

  | Input          | Description                     | Default               |
  |----------------|---------------------------------|-----------------------|
  | openai-api-key | OpenAI API key for LLM-as-judge | -                     |
  | config-path    | Path to config file             | .evalview/config.yaml |
  | max-workers    | Parallel workers                | 4                     |
  | fail-on-error  | Fail on test failure            | true                  |

  Full Documentation

  See https://github.com/hidai25/eval-view#github-action-recommended for complete usage 
  examples.
  ```
