---
title: i18n Translate Action
date: 2026-01-27 13:45:34 +00:00
tags:
  - i18n-actions
  - GitHub Actions
draft: false
repo: https://github.com/i18n-actions/ai-i18n
marketplace: https://github.com/marketplace/actions/i18n-translate-action
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/i18n-actions/ai-i18n** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/i18n-translate-action) to find the latest changes.

## Action Summary

The **i18n Translate Action** is a GitHub Action designed to automate the translation of internationalization (i18n) files using advanced language models such as Anthropic Claude, OpenAI GPT, or local Ollama models. It simplifies the localization process by supporting multiple file formats (e.g., XLIFF, JSON), detecting and translating only new or modified strings, and intelligently handling complex ICU message formats. The action further streamlines workflow by integrating with Git to commit translated files automatically and providing efficient batching, rate limiting, and retry mechanisms for API calls.

## Release notes

# ai-i18n v0.1.0

LLM-powered i18n translations as a GitHub Action. Context-aware translations without the SaaS tax.

## Features

- **Multi-provider LLM support** - Anthropic Claude, OpenAI GPT-4, Google Gemini, Azure OpenAI, Ollama (self-hosted)
- **Format support** - XLIFF 1.2/2.0, JSON (flat & nested), PO/POT, YAML
- **Incremental translation** - Only translates new/changed strings via content hashing
- **Context injection** - Product descriptions, glossaries, style guides for domain-specific accuracy
- **CLDR plural rules** - Correct plural forms for all languages (Russian 4-form, Arabic 6-form, etc.)
- **Git-native** - Commits translations directly to your branch or creates PRs

## Quick Start
```yaml
- uses: webdecoy/ai-i18n@v0.1.0
  with:
    config_file: .i18n-translate.yml
  env:
    ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
```

## Documentation

- [Configuration Guide](./docs/CONFIGURATION.md)
- [Provider Setup](./docs/PROVIDERS.md)
- [Migration from Lokalise/Phrase](./docs/MIGRATION.md)

## What's Next

- [ ] Visual context injection (screenshots)
- [ ] Translation memory export/import
- [ ] Quality scoring and metrics

---

**Full Changelog**: https://github.com/webdecoy/ai-i18n/commits/v0.1.0
