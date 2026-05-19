---
title: Lingo.Dev AI Localization
date: 2026-05-19 15:23:45 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.135.1
dependentsNumber: "87"
actionType: Composite
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.135.1**.

- This action is used across all versions by **87** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## Action Summary

The Lingo GitHub Action automates continuous localization workflows directly within GitHub Actions, integrating with the Lingo.dev localization platform. It streamlines the process of managing translations by leveraging stateful translation APIs that reduce errors and maintain consistency across glossaries, brand voice, and locale-specific instructions. This action simplifies and accelerates localization tasks, making it ideal for teams aiming to maintain high-quality, consistent translations in CI/CD pipelines.

## What's Changed

### Patch Changes

-   [#2091](https://github.com/lingodotdev/lingo.dev/pull/2091) [`bf06078`](https://github.com/lingodotdev/lingo.dev/commit/bf060783c6824062543780fd957ca4f8fe5fe733) Thanks [@cherkanovart](https://github.com/cherkanovart)! - Fix `--frozen` falsely reporting "Source file has been updated" after a no-op `run`. When `lingo.dev run` finds nothing to translate (source matches target), it now persists source checksums to `i18n.lock` so a subsequent `--frozen` run has a baseline to validate against.

