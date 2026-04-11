---
title: MaintainerBot AI Issue Triage
date: 2026-04-11 21:47:04 +00:00
tags:
  - 3cgbdg
  - GitHub Actions
draft: false
repo: https://github.com/3cgbdg/maintainerbot
marketplace: https://github.com/marketplace/actions/maintainerbot-ai-issue-triage
version: v1.0.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/3cgbdg/maintainerbot** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerbot-ai-issue-triage) to find the latest changes.

## Action Summary

MaintainerBot is a GitHub Action that uses AI (GPT-4.1-mini) to automate issue triage by classifying newly opened issues, applying appropriate labels, and optionally posting reply comments. It addresses the challenge of efficiently managing issue tracking by reducing manual effort and ensuring accurate categorization. Key capabilities include automatic labeling based on AI confidence levels, fallback labels for uncertain cases, and optional automated responses.

## What's Changed

## MaintainerBot v1.0.0

Docker-based GitHub Action that triages **new issues** with **OpenAI `gpt-4.1-mini`**: classifies as **bug / question / duplicate / spam**, applies **labels**, optional **auto-reply**, confidence thresholds (stricter for duplicates), retries, and step summary output.

### Install

Add a workflow (Linux runner required):

- `runs-on: ubuntu-latest`
- `permissions: issues: write` (and `contents: read` if you checkout the repo)
- Repository secret: `OPENAI_API_KEY`

```yaml
name: MaintainerBot

on:
  issues:
    types: [opened]

permissions:
  issues: write
  contents: read

jobs:
  triage:
    runs-on: ubuntu-latest
    steps:
      - uses: YOUR_ORG/maintainerbot@v1
        with:
          openai_api_key: ${{ secrets.OPENAI_API_KEY }}
          github_token: ${{ github.token }}
