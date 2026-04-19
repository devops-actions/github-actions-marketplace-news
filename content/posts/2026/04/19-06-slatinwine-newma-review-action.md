---
title: Newma Review
date: 2026-04-19 06:44:11 +00:00
tags:
  - slatinwine
  - GitHub Actions
draft: false
repo: https://github.com/slatinwine/newma-review-action
marketplace: https://github.com/marketplace/actions/newma-review
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/slatinwine/newma-review-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/newma-review) to find the latest changes.

## Action Summary

The **Newma Review Action** is a GitHub Action that automates code reviews for pull requests using AI-powered analysis. It streamlines the review process by automatically analyzing code changes, providing feedback in pull requests, and supporting multiple AI models and languages. This action reduces manual effort in code reviews, improves efficiency, and supports integration with various AI providers like OpenAI, ZhipuAI, and DeepSeek.

## What's Changed

## newma-review-action v0.1.0

AI-powered code review GitHub Action.

### Features
- 🔍 Review PR diffs via any OpenAI-compatible API (GPT-4o-mini default)
- 🌐 Support 智谱/DeepSeek/Qwen/any OpenAI-compatible provider
- 📊 Concurrent review with batch=5, exponential backoff retry
- 🛡️ String-aware JSON parsing (4-layer: greedy code block → balanced {} → balanced [] → whole content)
- 🌍 Multi-language support (en/zh/configurable)
- ⚡ Zero dependencies (Node 20 built-in fetch)
- 📋 `ignore-patterns` to skip generated/vendor files
- 📝 GitHub Actions `core.summary` report

### Usage

```yaml
- uses: slatinwine/newma-review-action@v0.1.0
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    ai-api-key: ${{ secrets.OPENAI_API_KEY }}
    ai-model: gpt-4o-mini
```
