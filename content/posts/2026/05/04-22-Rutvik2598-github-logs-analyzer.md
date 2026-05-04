---
title: GitHub Logs Analyzer
date: 2026-05-04 22:21:12 +00:00
tags:
  - Rutvik2598
  - GitHub Actions
draft: false
repo: https://github.com/Rutvik2598/github-logs-analyzer
marketplace: https://github.com/marketplace/actions/github-logs-analyzer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Rutvik2598/github-logs-analyzer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-logs-analyzer) to find the latest changes.

## Action Summary

The GitHub Logs Analyzer is an AI-powered action designed to automatically analyze failed CI workflow logs, identify the root cause, and provide actionable fix suggestions. It automates the debugging process by posting detailed diagnostic comments on pull requests and updating the job summary with key failure insights. This action streamlines troubleshooting, saving time and effort for developers by delivering clear, AI-generated solutions for build and test failures.

## What's Changed

## What it does
Automatically analyzes GitHub Actions failures and posts a detailed AI-generated report as a PR comment — including root cause, failed steps, and a concrete fix suggestion.

## Supported AI Providers
- **Anthropic Claude** (`claude-sonnet-4-6`)
- **Google Gemini** (`gemini-2.5-flash`)
- **OpenAI** (`gpt-4o-mini`)
- **Groq / Llama** (`llama-3.3-70b-versatile`)

## Usage
```yaml
- uses: Rutvik2598/github-logs-analyzer@v1.0.0
  with:
    provider: gemini
    gemini-api-key: ${{ secrets.GEMINI_API_KEY }}

