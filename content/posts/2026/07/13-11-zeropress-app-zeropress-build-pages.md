---
title: Build ZeroPress Pages
date: 2026-07-13 11:26:18 +00:00
tags:
  - zeropress-app
  - GitHub Actions
draft: false
repo: https://github.com/zeropress-app/zeropress-build-pages
marketplace: https://github.com/marketplace/actions/build-zeropress-pages
version: v0.6.13
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `@zeropress/build-pages` GitHub Action automates the process of converting Markdown files and public assets into a static ZeroPress site. It performs the following key capabilities:
  1. It builds the static output, suitable for deployment to modern hosting platforms such as GitHub Pages, Cloudflare Pages, Netlify, or Vercel.
  2. The generated output consists of plain static files that can be deployed at the origin root of a static hosting provider.
  3. Build Pages serves as the Markdown-source document publishing entry point for ZeroPress and is used by other workflows to build from `preview-data.json` and a theme, or publish after managed authoring workflows in ZeroPress Studio.
  
  The action generates `preview-data.json`, stages public files, and prepares the site data, ultimately providing static HTML pages and assets that can be deployed using a hosting provider's deployment action.
---


Version updated for **https://github.com/zeropress-app/zeropress-build-pages** to version **v0.6.13**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-zeropress-pages) to find the latest changes.

## Action Summary

The `@zeropress/build-pages` GitHub Action automates the process of converting Markdown files and public assets into a static ZeroPress site. It performs the following key capabilities:
1. It builds the static output, suitable for deployment to modern hosting platforms such as GitHub Pages, Cloudflare Pages, Netlify, or Vercel.
2. The generated output consists of plain static files that can be deployed at the origin root of a static hosting provider.
3. Build Pages serves as the Markdown-source document publishing entry point for ZeroPress and is used by other workflows to build from `preview-data.json` and a theme, or publish after managed authoring workflows in ZeroPress Studio.

The action generates `preview-data.json`, stages public files, and prepares the site data, ultimately providing static HTML pages and assets that can be deployed using a hosting provider's deployment action.

## What's Changed

- 0.6.13 (2d2c613)
- fix: build-pages no longer produces menuitem.type in the middle. (34063f2)
- build(deps): bump @zeropress/build to 0.6.13 (e67d1ed)
- chore: Exclude dist/ files when creating npm tarball. (a91d470)
- 0.6.12 (ae84366)
- refactor: fix. (ddf38de)
- fix(bundled-theme): remove vertical-align style. (f445af4)
- fix(bundled-theme): refined. (74191e9)
- fix: default `site.description` from 'A documentation site.' to '' (ac5f42e)
- feat: front matter `featured_image` (f7382d9)
