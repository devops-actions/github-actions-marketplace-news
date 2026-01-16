---
title: LocalHero AI Translation
date: 2026-01-16 13:28:46 +00:00
tags:
  - localheroai
  - GitHub Actions
draft: false
repo: https://github.com/localheroai/localhero-action
marketplace: https://github.com/marketplace/actions/localhero-ai-translation
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/localheroai/localhero-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/localhero-ai-translation) to find the latest changes.

## Action Summary

The LocalHero GitHub Action automates the process of translating missing internationalization (i18n) keys in your project using AI-powered translations integrated with your development workflow. It streamlines localization tasks by automatically detecting changes, generating translations, and committing them directly to pull requests. This action eliminates manual translation efforts and ensures consistent, efficient localization for teams shipping globally.

## Release notes

# Localhero.ai GitHub Action

The official GitHub Action for [LocalHero.ai](https://localhero.ai), automatic AI-powered translations for your i18n files.

  ## Features

  - 🚀 Simple setup - just add your API key
  - 🔄 Auto-detects PR vs main branch context
  - 🚧 Skips draft PRs and `skip-translation` label
  - 📦 Works with JSON, YAML, and PO files

  ## Quick Start

  ```yaml
  - uses: localheroai/localhero-action@v1
    with:
      api-key: ${{ secrets.LOCALHERO_API_KEY }}
```

  See the https://github.com/localheroai/localhero-action#readme for full documentation.
