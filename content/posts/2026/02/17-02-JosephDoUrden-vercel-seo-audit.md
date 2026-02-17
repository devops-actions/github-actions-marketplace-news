---
title: Vercel SEO Audit
date: 2026-02-17 02:56:35 +00:00
tags:
  - JosephDoUrden
  - GitHub Actions
draft: false
repo: https://github.com/JosephDoUrden/vercel-seo-audit
marketplace: https://github.com/marketplace/actions/vercel-seo-audit
version: v0.5.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/JosephDoUrden/vercel-seo-audit** to version **v0.5.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vercel-seo-audit) to find the latest changes.

## Action Summary

The `vercel-seo-audit` GitHub Action is a developer-friendly CLI tool designed to identify and resolve SEO issues that prevent Next.js sites hosted on Vercel from being properly crawled and indexed by search engines like Google. It automates the detection of common misconfigurations such as redirect loops, missing robots.txt or sitemap files, noindex headers, canonical mismatches, and specific quirks related to Vercel and Next.js deployments. By providing actionable insights and detailed reports, the tool simplifies troubleshooting and enhances the visibility of Next.js sites in search results.

## Release notes

## What's New

- **GitHub Action** — Run audits with a single `uses:` step, no manual Node.js setup needed (#11)

### Usage

```yaml
- uses: JosephDoUrden/vercel-seo-audit@v1
  with:
    url: https://yusufhan.dev
    strict: true
    report: json
```

All CLI flags are supported as inputs: `url`, `strict`, `user-agent`, `pages`, `report`, `timeout`, `verbose`.

Outputs: `exit-code`, `report-path`
