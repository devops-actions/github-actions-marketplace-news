---
title: Hwaro Deploy to Pages
date: 2026-04-07 21:56:18 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.11.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.11.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and high-performance static site generator built in Crystal, designed to convert Markdown content with TOML front matter and Jinja2-compatible templates into static websites. It automates tasks such as parallel builds, incremental caching, SEO optimization, content scaffolding, and deployment to platforms like GitHub Pages or Netlify. Key features include live-reloading development servers, advanced content management, multilingual support, built-in shortcodes, and tools for generating sitemaps, RSS feeds, and structured metadata.

## What's Changed

## v0.11.0

### Added
- `book` and `book-dark` scaffold types with sidebar navigation (#320)
- Cross-section flat navigation (`page.lower`/`page.higher`) like mdBook/Docusaurus (#321)
- `tool stats`, `tool validate`, `tool unused-assets`, `tool export` commands
- Incremental OG image generation with content-hash caching
- Scaffold preview screenshots and `preview_gallery` shortcode in docs

### Changed
- Refactor `doctor` command alongside new tool subcommands
- Update CLI docs and completion specs for new tool subcommands
- `page.lower`/`page.higher` now follows flat reading order across sections

### Fixed
- Deploy failure on large sites by suppressing git commit output
- Unprocessed template variable in book scaffold content
- Prev arrow overlapping sidebar when open
- Sidebar flash on load in book scaffold
- APK build failures (tracedeps, strip, CARCH for cross-arch packaging)
- AUR publish workflow failures

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.10.1...v0.11.0
