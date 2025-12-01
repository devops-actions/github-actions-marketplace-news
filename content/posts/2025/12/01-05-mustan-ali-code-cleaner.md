---
title: Code Cleaner JS/TS
date: 2025-12-01 05:33:32 +00:00
tags:
  - mustan-ali
  - GitHub Actions
draft: false
repo: https://github.com/mustan-ali/code-cleaner
marketplace: https://github.com/marketplace/actions/code-cleaner-js-ts
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/mustan-ali/code-cleaner** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/code-cleaner-js-ts) to find the latest changes.

## Release notes

# Code Cleaner JS/TS v1.0.0

**Code Cleaner JS/TS** is a GitHub Action that automatically detects unused imports and dependencies in JavaScript/TypeScript projects and monorepos.

## 🚀 Features
- Detects unused ES6 imports in `.js`, `.ts`, `.jsx`, `.tsx` files
- Identifies unused dependencies in `package.json`
- Supports monorepos with multiple packages
- Fails CI/CD when unused imports are found
- Provides warnings for unused dependencies
- Works with Node.js 20 runtime
- No configuration required—just add to your workflow!

## 📦 Usage

```yaml
steps:
  - uses: actions/checkout@v4
  - uses: mustan-ali/code-cleaner@v1
