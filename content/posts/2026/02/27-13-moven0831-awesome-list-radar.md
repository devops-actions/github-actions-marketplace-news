---
title: Awesome List Radar
date: 2026-02-27 13:18:15 +00:00
tags:
  - moven0831
  - GitHub Actions
draft: false
repo: https://github.com/moven0831/awesome-list-radar
marketplace: https://github.com/marketplace/actions/awesome-list-radar
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/moven0831/awesome-list-radar** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/awesome-list-radar) to find the latest changes.

## Action Summary

This GitHub Action, **Awesome List Radar**, automates the discovery and suggestion of new content for curated "awesome lists" by scanning GitHub repositories, arXiv papers, and blog feeds. It reduces manual curation efforts by filtering, classifying, and scoring relevant content using an LLM, then filing GitHub issues with suggested entries for maintainers to review. It addresses challenges such as list decay, link rot, and maintainer burnout, ensuring lists remain up-to-date and comprehensive.

## Release notes

## Awesome List Radar v1.1.0

### New: Web Pages Source

Most blog feeds point to HTML pages without RSS endpoints. This release adds a new `web_pages` source type that uses LLM-powered HTML scraping to extract article links from any blog listing page.

#### How it works

1. Fetches HTML from configured URLs
2. Cleans HTML (strips scripts, styles, nav, footer, header)
3. Converts `<a>` tags to markdown link format
4. Sends cleaned text to Claude Haiku to extract `[{title, url}]` article links
5. Resolves relative URLs and applies keyword filtering

#### Configuration

```yaml
sources:
  web_pages:
    urls:
      - https://example.com/blog
      - https://other.dev/posts
    keywords:
      - WebGPU
      - GPU acceleration
```

### Changes

- Add `"web_page"` to Candidate source union type and `pageName` metadata field
- Add `WebPagesSourceSchema` (urls + keywords) to config with Zod validation
- Create `web_pages` collector with HTML cleaning, LLM extraction, relative URL resolution, and keyword filtering
- Wire `web_pages` into main `collect()` pipeline and keyword aggregation
- Add 21 new test cases (105 total)

**Full Changelog**: https://github.com/moven0831/awesome-list-radar/compare/v1.0.0...v1.1.0
