---
title: CodeVitals Post Deploy Audit
date: 2026-01-17 13:20:39 +00:00
tags:
  - codevitalsteam
  - GitHub Actions
draft: false
repo: https://github.com/codevitalsteam/setup
marketplace: https://github.com/marketplace/actions/codevitals-post-deploy-audit
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/codevitalsteam/setup** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codevitals-post-deploy-audit) to find the latest changes.

## Action Summary

The **CodeVitals SEO and Performance Audit** GitHub Action automates post-deployment performance and SEO audits of live websites using Lighthouse and customizable SEO checks. It helps teams identify and address performance regressions and SEO issues immediately after deployment, preventing negative impacts on user experience, search rankings, and revenue. Key features include mobile and desktop Lighthouse audits, Core Web Vitals monitoring, customizable thresholds and rules, and the ability to target specific routes for auditing.

## Release notes

## CodeVitals v1.0.0

First stable release of the CodeVitals GitHub Action, enabling teams to automatically run post-deployment Lighthouse and SEO audits against live sites.

### Features

- Lighthouse audits (mobile and desktop)
- Core Web Vitals thresholds (LCP, FCP, CLS, INP, TBT)
- Configurable SEO audits including titles, meta descriptions, canonicals, robots, links, images, headings, and network rules
- Repository-based configuration using `.codevitals/config.js` and `.codevitals/routes.js`
- YAML overrides for routes, devices, and user agent
- Designed for post-deploy usage (no local build required)

### Defaults and behavior

- Default user agent: CodeVitalsBot/1.0
- Sitemap validation is disabled by default due to performance and resource cost
- Sensible defaults provided for routes and devices

### Stability

- First stable release
- Safe to pin using `codevitalsteam/setup@v1.0.0`

### License
MIT
