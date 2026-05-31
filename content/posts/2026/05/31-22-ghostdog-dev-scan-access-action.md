---
title: Scan Access WCAG Audit
date: 2026-05-31 22:16:24 +00:00
tags:
  - ghostdog-dev
  - GitHub Actions
draft: false
repo: https://github.com/ghostdog-dev/scan-access-action
marketplace: https://github.com/marketplace/actions/scan-access-wcag-audit
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ghostdog-dev/scan-access-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scan-access-wcag-audit) to find the latest changes.

## Action Summary

The `scan-access` GitHub Action performs automated WCAG accessibility audits of web applications directly within your CI/CD pipeline. Using Playwright, it renders your app, captures fully rendered DOMs for specified routes, and analyzes them with the axe-core engine to identify accessibility issues, generate compliance scores, and provide detailed reports, including SARIF and optional AI-generated fixes. This action streamlines accessibility testing, helping developers proactively identify and address potential compliance risks without deploying their app externally.

## What's Changed

## v2.0.0 — render-in-CI mode

The action now renders your app **inside your own CI runner** with headless Chromium (Playwright), inlines the applied CSS, serializes the rendered DOM, and sends it to `POST /api/v1/scans/code`. This replaces the legacy `url` crawl mode.

### Usage
```yaml
- run: npm run build && npx serve -l 4173 ./dist &
- run: npx playwright@1.60.0 install --with-deps chromium
- uses: ghostdog-dev/scan-access-action@v2
  with:
    api-key: ${{ secrets.SCAN_ACCESS_API_KEY }}
    app-url: http://localhost:4173
    routes: |
      /
      /pricing
```

### Breaking changes
- Inputs `target-url` / `store-id` removed → use `app-url` / `routes`.
- The runner must install the Chromium binary matching `playwright-core@1.60.0` before the step.

See the README for caching, SARIF upload, and limits.
