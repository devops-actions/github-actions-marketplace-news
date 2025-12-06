---
title: Auto-Translator
date: 2025-12-05 21:04:30 +00:00
tags:
  - sircharlo
  - GitHub Actions
draft: false
repo: https://github.com/sircharlo/github-translate-action
marketplace: https://github.com/marketplace/actions/auto-translator
version: v1.0.4
dependentsNumber: "1"
---


Version updated for **https://github.com/sircharlo/github-translate-action** to version **v1.0.4**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-translator) to find the latest changes.

## Release notes

## [1.0.4] - 2025-12-05

### Added

- Section filtering feature
  - New `SECTIONS_TO_SKIP` input parameter to exclude specific markdown sections from translation
  - Accepts comma-separated list of heading names (case-insensitive)
  - Useful for skipping sections like "Confirmations", "Screenshots", "Relevant log output", etc.
  - Skipped sections are preserved in their original language and appended after translation
  - Logs which sections are being skipped for visibility

### Fixed

- Markdown heading spacing issues
  - Automatically fixes malformed headings (e.g., `###Heading` → `### Heading`)
  - Applied to both filtered content and translated output
  - Ensures proper markdown rendering in GitHub
- Multi-line bot note formatting
  - Bot notes with multiple lines are now properly formatted with `######` prefix on each line
  - Improves readability of custom bot messages
