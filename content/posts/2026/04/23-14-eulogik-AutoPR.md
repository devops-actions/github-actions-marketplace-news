---
title: Eulogik-AutoPR
date: 2026-04-23 14:07:26 +00:00
tags:
  - eulogik
  - GitHub Actions
draft: false
repo: https://github.com/eulogik/AutoPR
marketplace: https://github.com/marketplace/actions/eulogik-autopr
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/eulogik/AutoPR** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eulogik-autopr) to find the latest changes.

## Action Summary

AutoPR is a GitHub Action and CLI tool that automates the generation of pull request (PR) descriptions and performs AI-powered code reviews using lightweight language models via OpenRouter. It eliminates the need for manual PR documentation and reviews, saving developers time and reducing context-switching. Key capabilities include instant generation of professional PR descriptions, inline code review with security and performance checks, and seamless integration into any Git repository.

## What's Changed

## 🚀 AutoPR v1.0.1 - Stop Writing PR Descriptions Manually

AutoPR is an AI-powered CLI tool and GitHub Action that auto-generates PR descriptions and reviews code using **100% free** LLMs via OpenRouter.

### ✨ What's Included
- **CLI Commands**: `autopr generate` and `autopr review`
- **GitHub Action**: Fully automated PR descriptions and code reviews on every PR
- **Smart Caching**: Avoid duplicate API calls
- **Secure by Default**: Sends only diffs, sanitizes secrets, dry-run mode
- **Zero Cost**: Uses OpenRouter's free tier (Gemma, Llama, Mistral)
- **Improved Error Handling**: Now with friendly error messages for git repo validation

### 📦 Installation
```bash
npm install -g @eulogik/autopr

🚀 Quick Start

Get your free API key from [OpenRouter](https://openrouter.ai/)
Set it: export OPENROUTER_API_KEY="your-key"
Generate PR description: autopr generate --no-dry-run
🤖 GitHub Action

Add .github/workflows/autopr.yml to your repo (already included in the repo) and let AutoPR handle every PR automatically.

name: AutoPR
on:
  pull_request:
    types: [opened, synchronize, reopened]
permissions:
  contents: read
  pull-requests: write
jobs:
  autopr:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: actions/setup-node@v4
        with:
          node-version: "20"
      - run: npm install -g @eulogik/autopr
      - name: Generate PR Description
        if: github.event.action == 'opened'
        env:
          OPENROUTER_API_KEY: ${{ secrets.OPENROUTER_API_KEY }}
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: autopr generate --no-dry-run
      - name: Review PR
        env:
          OPENROUTER_API_KEY: ${{ secrets.OPENROUTER_API_KEY }}
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: autopr review ${{ github.event.number }} --no-dry-run
📊 Stats

✅ 22 passing tests
✅ TypeScript strict mode
✅ ESLint clean
✅ MIT License
🔄 Changes in v1.0.1

Fixed git validation: added repo checks and improved error messages
Copied prompt templates to dist/ for proper global installs
Fixed base branch option passing to generatePRDescription()
Updated action.yml with branding (icon: git-pull-request, color: purple)

Star the repo if you find it useful! ⭐
