---
title: PolyLingo Translate
date: 2026-04-26 21:21:32 +00:00
tags:
  - UsePolyLingo
  - GitHub Actions
draft: false
repo: https://github.com/UsePolyLingo/translateAction
marketplace: https://github.com/marketplace/actions/polylingo-translate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/UsePolyLingo/translateAction** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polylingo-translate) to find the latest changes.

## Action Summary

The **PolyLingo Translate GitHub Action** automates the translation of flat JSON locale files (e.g., next-intl, i18next bundles) and Markdown documentation directly in CI pipelines using the PolyLingo Node.js SDK. It streamlines the localization process by supporting delta translations (translating only updated content), handling large Markdown files asynchronously, and providing actionable outputs like translated locales, changed files, and token usage. This action is ideal for developers looking to efficiently manage multilingual content updates and maintain consistency in their projects.

## What's Changed

- fix: pass INPUT_WITH_MESSAGES and INPUT_WITH_DOCS env vars to run-all from action.yml (407de8c)
- feat: PolyLingo translate action (JSON i18n + Markdown via polylingo SDK) (e0f3a04)
