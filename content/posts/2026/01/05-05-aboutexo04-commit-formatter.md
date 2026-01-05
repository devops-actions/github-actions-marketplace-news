---
title: Commit Message Formatter
date: 2026-01-05 05:51:01 +00:00
tags:
  - aboutexo04
  - GitHub Actions
draft: false
repo: https://github.com/aboutexo04/commit-formatter
marketplace: https://github.com/marketplace/actions/commit-message-formatter
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/aboutexo04/commit-formatter** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/commit-message-formatter) to find the latest changes.

## Action Summary

The Commit Message Formatter GitHub Action automates the formatting of commit messages to adhere to the Conventional Commits specification using AI models via OpenRouter. It solves the problem of inconsistent or informal commit messages by standardizing them across projects, supports multiple languages, and can intelligently skip commits already in the correct format. Key capabilities include AI-powered message generation, multi-language support, and a dry-run mode for previewing changes without applying them.

## Release notes

# 🎉 Commit Message Formatter v1.0.0

Automatically format your commit messages to follow Conventional Commits specification using AI.

## Features

- 🤖 **AI-Powered** - Uses OpenRouter API (Llama 3 8B by default, free!)
- 🌍 **Multi-language Input** - Write commits in any language, automatically translated to English
- 📝 **Conventional Commits** - Converts informal messages to proper format
- 🔒 **Smart Detection** - Skips commits that already follow the convention
- 🧪 **Dry Run Mode** - Preview changes before applying

## Usage

```yaml
- uses: aboutexo04/commit-formatter@v1
  with:
    openrouter-api-key: ${{ secrets.OPENROUTER_API_KEY }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
