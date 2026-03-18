---
title: Hwaro Deploy to Pages
date: 2026-03-18 13:34:09 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.7.1
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.7.1**.
- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and high-performance static site generator designed to convert Markdown content with TOML front matter and Jinja2-compatible templates into optimized static websites. It automates tasks such as incremental builds, content templating, SEO optimization, and deployment, making it an efficient solution for creating and managing static sites. Key features include parallel processing, live-reload dev server, built-in shortcodes, advanced SEO tools, multilingual support, and integrated deployment configurations for platforms like GitHub Actions, Netlify, and Vercel.

## Release notes

## What's Changed

### Added
- Bundled DejaVu Sans Bold font as fallback for OG image PNG rendering (no system font required)
- `font_path` config option for custom font in OG image generation
- Image processing and LQIP config snippets to init scaffolds and `doctor` command

### Changed
- OG PNG rendering always available thanks to bundled font fallback (custom font > system font > bundled font priority)
- Refactored font loading logic in `OgPngRenderer` for cleaner initialization

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.7.0...v0.7.1
