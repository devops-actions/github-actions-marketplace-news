---
title: Octomind Action
date: 2026-04-17 06:33:02 +00:00
tags:
  - Muvon
  - GitHub Actions
draft: false
repo: https://github.com/Muvon/octomind-action
marketplace: https://github.com/marketplace/actions/octomind-action
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Muvon/octomind-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/octomind-action) to find the latest changes.

## Action Summary

The **Octomind Action** is a GitHub Action that integrates a session-based AI development agent into CI/CD workflows, enabling automated tasks like code reviews, code generation, and analysis using various AI providers (e.g., OpenAI, Anthropic). It simplifies collaboration by posting results directly to pull requests, supports reusable named sessions, and allows for customization via specialized roles and custom agent registries. This action streamlines development processes by automating repetitive tasks and enhancing code quality through AI-driven insights.

## What's Changed

Run [Octomind](https://github.com/Muvon/octomind) — a session-based AI development agent — directly in your GitHub Actions workflows.

## Usage

```yaml
- uses: muvon/octomind-action@v1
  with:
    prompt: "Review this code for issues"
  env:
    OPENROUTER_API_KEY: ${{ secrets.OPENROUTER_API_KEY }}
```

## Features

- **Multi-provider** — OpenRouter, Anthropic, OpenAI, DeepSeek, Google, AWS Bedrock, Cloudflare
- **Role-based agents** — Specialized roles from built-in registry or custom taps
- **PR commenting** — Post results to pull requests (full or collapsible)
- **Session support** — Named sessions with resume across workflow runs
- **Custom taps** — Extend with your own agent registry
- **Binary caching** — Skips download when already installed

## Inputs

| Input | Required | Default | Description |
|-------|----------|---------|-------------|
| `prompt` | **yes** | — | Task or message to send to octomind |
| `role` | no | config default | Role to use (e.g. `developer:rust`) |
| `model` | no | — | Model override |
| `name` | no | — | Session name |
| `resume` | no | — | Resume a specific session by name |
| `resume_recent` | no | `false` | Resume most recent session |
| `sandbox` | no | `false` | Restrict filesystem writes |
| `hook` | no | — | Webhook hook names to activate |
| `version` | no | `latest` | Octomind version to install |
| `tap` | no | — | Tap to add before run |
| `config` | no | — | Path to config file |
| `comment` | no | `none` | PR comment mode: `full`, `compact`, `none` |
| `github_token` | no | `${{ github.token }}` | Token for PR commenting |

## Outputs

| Output | Description |
|--------|-------------|
| `result` | Last assistant message content |
| `session_id` | Session ID for resuming |
| `cost` | Session cost as JSON |
| `raw_output` | Full JSONL output |
| `exit_code` | Process exit code |
