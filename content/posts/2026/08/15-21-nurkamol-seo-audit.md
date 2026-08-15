---
title: Full-site SEO Audit
date: 2026-08-15 21:41:40 +00:00
tags:
  - nurkamol
  - GitHub Actions
draft: false
repo: https://github.com/nurkamol/seo-audit
marketplace: https://github.com/marketplace/actions/full-site-seo-audit
version: v1.8.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The action checks every page of a site's sitemap for SEO, metadata, and structured data issues to ensure technical correctness across all pages, including cross-page links, broken links, and performance issues. It provides comprehensive reports in HTML, Markdown, and JSON format, helping users maintain a high level of technical quality on their websites without relying solely on free SEO tools that may overlook certain problems or estimates performance metrics.
---


Version updated for **https://github.com/nurkamol/seo-audit** to version **v1.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/full-site-seo-audit) to find the latest changes.

## Action Summary

The action checks every page of a site's sitemap for SEO, metadata, and structured data issues to ensure technical correctness across all pages, including cross-page links, broken links, and performance issues. It provides comprehensive reports in HTML, Markdown, and JSON format, helping users maintain a high level of technical quality on their websites without relying solely on free SEO tools that may overlook certain problems or estimates performance metrics.

## What's Changed


### Added
- **Two checks on the image `title` attribute** — `img-title-duplicates-alt`
  and `img-title-on-decorative`, both notes.

  Deliberately *not* a "missing title" check, which is what tools normally ship
  here. A `title` is a hover tooltip: invisible on touch, unread by Google, and
  W3C guidance discourages putting anything that matters in it. An image without
  one has nothing wrong with it, so that check would fire on nearly every image
  on nearly every site.

  What is worth reporting is when `title` contradicts something on the same tag.
  Repeating `alt` verbatim adds nothing for a sighted visitor and is read twice
  by a screen reader that surfaces both — usually one CMS field populating both
  attributes. And a `title` on an image declared decorative by `alt=""` or
  `role="presentation"` is markup saying "ignore this" while attaching a tooltip
  to it; one of the two statements is wrong.

  Verified against wpbeginner.com, which carries a `title` on 26 of its 117
  images: 14 identical to the `alt`, 6 on decorative images.


