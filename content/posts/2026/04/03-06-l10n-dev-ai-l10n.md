---
title: L10n.dev AI Localization Automation
date: 2026-04-03 06:19:38 +00:00
tags:
  - l10n-dev
  - GitHub Actions
draft: false
repo: https://github.com/l10n-dev/ai-l10n
marketplace: https://github.com/marketplace/actions/l10n-dev-ai-localization-automation
version: v1.4.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/l10n-dev/ai-l10n** to version **v1.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/l10n-dev-ai-localization-automation) to find the latest changes.

## Action Summary

The `ai-l10n` GitHub Action automates app localization by leveraging AI to translate i18n files into 165+ languages while preserving context, formatting, and data types. It supports a wide range of text-based localization file formats and offers features like smart project structure detection, incremental updates for new strings, intelligent pluralization, and error handling. This tool simplifies and accelerates the localization process for developers, ensuring accuracy and efficiency in translating applications for global audiences.

## What's Changed

## What's Changed
### Added
- **Multi-Format Support** - All text-based localization formats are now supported (YAML, PO/gettext, XLIFF, and any other format accepted by the API). The format is derived from the file extension and sent automatically. See [supported formats](https://l10n.dev/ws/translate-i18n-files#supported-formats)
  - `I18nProjectManager.detectLanguagesFromProject()` now auto-scans paired extensions: `.yaml`/`.yml` and `.xliff`/`.xlf` (same behavior as `.json`/`.jsonc`)

### Changed
- `ai-l10n-core` is now a fully documented, independently testable package
  - Added `README.md` with full API reference for `L10nTranslationService`, `ConsoleLogger`, `ILogger`, and all types
  - Added test suite (`ConsoleLogger` + `L10nTranslationService`, 49 tests) moved from `ai-l10n-sdk`
  - Added `scripts/verify.js` and `test`/`verify` npm scripts
  - Added `CHANGELOG.md`
- `ai-l10n-sdk` README: core-library API sections moved to `ai-l10n-core` package docs
- `validateLanguageCode()` and `normalizeLanguageCode()` moved from `I18nProjectManager` to `ai-l10n-core` (`languageUtils`). Import from `ai-l10n-core` directly instead of using the manager


**Full Changelog**: https://github.com/l10n-dev/ai-l10n/compare/v1.3.0...v1.4.1
