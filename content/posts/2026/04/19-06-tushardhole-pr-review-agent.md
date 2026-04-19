---
title: Safe PR Review Agent
date: 2026-04-19 06:43:57 +00:00
tags:
  - tushardhole
  - GitHub Actions
draft: false
repo: https://github.com/tushardhole/pr-review-agent
marketplace: https://github.com/marketplace/actions/safe-pr-review-agent
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/tushardhole/pr-review-agent** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/safe-pr-review-agent) to find the latest changes.

## Action Summary

The **PR Review Agent** GitHub Action leverages an AI-powered large language model (LLM) to automate code reviews for pull requests. It analyzes PR metadata, changed files, and repository conventions, generating inline review comments with severity tags and recommendations to ensure code quality and adherence to standards. This action streamlines the code review process by supporting configurable models, context-aware file analysis, and customizable review parameters, reducing manual effort and improving review efficiency.

## What's Changed

## PR Review Agent v1.0.0

Initial stable release of `tushardhole/pr-review-agent` for GitHub Actions Marketplace.

### Highlights
- AI-powered pull request review on `pull_request` events
- OpenAI-compatible provider support (`openai_base_url` + `model`) including Groq/OpenAI/OpenRouter/Azure/Ollama
- Structured review output with robust normalization for provider response variants
- Decision badges in top-level review comments (`✅/🚨/💬`) while using safe `COMMENT` event posting
- Inline comment safety:
  - filters comments to resolvable diff anchors
  - fallback retry to summary-only when GitHub cannot resolve a line
- Debug observability controls:
  - `DEBUG_LLM_RESPONSE`
  - `DEBUG_LLM_RESPONSE_MAX_CHARS`
  - `DEBUG_LLM_RESPONSE_REDACT`
- Strong test coverage (unit + integration) and strict TypeScript
- Release validation workflow for published releases

### Action usage
```yaml
- uses: tushardhole/pr-review-agent@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    openai_api_key: ${{ secrets.OPENAI_API_KEY }}
    openai_base_url: https://api.groq.com/openai/v1
    model: gpt-4o
