---
title: AccessPulse WCAG Scan
date: 2026-04-06 14:06:08 +00:00
tags:
  - AccessPulse
  - GitHub Actions
draft: false
repo: https://github.com/AccessPulse/scan
marketplace: https://github.com/marketplace/actions/accesspulse-wcag-scan
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/AccessPulse/scan** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accesspulse-wcag-scan) to find the latest changes.

## Action Summary

The **AccessPulse WCAG Scan** GitHub Action automates website accessibility testing by scanning URLs for WCAG 2.2 AA compliance using the axe-core library. It evaluates accessibility issues, provides a score (0–100), lists violations, and fails the CI build if the score falls below a configurable threshold. This action helps developers ensure their web applications meet accessibility standards efficiently during continuous integration workflows.

## What's Changed

Initial release.

## AccessPulse WCAG 2.2 Scan

Scan any URL for WCAG 2.2 AA accessibility violations in CI. Fails the build if your accessibility score drops below a threshold you set.

```yaml
- uses: accesspulse/scan@v1
  with:
    url: https://your-site.com
    threshold: 80
```

Zero dependencies — pure Node.js built-ins. See README for full usage.
