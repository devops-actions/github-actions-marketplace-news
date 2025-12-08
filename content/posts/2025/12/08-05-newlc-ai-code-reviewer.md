---
title: Multi-AI Code Quality Analyzer
date: 2025-12-08 05:20:02 +00:00
tags:
  - newlc
  - GitHub Actions
draft: false
repo: https://github.com/newlc/ai-code-reviewer
marketplace: https://github.com/marketplace/actions/multi-ai-code-quality-analyzer
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/newlc/ai-code-reviewer** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-ai-code-quality-analyzer) to find the latest changes.

## Release notes

## Multi-AI Code Quality Analyzer

Automated AI-powered code review for your pull requests.

### Features

- **Multiple AI Providers**: OpenAI (GPT-5.1, GPT-4o), Anthropic (Claude), Google (Gemini), xAI (Grok), Ollama
- **PR Review**: Automatic review on pull requests with inline comments
- **Full Repository Review**: On-demand scan of entire codebase (`mode: full`)
- **Smart Chunking**: Handles large codebases by splitting into reviewable chunks
- **Multi-language**: Review comments in English, Russian, Spanish, German, French, Chinese, Japanese
- **Configurable**: Custom prompts, ignore patterns, focus areas, severity levels

### Quick Start

```
- uses: newlc/ai-code-reviewer@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    openai-api-key: ${{ secrets.OPENAI_API_KEY }}### Documentation
```

See [README](https://github.com/newlc/ai-code-reviewer#readme) for full documentation.
