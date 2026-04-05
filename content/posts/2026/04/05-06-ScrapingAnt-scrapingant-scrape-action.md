---
title: ScrapingAnt Web Scrape
date: 2026-04-05 06:26:05 +00:00
tags:
  - ScrapingAnt
  - GitHub Actions
draft: false
repo: https://github.com/ScrapingAnt/scrapingant-scrape-action
marketplace: https://github.com/marketplace/actions/scrapingant-web-scrape
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ScrapingAnt/scrapingant-scrape-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scrapingant-web-scrape) to find the latest changes.

## Action Summary

The ScrapingAnt Web Scrape Action is a GitHub Action that automates web scraping tasks by fetching and processing data from any URL using rotating proxies, headless Chrome, and AI-powered extraction. It simplifies the retrieval of HTML, Markdown, or structured JSON data, enabling use cases like competitor monitoring, content change detection, SEO analysis, and AI data pipelines. Its key capabilities include rendering JavaScript-heavy pages, geo-targeting with proxies, and extracting structured information for integration into workflows.

## What's Changed

## ScrapingAnt Web Scrape Action

Scrape any URL with rotating proxies, headless Chrome, and AI extraction directly from your GitHub workflows.

### Features
- **HTML scraping** — get full rendered page HTML
- **Markdown conversion** — clean Markdown output, ideal for LLM/AI pipelines
- **AI data extraction** — extract structured JSON data from any page
- **Proxy rotation** — datacenter and residential proxies with geo-targeting
- **File output** — optionally save results to a file

### Quick Start

```yaml
- uses: scrapingant/scrape-action@v1
  with:
    api-key: ${{ secrets.SCRAPINGANT_API_KEY }}
    url: 'https://example.com'
```

See [README](https://github.com/ScrapingAnt/scrapingant-scrape-action#readme) for full documentation and examples.
