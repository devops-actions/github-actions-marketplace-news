---
title: VectorLint
date: 2025-12-18 21:17:27 +00:00
tags:
  - TRocket-Labs
  - GitHub Actions
draft: false
repo: https://github.com/TRocket-Labs/vectorlint-action
marketplace: https://github.com/marketplace/actions/vectorlint
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/TRocket-Labs/vectorlint-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vectorlint) to find the latest changes.

## Release notes

# VectorLint Action v1

**Release Date:** December 2025

VectorLint is a command-line tool that evaluates and scores content using LLMs. It uses [LLM-as-a-Judge](https://en.wikipedia.org/wiki/LLM-as-a-Judge) to catch content quality issues that typically require human judgement.  

---

## ✨ Features

- **🤖 LLM-as-a-Judge** - Evaluates content quality using AI models
- **📝 PR Annotations** - Inline feedback via [reviewdog](https://github.com/reviewdog/reviewdog)
- **✅ GitHub Checks** - Native integration with GitHub's Checks API
- **🎯 Smart Detection** - Automatically scans changed `.md` and `.mdx` files

---

## 🔌 Supported LLM Providers

- OpenAI
- Anthropic
- Google Gemini
- Azure OpenAI

---

## 🚀 Quick Start

```yaml
- uses: TRocket-Labs/vectorlint-action@v1
  with:
    llm_provider: anthropic
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
```

---

## 🔍 Optional: Perplexity Integration

Enable technical accuracy verification:

```yaml
perplexity_api_key: ${{ secrets.PERPLEXITY_API_KEY }}
```

---

## ⚙️ Configuration

| Input | Description | Default |
|-------|-------------|---------|
| `llm_provider` | LLM provider | `anthropic` |
| `reporter` | reviewdog reporter | `github-pr-check` |
| `filter_mode` | Filter mode | `added` |
| `fail_on_error` | Fail on errors | `true` |
| `vectorlint_version` | npm version | `latest` |

---

## 🔒 Required Permissions

```yaml
permissions:
  contents: read
  pull-requests: write
  checks: write
```

---

## 📚 Resources

- [VectorLint npm package](https://www.npmjs.com/package/vectorlint)
- [Full Documentation](./README.md)

---

**Made with ❤️ by TRocket Labs**

