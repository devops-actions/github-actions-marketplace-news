---
title: SVG Terminal Generator
date: 2026-05-31 06:32:20 +00:00
tags:
  - williamzujkowski
  - GitHub Actions
draft: false
repo: https://github.com/williamzujkowski/svg-terminal
marketplace: https://github.com/marketplace/actions/svg-terminal-generator
version: v1.2.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/williamzujkowski/svg-terminal** to version **v1.2.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svg-terminal-generator) to find the latest changes.

## Action Summary

The `svg-terminal` GitHub Action generates animated, self-contained SVG terminal outputs from a declarative YAML configuration. It automates the creation of visually engaging terminal animations for use in contexts like GitHub profiles, requiring no external scripts or assets. Key features include customizable themes, pre-built animation blocks, schema validation for security, and support for dynamic data and reduced-motion preferences.

## What's Changed

## v1.2.3 — 2026-05-30 — fix: static fallback no longer clips tall/scrolling content

- **`generateStatic` auto-height grows to full content, ignoring `maxHeight` (`#129`).** The animated SVG scrolls when content exceeds the `maxHeight` viewport, but a *static* SVG can't scroll — so clamping it to `maxHeight` permanently clipped the overflow. Static now expands to the full content height (`minHeight` still applies). This makes a tall/scrolling animated terminal pair with a **complete** reduced-motion static fallback (the `<picture>` pattern). The animated path is unchanged (still clamps + scrolls). Byte-safe: no demo/snapshot drift (the change only affects static renders whose content exceeds `maxHeight`).

+2 tests (static expands past maxHeight; still honors minHeight). 466 tests.


