---
title: Lingo.Dev AI Localization
date: 2026-07-17 22:43:30 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.138.2
dependentsNumber: "104"
actionType: Composite
actionSummary: |
  The Lingo GitHub Action automates the continuous localization of text across repositories using the Lingo.dev platform. It simplifies the process of translating content, ensuring consistent and high-quality translations with features like AI-assisted setup and integration with existing translation engines. This action streamlines the localization workflow by automatically handling changes in text files and ensures that only necessary updates are processed.
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.138.2**.

- This action is used across all versions by **104** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Action Summary

The Lingo GitHub Action automates the continuous localization of text across repositories using the Lingo.dev platform. It simplifies the process of translating content, ensuring consistent and high-quality translations with features like AI-assisted setup and integration with existing translation engines. This action streamlines the localization workflow by automatically handling changes in text files and ensures that only necessary updates are processed.

## What's Changed

### Patch Changes

- [#2169](https://github.com/lingodotdev/lingo.dev/pull/2169) [`14b34e7`](https://github.com/lingodotdev/lingo.dev/commit/14b34e7868670b6e56a1abddfba3987309afb3fc) Thanks [@cherkanovart](https://github.com/cherkanovart)! - Fix Biome formatter silently skipping files when `biome.jsonc` uses a grit `plugins` entry (or any section the bundled Biome can't apply). Previously `applyConfiguration` threw on such keys, formatting was disabled for the whole file, and the project's configured quote style was dropped — files got committed reformatted to defaults on every run. The `plugins` key is now excluded before applying config, and any remaining unsupported/unknown section falls back to formatter-only settings so formatting still runs.
