---
title: Hwaro Deploy to Pages
date: 2026-04-11 21:46:18 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.11.1
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.11.1**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and high-performance static site generator written in Crystal that transforms Markdown with TOML front matter and Jinja2-compatible templates into static websites. It automates tasks such as content processing, templating, site optimization, SEO configuration, and deployment, streamlining the website creation and management process. Key features include parallel builds, live-reloading development server, multilingual support, image processing, and built-in support for modern web standards like PWA and AMP.

## What's Changed

## v0.11.1

### Added
- Nix flake environment for development and packaging
- Nix installation guide to docs
- Tests for i18n filters, shortcode nesting, and deployer helpers

### Changed
- Improve AGENTS.md with missing sections and compressed structure
- Update showcase examples in landing page

### Fixed
- SSRF, CRLF injection, integer overflow, and CSWSH security vulnerabilities
- Integer overflow and memory leak in image processor
- `serve -p` flag not reflecting in `base_url` when `--base-url` is unset

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.11.0...v0.11.1
