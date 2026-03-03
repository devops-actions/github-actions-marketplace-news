---
title: i18n Translate Action
date: 2026-03-03 21:28:37 +00:00
tags:
  - i18n-actions
  - GitHub Actions
draft: false
repo: https://github.com/i18n-actions/ai-i18n
marketplace: https://github.com/marketplace/actions/i18n-translate-action
version: v0.7.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/i18n-actions/ai-i18n** to version **v0.7.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/i18n-translate-action) to find the latest changes.

## Action Summary

The **i18n Translate Action** is a GitHub Action designed to automate the translation of i18n files using various large language model (LLM) providers, including Anthropic Claude, OpenAI GPT, and Ollama. It supports multiple file formats (e.g., XLIFF, JSON) and provides intelligent handling of complex linguistic structures like plurals. Key features include automatic detection of new or modified strings, efficient batch processing, API rate limiting, and seamless integration with Git for committing translated files, streamlining the localization workflow for developers.

## Release notes

## What's New

### Glossary File Support
Translators can maintain a `.i18n-glossary.yml` terminology file that the LLM uses to ensure consistent translations across all applications.

```yaml
# .i18n-glossary.yml
de:
  "Shopping Cart": "Warenkorb"
  "Dashboard": "Dashboard"
fr:
  "Shopping Cart": "Panier"
  "Dashboard": "Tableau de bord"
```

Configure via action input:
```yaml
- uses: i18n-actions/ai-i18n@v0.7
  with:
    glossary-file: '.i18n-glossary.yml'
```

Or via config file:
```yaml
# .i18n-translate.yml
translation:
  glossaryFile: '.i18n-glossary.yml'
```

### Skip Reviewed Translations
Units marked as `state="reviewed"`, `state="final"`, or `approved="yes"` in target XLIFF files are now preserved on subsequent runs. If the English source text changes, the unit gets retranslated and its state resets to `state="translated"`.

This enables a workflow where translators review AI-generated translations on their own schedule — their reviewed work won't be overwritten.

### Other Changes
- Fixed YAML key parsing to correctly strip surrounding quotes
- Added 26 new tests (219 total)
