---
title: i18n Translate Action
date: 2026-03-01 06:09:23 +00:00
tags:
  - i18n-actions
  - GitHub Actions
draft: false
repo: https://github.com/i18n-actions/ai-i18n
marketplace: https://github.com/marketplace/actions/i18n-translate-action
version: v0.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/i18n-actions/ai-i18n** to version **v0.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/i18n-translate-action) to find the latest changes.

## Action Summary

The **i18n Translate Action** is a GitHub Action designed to automate the translation of i18n files using Large Language Model (LLM) providers such as Anthropic Claude, OpenAI GPT, or local Ollama models. It supports multiple file formats (e.g., XLIFF and JSON), handles complex ICU message formats, detects and translates only new or modified strings, and can automatically commit translated files to your repository. This action simplifies and streamlines the localization process, making it efficient and scalable for multilingual projects.

## Release notes

## What's New

### Placeholder validation + retry for LLM translation output

After the `preserveOrder` parser fix reduced validation errors from 3,137 to 209, the remaining errors were caused by the LLM itself dropping placeholders during translation. This release adds post-translation validation that detects missing placeholders and retries with a targeted prompt.

**Changes:**
- Added `customUserPrompt` to `TranslationRequest` for targeted retry prompts
- Added `findMissingPlaceholders()` and `buildPlaceholderRetryPrompt()` helpers in context-builder
- Added `retryBrokenPlaceholders()` step in `TranslationOrchestrator.translate()` — runs after existing missing-unit retry, validates each translation for placeholder completeness, and retries broken ones with a prompt that explicitly names the dropped placeholders
- Updated all 3 providers (Anthropic, OpenAI, Ollama) to respect `customUserPrompt`
- Retry accepts the fix only when re-validation passes (zero missing placeholders); otherwise keeps the original translation and logs warnings
