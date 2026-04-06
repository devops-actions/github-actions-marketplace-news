---
title: Fallow - Codebase Health
date: 2026-04-06 21:43:34 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.14.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.14.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a codebase analysis tool designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplicate code, code complexity, architectural issues, and dependency problems, enabling developers to identify inefficiencies and maintain cleaner, more maintainable codebases. Built with Rust for high performance, it requires no configuration, supports real-time re-analysis, and integrates seamlessly with popular frameworks and monorepos.

## What's Changed

## HTML Entry File Parsing

Fallow now parses HTML files and follows referenced JS/CSS assets, fixing false-positive dead-code reports in **Vite**, **Parcel**, and similar HTML-first bundler setups.

### What's new

- **`<script src="...">`** tags (both `type="module"` and classic) create graph edges to referenced JS/TS files
- **`<link rel="stylesheet" href="...">`** creates edges to referenced CSS files  
- **`<link rel="modulepreload" href="...">`** creates edges to preloaded modules
- Remote URLs (`http://`, `https://`, `//`, `data:`) are automatically skipped
- HTML comments are stripped before matching (no false edges from commented-out tags)
- HTML files are **exempt from unused-file detection** (nothing imports HTML, so "unused" is meaningless)

### Effect

Given a Vite-style project:
```html
<!-- index.html -->
<link rel="stylesheet" href="./src/global.css" />
<script type="module" src="./src/entry.ts"></script>
```

Previously, `entry.ts`, `global.css`, and all their transitive imports would be falsely reported as dead code. Now they are correctly marked as reachable through the HTML entry point.

### Also in this release

- **Parcel `index.html` entry pattern** -- the Parcel plugin now auto-detects `index.html` as a runtime entry point
- **Coverage gaps inline suppression** -- `// fallow-ignore-next-line coverage-gaps` now works

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.14.0...v2.14.1
