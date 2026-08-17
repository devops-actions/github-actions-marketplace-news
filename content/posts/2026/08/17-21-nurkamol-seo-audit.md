---
title: Full-site SEO Audit
date: 2026-08-17 21:54:54 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.10.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `full-site-seo-audit` is designed to crawl a website's sitemap and thoroughly check every page for SEO, metadata, and structured data issues that single-page graders might miss. This tool automates the process of identifying technical correctness across all pages and provides a comprehensive report in various formats, including Markdown, HTML, and JSON. It also includes features like cross-page checks, broken links, regression guards, and performance metrics via Google's PSI tool. The action is optimized for use in CI environments and has zero dependencies, making it easy to integrate into workflows without additional setup.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.10.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

The GitHub Action `full-site-seo-audit` is designed to crawl a website's sitemap and thoroughly check every page for SEO, metadata, and structured data issues that single-page graders might miss. This tool automates the process of identifying technical correctness across all pages and provides a comprehensive report in various formats, including Markdown, HTML, and JSON. It also includes features like cross-page checks, broken links, regression guards, and performance metrics via Google's PSI tool. The action is optimized for use in CI environments and has zero dependencies, making it easy to integrate into workflows without additional setup.

## What's Changed


### Fixed
- **The `www.` host variant is only tried for a host that can have one.** It was
  built by string concatenation from whatever host was being audited, so
  auditing `http://127.0.0.1:8080` asked a resolver for `www.127.0.0.1` — a
  question with no sensible answer, which a resolver may decline instantly or
  sit on for as long as it likes.

  That made the test suite stall unpredictably, since every fixture test runs
  against `127.0.0.1`. It also affected anyone auditing a local build on
  `localhost`, where the same two requests were pure waste.

  IP addresses and single-label hostnames are now skipped; a registrable domain
  is checked exactly as before. Verified by intercepting `dns.lookup` during a
  fixture run — zero hostname resolutions, everything a literal IP — and by
  confirming a real domain still reports its `www.` redirect chain.


