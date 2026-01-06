---
title: Transform Agda HTML Documentation
date: 2026-01-06 13:16:27 +00:00
tags:
  - will-break-it
  - GitHub Actions
draft: false
repo: https://github.com/will-break-it/agda-web-docs-lib
marketplace: https://github.com/marketplace/actions/transform-agda-html-documentation
version: v1.0.8
dependentsNumber: "3"
---


Version updated for **https://github.com/will-break-it/agda-web-docs-lib** to version **v1.0.8**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/transform-agda-html-documentation) to find the latest changes.

## Action Summary

The **Agda Web Docs Library** GitHub Action transforms Agda HTML documentation into a modern, responsive web interface with features like sidebar navigation, dark/light theme support, full-text search, line highlighting, and type previews. It automates the process of enhancing Agda-generated documentation, making it more user-friendly and accessible, and integrates seamlessly with GitHub for source linking. This action is ideal for improving the usability of technical documentation, especially in collaborative and distributed development workflows.

## Release notes

Memory optimizations:
- Batch size reduced to 10 files
- Removed unnecessary shallow copies of mappings
- Added 100ms delay between batches for GC
