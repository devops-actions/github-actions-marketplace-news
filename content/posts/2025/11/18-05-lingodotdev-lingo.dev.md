---
title: Lingo.Dev AI Localization
date: 2025-11-18 05:13:54 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev/_locales0.2.0
dependentsNumber: "96"
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **@lingo.dev/_locales@0.2.0**.
- This action is used across all versions by **96** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Release notes

### Minor Changes

-   [#1614](https://github.com/lingodotdev/lingo.dev/pull/1614) [`0f6ffbf`](https://github.com/lingodotdev/lingo.dev/commit/0f6ffbf7dafafbead768eb9e52787cb6013aa1c3) Thanks [@maxprilutskiy](https://github.com/maxprilutskiy)! - feat: use ISO 639-3 package for comprehensive language code validation

    Replaces hardcoded list of ISO 639-1 (2-letter) language codes with the comprehensive iso-639-3 package, which includes:

    -   All ISO 639-1 codes (2-letter, ~184 languages)
    -   All ISO 639-2 codes (3-letter bibliographic and terminologic)
    -   All ISO 639-3 codes (3-letter, ~8,000 languages)

    This fixes validation issues with 3-letter language codes like:

    -   `fil` (Filipino)
    -   `bar` (Bavarian)
    -   `nap` (Neapolitan)
    -   `zgh` (Standard Moroccan Tamazight)

    And many other languages that don't have 2-letter ISO 639-1 codes.

