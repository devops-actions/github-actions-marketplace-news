---
title: L10n.dev AI Localization Automation
date: 2026-07-11 22:24:32 +00:00
tags:
  - l10n-dev
  - GitHub Actions
draft: false
repo: https://github.com/l10n-dev/ai-l10n
marketplace: https://github.com/marketplace/actions/l10n-dev-ai-localization-automation
version: v1.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/l10n-dev/ai-l10n** to version **v1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/l10n-dev-ai-localization-automation) to find the latest changes.

## What's Changed

## What's Changed
- Added `client` option to identify integrations of the l10n.dev localization platform.

SDK:
- Added `authOptions` as an optional arg to the `translate` method of `AITranslator` class.
  - Add `client` to identify client's usage correctly
  - Moved `apiKey` to the `authOptions`.
  
### Breaking changes
 - Optional `apiKey` arg now in the `authOptions`
 
 CORE:
- API documentation is improved

**Full Changelog**: https://github.com/l10n-dev/ai-l10n/compare/v1.9.1...v1.10.0
