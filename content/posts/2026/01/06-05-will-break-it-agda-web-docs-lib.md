---
title: Transform Agda HTML Documentation
date: 2026-01-06 05:33:27 +00:00
tags:
  - will-break-it
  - GitHub Actions
draft: false
repo: https://github.com/will-break-it/agda-web-docs-lib
marketplace: https://github.com/marketplace/actions/transform-agda-html-documentation
version: v1.0.6
dependentsNumber: "3"
---


Version updated for **https://github.com/will-break-it/agda-web-docs-lib** to version **v1.0.6**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/transform-agda-html-documentation) to find the latest changes.

## Action Summary

The "Agda Web Docs Library" GitHub Action enhances Agda-generated HTML documentation by transforming it into a modern, responsive, and feature-rich web interface. It automates the integration of features such as dark/light themes, full-text search, line highlighting with shareable URLs, type previews, and GitHub source links, making it easier to navigate, share, and explore Agda documentation. This action streamlines the process of modernizing documentation and is particularly useful for improving the accessibility and usability of complex codebases.

## Release notes

## Performance

- **Batch processing for large documentation sets** - Files are now processed in batches of 50, with a fresh transformer instance created for each batch. This allows garbage collection to reclaim memory between batches, preventing heap exhaustion on large documentation sets (600+ files).

- Added `cleanup()` method for explicit resource release
- GC hints between batches when `--expose-gc` is enabled

## Previous Fixes (v1.0.3 - v1.0.5)

- Fixed anchor links for multi-block pages
- Fixed self-referential links with filename prefix
- Added explicit JSDOM cleanup

Fixes #1
