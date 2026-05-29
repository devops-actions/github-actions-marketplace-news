---
title: GitMoji AI — Auto Commit Messages
date: 2026-05-29 14:47:46 +00:00
tags:
  - sochiautoparts
  - GitHub Actions
draft: false
repo: https://github.com/sochiautoparts/gitmoji-ai
marketplace: https://github.com/marketplace/actions/gitmoji-ai-auto-commit-messages
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sochiautoparts/gitmoji-ai** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitmoji-ai-auto-commit-messages) to find the latest changes.

## Action Summary

GitMoji AI is a GitHub Action and CLI tool that leverages AI to generate high-quality commit messages and changelogs in multiple languages. It automates the process of crafting descriptive, standards-compliant commit messages and changelogs, saving developers time and ensuring consistency. Key features include support for conventional and emoji-style commits, customizable commit styles, integration with Git hooks, and multi-language support.

## What's Changed

## GitMoji AI - AI-Powered Commit Messages and Changelog Generator

### Features
- AI-powered commit message generation (OpenAI GPT)
- AI-powered changelog generation
- Multi-language support (EN, RU, ES, DE, FR, JA, ZH)
- GitHub Action for CI/CD
- Git hook integration
- Freemium: 50 commits/month free

### Install
```
pip install gitmoji-ai
```

### GitHub Action
```
uses: sochiautoparts/gitmoji-ai@v1
with:
  openai-api-key: ${{ secrets.OPENAI_API_KEY }}
  generate-changelog: true
```
