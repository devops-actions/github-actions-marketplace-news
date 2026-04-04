---
title: Hwaro Deploy to Pages
date: 2026-04-04 21:41:20 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.10.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.10.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and fast static site generator written in Crystal, designed to process Markdown content with TOML front matter and Jinja2-compatible templates. It automates building high-performance static sites with features like parallel processing, incremental caching, live-reloading during development, and SEO optimization. Key capabilities include advanced content management, templating, multilingual support, image processing, and deployment to platforms like GitHub Pages, Netlify, and Vercel.

## What's Changed

## v0.10.0

### Added
- `--include-future` flag for `build`/`serve` to include future-dated content (excluded by default)
- `feeds.full_content` option to control RSS/Atom feed content output (full HTML vs summary)
- Block shortcode syntax without parentheses (`{% name key="val" %}body{% end %}`)
- Category grouping to `tool` help output for better readability (#300)
- Duplicate slug detection with warnings during render phase
- `{{ hreflang_tags }}` and `{{ page_language }}` template variables for multilingual support
- 97 unit tests covering edge cases across 7 spec files (#282)

### Changed
- Enable footnotes, task lists, and definition lists Markdown extensions by default (#292)
- Skip future-dated content by default, consistent with Hugo/Zola behavior (#291)
- Update landing page design with ember particle effect and showcase cards

### Fixed
- XSS via front matter injection in templates (`page.title`, `site.title`, `page.description`) (#295, #296)
- HTML tag stripping in search index titles to prevent script injection (#287)
- `search.json` URLs missing `base_url` path for subpath deployments (#298)
- Infinite loop in `preprocess_definition_lists` with empty term (#285)
- Empty page title producing ` - Site Name` instead of `Site Name` in `<title>` tag (#288)
- Deduplicate URLs in sitemap, search index, and RSS feed generation
- Incremental rebuild not respecting `--include-expired` and `--include-future` flags

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.9.1...v0.10.0
