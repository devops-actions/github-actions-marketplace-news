---
title: AEORank Audit
date: 2026-03-10 13:25:18 +00:00
tags:
  - AEO-Content-Inc
  - GitHub Actions
draft: false
repo: https://github.com/AEO-Content-Inc/aeorank
marketplace: https://github.com/marketplace/actions/aeorank-audit
version: v2.3.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/AEO-Content-Inc/aeorank** to version **v2.3.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeorank-audit) to find the latest changes.

## Action Summary

AEORank is a GitHub Action that evaluates websites across 28 criteria to measure their visibility and citation potential by AI engines like ChatGPT, Claude, and Google AI. It automates the process of scoring content substance, organization, and technical elements, offering actionable insights to improve how AI discovers, parses, and references a site’s content. This tool is particularly useful for optimizing website structure and content to enhance AI-driven traffic and engagement.

## Release notes

### Bug Fix

- **Fix sitemapindex scoring** - When `/sitemap.xml` is a sitemapindex (common with Next.js, WordPress), `checkContentVelocity` and `checkSitemapCompleteness` now correctly follow sub-sitemaps to find `<lastmod>` and `<url>` entries. Previously scored 2/10 for sites with valid sitemaps behind an index.

### Details

Sites using sitemap indexes (e.g. Next.js `generateSitemaps()`, WordPress with multiple child sitemaps) were incorrectly penalized because the crawler only checked the index XML, which contains `<sitemap>` entries but no `<lastmod>` or `<url>` tags.

Now fetches up to 5 sub-sitemaps and appends their content so all downstream scoring checks work correctly.

**npm:** `npm install aeorank@2.3.2`
