---
title: Transform Agda HTML Documentation
date: 2026-01-05 21:19:52 +00:00
tags:
  - will-break-it
  - GitHub Actions
draft: false
repo: https://github.com/will-break-it/agda-web-docs-lib
marketplace: https://github.com/marketplace/actions/transform-agda-html-documentation
version: v1.0.4
dependentsNumber: "3"
---


Version updated for **https://github.com/will-break-it/agda-web-docs-lib** to version **v1.0.4**.
- This action is used across all versions by **3** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/transform-agda-html-documentation) to find the latest changes.

## Action Summary

The **Agda Web Docs Library** GitHub Action transforms Agda-generated HTML documentation into a modern, user-friendly format with features like responsive design, dark/light theme support, full-text search, and GitHub integration. It automates the process of enhancing Agda documentation with advanced web functionality, such as type previews, line highlighting with shareable URLs, and mobile-friendly layouts, making it easier to navigate and use. This action is particularly useful for developers looking to improve the accessibility and usability of their Agda project documentation.

## Release notes

## Bug Fixes

- **Fixed self-referential links with filename prefix** - Agda generates self-referential links with the filename (e.g., `Leios.Linear.html#588` instead of just `#588`). These were incorrectly treated as cross-file references and always pointed to B1. Now correctly detects same-file references regardless of whether the filename is included in the href.

This is a follow-up fix to v1.0.3 which addressed the position-to-block mapping but missed this edge case.

Fixes #1
