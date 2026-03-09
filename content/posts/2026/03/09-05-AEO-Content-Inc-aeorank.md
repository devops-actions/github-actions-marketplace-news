---
title: AEORank Audit
date: 2026-03-09 05:58:11 +00:00
tags:
  - AEO-Content-Inc
  - GitHub Actions
draft: false
repo: https://github.com/AEO-Content-Inc/aeorank
marketplace: https://github.com/marketplace/actions/aeorank-audit
version: v1.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/AEO-Content-Inc/aeorank** to version **v1.5.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeorank-audit) to find the latest changes.

## Action Summary

AEORank is a tool and GitHub Action designed to evaluate websites for AI engine visibility based on 26 key criteria, such as content structure, discoverability, and authority. It automates the process of auditing a site's AI readiness, generating detailed scorecards, reports, and improvement recommendations to optimize how content is discovered and cited by AI engines like ChatGPT and Google AI. This action helps developers and content creators streamline website optimization and enforce quality standards in CI/CD pipelines.

## Release notes

## Per-Page AEO Scoring

Each crawled page now gets an individual **AEO score (0-100)** evaluated against 14 of 26 criteria that apply at page level. Instead of only seeing "your site scores 62," you now see "your /about page scores 45, your /blog/guide scores 78."

### What's New

- **14 per-page scoring functions** — Schema markup, Q&A format, clean HTML, FAQ section, original data, query-answer alignment, content freshness, table/list extractability, direct answer density, semantic HTML, fact density, definition patterns, canonical URL, visible date signal
- **CLI output** — `[AEO: N]` score next to each page, plus average/top/bottom summary stats
- **HTML reports** — New "AEO Score" column in pages table with average score summary
- **Programmatic API** — `scorePage(html, url?)` and `scoreAllPages(siteData)` exports
- **New types** — `PageScoreResult`, `PageCriterionScore` exported from the package

### CLI Example

```
Pages reviewed (47):
  Homepage  https://example.com                      0 issues [AEO: 72]
  Blog      https://example.com/blog/post            2 issues [AEO: 58]

  Average page AEO score: 62/100
  Top:    /blog/medicare-walkers-guide (92)
  Bottom: /thank-you (23)
```

### API Example

```ts
import { scorePage, scoreAllPages } from 'aeorank';

const result = scorePage(html, url);
console.log(result.aeoScore);         // 0-100
console.log(result.criterionScores);  // 14 per-criterion scores
```

### Architecture

14 of 26 criteria apply per-page. The remaining 12 (llms.txt, robots.txt, sitemap, RSS, entity consistency, internal linking, content licensing, author schema, content velocity, schema coverage, speakable schema, content cannibalization) remain site-level only.

**Full Changelog**: https://github.com/AEO-Content-Inc/aeorank/compare/v1.3.0...v1.5.0
