---
title: A11y Audit Action
date: 2026-03-09 21:50:28 +00:00
tags:
  - Floopion
  - GitHub Actions
draft: false
repo: https://github.com/Floopion/a11y-audit-action
marketplace: https://github.com/marketplace/actions/a11y-audit-action
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Floopion/a11y-audit-action** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/a11y-audit-action) to find the latest changes.

## Action Summary

The `a11y-audit-action` is a GitHub Action that automates WCAG 2.2 accessibility audits for fully rendered web pages using Playwright and axe-core. It identifies accessibility issues, categorizes them by severity, and posts detailed, collapsible comments directly on pull requests. This action eliminates the need for complex configurations, supports auto-detection of deployment preview URLs, and provides a free, open-source solution for ensuring accessibility compliance during development workflows.

## Release notes

### Docs
- Add required `permissions` block to usage examples in README
- Note explaining `pull-requests: write` is needed for PR comments
