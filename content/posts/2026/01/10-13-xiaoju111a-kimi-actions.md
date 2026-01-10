---
title: Kimi Code Review
date: 2026-01-10 13:11:18 +00:00
tags:
  - xiaoju111a
  - GitHub Actions
draft: false
repo: https://github.com/xiaoju111a/kimi-actions
marketplace: https://github.com/marketplace/actions/kimi-code-review
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/xiaoju111a/kimi-actions** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kimi-code-review) to find the latest changes.

## Action Summary

The Kimi Code Review GitHub Action automates AI-powered code reviews for pull requests using the Moonshot AI platform. It streamlines the review process by analyzing code changes, providing suggestions, generating comments, and answering questions directly within the pull request interface. This action enhances code quality and accelerates collaboration by integrating advanced AI capabilities with GitHub workflows.

## Release notes

## 🎉 Kimi Code Review Action v1.0.1

AI-powered code review using [Kimi](https://kimi.moonshot.cn/) (Moonshot AI) with 256K context window.

### ✨ Features

- 🔍 `/review` - Intelligent code review for bugs, security issues, and performance
- 📝 `/describe` - Auto-generate PR title and description
- ✨ `/improve` - Code improvement suggestions with concrete fixes
- 💬 `/ask` - Interactive Q&A about the PR
- 🧠 **Agent Skills** - Modular capability extension with custom review rules
- 📦 Smart chunking for large PRs (auto-prioritizes important files)

### 🚀 Quick Start

```yaml
- uses: xiaoju111a/kimi-actions@v1
  with:
    kimi_api_key: ${{ secrets.KIMI_API_KEY }}
    github_token: ${{ secrets.GITHUB_TOKEN }}


