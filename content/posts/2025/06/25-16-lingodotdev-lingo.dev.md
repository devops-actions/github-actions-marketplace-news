---
title: Lingo.Dev AI Localization
date: 2025-06-25 16:58:44 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev/_spec0.38.0
dependentsNumber: "63"
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **@lingo.dev/_spec@0.38.0**.
- This action is used across all versions by **63** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Release notes

### Minor Changes

-   [#958](https://github.com/lingodotdev/lingo.dev/pull/958) [`84fd214`](https://github.com/lingodotdev/lingo.dev/commit/84fd214a21766e7683c5d645fcb8c4c0162eb0b6) Thanks [@chrissiwaffler](https://github.com/chrissiwaffler)! - feat: add Mistral AI as a supported LLM provider

    -   Added Mistral AI provider support across the entire lingo.dev ecosystem
    -   Users can now use Mistral models for localization by setting MISTRAL_API_KEY
    -   Supports all Mistral models available through the @ai-sdk/mistral package
    -   Configuration via environment variable or user-wide config: `npx lingo.dev@latest config set llm.mistralApiKey <key>`

