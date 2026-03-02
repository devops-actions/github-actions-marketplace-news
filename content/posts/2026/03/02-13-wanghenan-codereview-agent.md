---
title: CodeReview Agent
date: 2026-03-02 13:18:36 +00:00
tags:
  - wanghenan
  - GitHub Actions
draft: false
repo: https://github.com/wanghenan/codereview-agent
marketplace: https://github.com/marketplace/actions/codereview-agent
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wanghenan/codereview-agent** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codereview-agent) to find the latest changes.

## Action Summary

The CodeReview Agent GitHub Action is an AI-powered tool designed to automate code review processes by identifying potential risks, such as security vulnerabilities, SQL injection, and hardcoded keys. It provides automated risk assessment with confidence scoring to determine whether code can be directly submitted or requires manual review. This action integrates with multiple LLM providers and supports modular, extensible configurations, streamlining code quality assurance and improving development workflows.

## Release notes

## v1 正式发布！🤖

AI 驱动的 CodeReview 智能体，帮助程序员自动识别哪些代码可提交、哪些需要人工审核。

### ✨ 核心功能
- 🔍 智能风险识别 - 安全漏洞、SQL注入、硬编码密钥
- 📊 置信度评分 - 0-100% 风险量化
- 🌐 6 大 LLM Provider - OpenAI/Anthropic/智谱/MiniMax/阿里云/DeepSeek
- 🚀 三种使用方式 - GitHub Action / Docker / CLI

### 📝 更新
- 优化 README 文档
- 修复已知问题

### 🚀 快速开始
.github/workflows/codereview.yml 添加即可自动审代码！
