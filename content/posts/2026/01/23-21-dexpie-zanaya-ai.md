---
title: Zanaya - AI Code Review
date: 2026-01-23 21:18:33 +00:00
tags:
  - dexpie
  - GitHub Actions
draft: false
repo: https://github.com/dexpie/zanaya-ai
marketplace: https://github.com/marketplace/actions/zanaya-ai-code-review
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/dexpie/zanaya-ai** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zanaya-ai-code-review) to find the latest changes.

## Action Summary

Zanaya is an AI-powered GitHub Action designed to automate code reviews for pull requests. It identifies potential bugs, security risks, and performance issues, providing inline comments with actionable suggestions to improve code quality. Supporting multiple programming languages and AI providers, it streamlines the review process, saves time, and can operate locally for enhanced privacy.

## Release notes

# 🎉 Zanaya v1.0.0

First major release of Zanaya - AI Code Review Bot!

## Features
- 🤖 **AI-Powered Review**: Support for Ollama (local), OpenAI, and Anthropic.
- 💬 **Inline Comments**: Suggestions directly on your code diffs.
- 🛡️ **Multi-Language**: Detection & review for JS, TS, Python, Go, Java, etc.
- ⚙️ **Customizable**: Configurable via `zanaya.config.yml`.
- 📦 **Zero-Config**: Works out of the box with default settings.

## Usage

```yaml
uses: dexpie/zanaya-ai@v1
with:
  github-token: ${{ secrets.GITHUB_TOKEN }}
  provider: ollama
  model: llama2
