---
title: Hwaro Deploy to Pages
date: 2026-03-27 21:45:48 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.9.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.9.0**.
- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and fast static site generator written in Crystal that processes Markdown content with TOML front matter and Jinja2-compatible templates to build high-performance static websites. It automates tasks like parallel builds, incremental caching, SEO optimization, and content management while supporting advanced features such as live reload, multilingual support, image processing, and PWA generation. This tool is designed to optimize website development workflows, offering robust customization, scalability, and deployment options across multiple platforms.

## Release notes

## What's Changed
### Added
- Notion, Obsidian, Hexo, Astro, and Eleventy importers for `tool import`
- Unified `CacheManager` for centralized cache layer management
- `logo_position` option for auto OG image generation
- Unit tests for TextUtils, SortUtils, Sitemap, and ConfigSnippets

### Changed
- Optimize incremental rebuild to skip unchanged content parsing
- Improve serve mode incremental rebuild with debounce and simplified strategy
- Unify config snippets as single source of truth for doctor detection
- Extract shared logo_coordinates helper and eliminate magic numbers

### Fixed
- robots.txt merging bug and remove GPTBot from defaults
- Obsidian syntax bugs and Eleventy merge issues
- Debounce race condition and order-aware merge in serve rebuild


**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.8.0...v0.9.0
