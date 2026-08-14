---
title: Full-site SEO Audit
date: 2026-08-14 22:36:47 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the SEO audit of a website by crawling its sitemap and checking every page for errors in metadata, structured data, and link structure. It solves common issues that single-page graders may overlook and provides comprehensive reports on technical correctness across all pages of a site.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

This GitHub Action automates the SEO audit of a website by crawling its sitemap and checking every page for errors in metadata, structured data, and link structure. It solves common issues that single-page graders may overlook and provides comprehensive reports on technical correctness across all pages of a site.

## What's Changed


### Added
- **`--verbose` prints each request as it happens.** A run was silent from the
  first line to the last: on a 53-page site, `crawling …` and then twenty
  seconds of nothing before the whole report arrived at once. A slow site looked
  exactly like a hung one, and there was no way to tell which page it was
  sitting on.

  Covers every stage that takes time — sitemap discovery, the page crawl, the
  link and image sweeps, hreflang alternates, redirect-map rules, and PageSpeed
  Insights, which announces each measurement *before* making it because each one
  costs about twelve seconds.

  Plain lines rather than a spinner or a redrawing counter, deliberately: a long
  run is exactly the one whose output gets piped to a file or read back out of a
  CI log, and neither can show a cursor trick. A timeout arrives as status `0`,
  so a stall stays on screen rather than being overwritten.

  Written to **stderr**, so `--json` and `--md` are untouched. `--quiet` wins
  over `--verbose` — asking for silence and getting a running commentary would
  be the more surprising of the two.


