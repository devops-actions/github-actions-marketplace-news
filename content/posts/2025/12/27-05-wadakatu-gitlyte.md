---
title: GitLyte Site Generator
date: 2025-12-27 05:27:29 +00:00
tags:
  - wadakatu
  - GitHub Actions
draft: false
repo: https://github.com/wadakatu/gitlyte
marketplace: https://github.com/marketplace/actions/gitlyte-site-generator
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/wadakatu/gitlyte** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitlyte-site-generator) to find the latest changes.

## Action Summary

GitLyte is a GitHub Action that automates the creation of custom, visually appealing, and responsive static websites for GitHub repositories using AI-powered design tools like GPT-4, Claude, or Gemini. It generates tailored landing pages based on repository data, complete with features like GitHub statistics, SEO optimization, and a ready-to-deploy output for GitHub Pages. This action simplifies the process of showcasing projects professionally without requiring coding expertise.

## Release notes

## ✨ New Features

### SEO & Open Graph Support
- Custom page title, meta description, and keywords
- Open Graph and Twitter Card meta tags
- Canonical URL support

### Automatic Sitemap & Robots.txt
- Generates `sitemap.xml` for search engine crawlers
- Generates `robots.txt` with customizable rules
- Configurable via action inputs or `.gitlyte.json`

### GitHub Statistics Display
- Shows stars, forks, watchers, and open issues on generated sites
- Optional latest release version and contributor count
- Beautifully integrated into the AI-generated design

### Contributors Page Generation
- Dedicated `contributors.html` page with contributor avatars and stats
- Pagination support for large contributor lists
- Bot filtering (excludes dependabot, etc.)
- Configurable max contributors limit (1-500)

## 🔧 Improvements

- Improved error handling with specific HTTP status codes (401, 403, 500+)
- Added pagination safety limits to prevent infinite loops
- Better fallback handling with warning logs for incomplete data
- Enhanced config merge logic between action inputs and `.gitlyte.json`

## 📦 New Action Inputs

| Input | Default | Description |
|-------|---------|-------------|
| `seo-title` | - | Custom page title for SEO |
| `seo-description` | - | Meta description for search engines |
| `og-image-path` | - | Path to Open Graph image |
| `twitter-handle` | - | Twitter/X handle for Twitter Card |
| `site-url` | - | Site URL for canonical link |
| `generate-sitemap` | `true` | Generate sitemap.xml |
| `generate-robots` | `true` | Generate robots.txt |
| `show-stats` | `true` | Show GitHub statistics |
| `fetch-contributors` | `false` | Fetch contributor count |
| `fetch-releases` | `false` | Fetch latest release version |
| `generate-contributors-page` | `false` | Generate contributors page |
| `max-contributors` | `50` | Max contributors to display (1-500) |

## 📖 Full Changelog
https://github.com/wadakatu/gitlyte/compare/v1.1.0...v1.2.0

