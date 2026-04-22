---
title: AI PR Reviewer by Bonn
date: 2026-04-22 06:25:13 +00:00
tags:
  - AndreaBonn
  - GitHub Actions
draft: false
repo: https://github.com/AndreaBonn/ai-pr-reviewer
marketplace: https://github.com/marketplace/actions/ai-pr-reviewer-by-bonn
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/AndreaBonn/ai-pr-reviewer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-reviewer-by-bonn) to find the latest changes.

## Action Summary

**AI PR Reviewer** is a GitHub Action that automates code reviews for pull requests by leveraging large language models (LLMs) to generate structured feedback, including assessments of bugs, security, performance, and testing gaps. It supports multiple LLM providers (e.g., Groq, Gemini, Anthropic, OpenAI) with automatic fallback to ensure reliability, making it a robust tool for streamlining the PR review process and maintaining code quality. Additionally, it updates reviews dynamically when new commits are pushed, reducing redundancy and enhancing collaboration.

## What's Changed

## AI PR Reviewer v1.0.0

  Automated pull request reviews powered by LLMs. Set up in minutes, get actionable feedback on every PR.

  ### Features

  - **Multi-provider support** — Groq, Gemini, Anthropic, OpenAI
  - **Automatic fallback** — comma-separated providers with key rotation (`groq,gemini`)
  - **Smart file filtering** — skip lock files, minified code, configurable ignore patterns
  - **Multi-language reviews** — English, Italian, French, Spanish, German
  - **Prompt injection protection** — PR title/body sanitized before LLM prompt
  - **Zero dependencies** — only `requests` in production

  ### Quick Start

  ```yaml
  - uses: AndreaBonn/ai-pr-reviewer@v1
    with:
      llm_provider: 'groq'
      llm_api_key: ${{ secrets.LLM_API_KEY }}
      github_token: ${{ secrets.GITHUB_TOKEN }}
```

---

  Full documentation

  See README for all configuration options.
