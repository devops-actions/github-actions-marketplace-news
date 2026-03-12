---
title: A11y Audit Action
date: 2026-03-12 21:40:10 +00:00
tags:
  - Floopion
  - GitHub Actions
draft: false
repo: https://github.com/Floopion/a11y-audit-action
marketplace: https://github.com/marketplace/actions/a11y-audit-action
version: v1.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Floopion/a11y-audit-action** to version **v1.3.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/a11y-audit-action) to find the latest changes.

## Action Summary

The `a11y-audit-action` is a free, open-source GitHub Action designed to automate WCAG 2.2 accessibility audits on rendered web pages. It integrates seamlessly with pull requests, providing detailed, collapsible comments on accessibility violations, and offers zero-configuration setup. By scanning rendered pages, supporting multi-page crawling, and tracking regressions with baseline files, it helps developers identify and address accessibility issues early in the development process, ensuring compliance and improving user experience.

## Release notes

- Exponential backoff on 429 rate limits (15s → 30s → 60s, 3 retries)
- Handles free-tier LLM rate limits gracefully instead of failing immediately
- Base delay between calls increased from 1.5s to 3s
