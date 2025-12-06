---
title: GPT Translate
date: 2025-05-18 01:14:43 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: https://github.com/3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.2.2
dependentsNumber: "0"
---


Version updated for **https://github.com/3ru/gpt-translate** to version **v1.2.2**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

## 🚀 New Feature: Translate to Multiple Languages Simultaneously

You can now translate your files to multiple languages with a *single command*! This update dramatically improves your workflow efficiency when localizing content.

### How It Works

Simply provide *comma-separated* values for:
- Input files (supports glob patterns)
- Output paths (use `*` as a placeholder for the original filename)
- Target languages

### Example

```sh
/gt doc/*.md *.md,docs/jp/*.md English,Japanese
```

This command:
1. Takes all markdown files in the `doc/` directory
2. Translates them to both English and Japanese
3. Places English translations at the root with original filenames (e.g., `README.md`)
4. Places Japanese translations in `docs/jp/` directory with original filenames  (e.g., `docs/jp/README.md`)

### Improved PR Visualization

Translation PRs now display a clean, organized summary of all translated files:

<img width="648" alt="new pr viz" src="https://github.com/user-attachments/assets/5676e35d-dfc6-4ab8-be1d-d480a528cf7e" />


This cleaner visualization makes it easy to understand:
- Which files were translated
- Where each translation was saved
- Which languages were used

## Backward Compatibility

Don't worry! The previous single-language format still works perfectly:

```
/gt README.md docs/jp/README.md Japanese
```

Try it out and let us know what you think! 

---

## New Contributors
* @PeterDaveHello made their first contribution in https://github.com/3ru/gpt-translate/pull/87
* @PairZhu made their first contribution in https://github.com/3ru/gpt-translate/pull/89

**Full Changelog**: https://github.com/3ru/gpt-translate/compare/v1.2.1...v1.2.2
