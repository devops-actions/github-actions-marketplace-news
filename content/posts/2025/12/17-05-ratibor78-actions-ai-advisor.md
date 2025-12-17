---
title: Actions AI Advisor
date: 2025-12-17 05:23:50 +00:00
tags:
  - ratibor78
  - GitHub Actions
draft: false
repo: https://github.com/ratibor78/actions-ai-advisor
marketplace: https://github.com/marketplace/actions/actions-ai-advisor
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/ratibor78/actions-ai-advisor** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actions-ai-advisor) to find the latest changes.

## Release notes

# Actions AI Advisor v1

**AI-powered GitHub Actions failure analysis** - Stop digging through CI logs manually. Let AI explain failures for you.

## 🎯 First Stable Release

This is the first production-ready release of Actions AI Advisor!

## ✨ Key Features

- 🤖 **Intelligent Analysis** - AI-powered root cause analysis directly in workflow summaries
- 📁 **Affected Files Detection** - Automatically extracts and links to files mentioned in errors
- 🌍 **Multi-Language Support** - 10+ languages: Python, JS/TS, Go, Rust, Java, C#, PHP, Ruby, C/C++, Docker
- 🔗 **Clickable File Links** - Direct navigation to error locations with line numbers
- 💰 **Cost Transparency** - Shows token usage and estimated cost per analysis
- ⚡ **Fast Execution** - Uses pre-built Docker images (5-10 seconds)
- 🔌 **Provider Flexibility** - OpenAI, Anthropic, OpenRouter, or self-hosted LLMs

## 🚀 Quick Start

```yaml
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: npm test

  ai-advisor:
    runs-on: ubuntu-latest
    if: failure()
    needs: test
    permissions:
      actions: read
    steps:
      - uses: ratibor78/actions-ai-advisor@v1
        with:
          github_token: ${{ github.token }}
          api_key: ${{ secrets.OPENAI_API_KEY }}
          provider: openai
          model: gpt-4o-mini
```

## 📚 Documentation

- [README](https://github.com/ratibor78/actions-ai-advisor#readme)
- [Language Support](https://github.com/ratibor78/actions-ai-advisor/blob/main/docs/language-support.md)
- [LLM Integration Guide](https://github.com/ratibor78/actions-ai-advisor/blob/main/docs/llm-integration.md)
- [Development Guide](https://github.com/ratibor78/actions-ai-advisor/blob/main/docs/development.md)

## 💵 Cost

**~\$0.0003-0.0008 per analysis** (≈1000-3000 analyses per \$1)

## 🐳 Docker Images

Available at: \`ghcr.io/ratibor78/actions-ai-advisor\`

Tags: \`v1\`

## 📝 What's Changed

### Features
- ✨ Complete project rename to actions-ai-advisor
- ⚡ Optimized to use pre-built Docker images for fast execution
- 🔧 Snake_case input names for better compatibility
- 🎯 Support for self-hosted LLM providers
- 📦 Multi-language file path extraction (10+ languages)
- 🔗 Clickable GitHub links to error locations
- 💰 Token usage and cost estimation

### Technical Improvements
- 🐍 Python 3.12+ with modern tooling (uv, pydantic, httpx)
- 🧪 68 tests passing with comprehensive coverage
- 📝 Full documentation and examples
- 🔒 Type-safe with mypy strict mode
- 🎨 Linted with ruff
