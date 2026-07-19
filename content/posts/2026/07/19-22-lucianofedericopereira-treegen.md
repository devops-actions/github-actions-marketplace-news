---
title: treegen — File Tree for README
date: 2026-07-19 22:18:55 +00:00
tags:
  - lucianofedericopereira
  - GitHub Actions
draft: false
repo: https://github.com/lucianofedericopereira/treegen
marketplace: https://github.com/marketplace/actions/treegen-file-tree-for-readme
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action converts Markdown files into a directory tree, providing options to render the tree in ASCII, SVG, or collapsible format, with support for descriptions and excluding certain files. It supports themes for SVG rendering and can be integrated into any repository without additional dependencies.
---


Version updated for **https://github.com/lucianofedericopereira/treegen** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/treegen-file-tree-for-readme) to find the latest changes.

## Action Summary

This GitHub Action converts Markdown files into a directory tree, providing options to render the tree in ASCII, SVG, or collapsible format, with support for descriptions and excluding certain files. It supports themes for SVG rendering and can be integrated into any repository without additional dependencies.

## What's Changed

🌳 First release of treegen.

Turn `[[files]]` markers (or `<!-- filetree -->` blocks) into a directory tree
in your README — kept in sync on every push.

- **Three styles:** ASCII, a theme-aware **SVG** with folder icons, and a native **collapsible** `<details>` tree
- **SVG colours:** `github` (default, matches GitHub) + blue/green/red/orange/yellow/purple/pink/gray, light & dark
- **HTML output** mode for landing pages / GitHub Pages
- **CI check mode**, per-marker options, `.gitignore`-aware
- Pure standard-library Python · `mypy --strict` · zero runtime deps

Usage: `uses: lucianofedericopereira/treegen@v1`
