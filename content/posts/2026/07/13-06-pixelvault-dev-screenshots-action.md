---
title: PixelVault — Upload Screenshots
date: 2026-07-13 06:19:48 +00:00
tags:
  - pixelvault-dev
  - GitHub Actions
draft: false
repo: https://github.com/pixelvault-dev/screenshots-action
marketplace: https://github.com/marketplace/actions/pixelvault-upload-screenshots
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pixelvault-dev/screenshots-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pixelvault-upload-screenshots) to find the latest changes.

## What's Changed

First release of the PixelVault **Upload Screenshots** GitHub Action.

Host CI screenshots (visual-regression diffs, Playwright/Cypress failures) on PixelVault and drop them into the pull request — no more digging through zip artifacts.

```yaml
- uses: pixelvault-dev/screenshots-action@v1
  if: failure()
  with:
    api-key: ${{ secrets.PIXELVAULT_API_KEY }}
    path: test-results
    pattern: "*-diff.png"
    visibility: private
```

- Globs screenshots → uploads into one PixelVault **collection** via `POST /v1/images/batch` (chunked, idempotent by `collection-name`).
- Private by default → signed URLs; posts a **sticky PR comment** with a diff table.
- Zero runtime dependencies (runner Node built-ins only).

Reference `@v1` for the moving major tag, or `@v0.1.0` to pin.
