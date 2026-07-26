---
title: Build ZeroPress Pages
date: 2026-07-26 06:19:35 +00:00
tags:
  - zeropress-app
  - GitHub Actions
draft: false
repo: https://github.com/zeropress-app/zeropress-build-pages
marketplace: https://github.com/marketplace/actions/build-zeropress-pages
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of converting Markdown files into static HTML pages and copying public assets, which can then be deployed to various hosting platforms such as GitHub Pages, Cloudflare Pages, Netlify, or Vercel. The action handles markdown pages and builds them into a static site output that can be easily hosted on these platforms by staging public files and running the `@zeropress/build` tool.
---


Version updated for **https://github.com/zeropress-app/zeropress-build-pages** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-zeropress-pages) to find the latest changes.

## Action Summary

This GitHub Action automates the process of converting Markdown files into static HTML pages and copying public assets, which can then be deployed to various hosting platforms such as GitHub Pages, Cloudflare Pages, Netlify, or Vercel. The action handles markdown pages and builds them into a static site output that can be easily hosted on these platforms by staging public files and running the `@zeropress/build` tool.

## What's Changed

- 1.0.0 (c372eb0)
- chore: generate GitHub Action Artifact. (e1b7252)
- refactor: polish console message (8612f78)
- refactor: uses the official @zeropress/build package entrypoint (f3e8d74)
- refactor: rename internal working directory. (362497f)
- feat: upgrade to preview-data v0.7 and theme-runtime v0.7 (db504c0)
- chore: bump up deps (ede582e)
- chore: bump minimum Node.js version to 22.12 (7d70bd7)
- feat: comprehensive config validation hardening (6774d1c)
- fix: enforce strict site.logo.src URL validation (0821456)
