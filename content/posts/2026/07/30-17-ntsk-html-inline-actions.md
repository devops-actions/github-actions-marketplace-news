---
title: HTML Inline Actions
date: 2026-07-30 17:34:15 +00:00
tags:
  - ntsk
  - GitHub Actions
draft: false
repo: https://github.com/ntsk/html-inline-actions
marketplace: https://github.com/marketplace/actions/html-inline-actions
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action inlines CSS, JavaScript, and images into HTML files to reduce external dependencies. It automates the process of reducing script and style file sizes by embedding them directly into the HTML documents, which can improve load times and security. The action supports batch processing and allows customization of output filenames with prefixes or suffixes.
---


Version updated for **https://github.com/ntsk/html-inline-actions** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/html-inline-actions) to find the latest changes.

## Action Summary

This GitHub Action inlines CSS, JavaScript, and images into HTML files to reduce external dependencies. It automates the process of reducing script and style file sizes by embedding them directly into the HTML documents, which can improve load times and security. The action supports batch processing and allows customization of output filenames with prefixes or suffixes.

## What's Changed

### Fixed

- Scripts are no longer skipped when whitespace or a newline appears before the closing tag (#118)

  ```html
  <script src="index.js" defer>
  </script>
  ```

### Internal

- `dist/` now bundles `@actions/core` v3 and `@actions/glob` 0.7, which had been updated on `main` but never shipped.

**Full Changelog**: https://github.com/ntsk/html-inline-actions/compare/v1.1.0...v1.1.1
