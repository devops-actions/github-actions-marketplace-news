---
title: Pageflare Optimize
date: 2026-03-20 05:50:45 +00:00
tags:
  - getappz
  - GitHub Actions
draft: false
repo: https://github.com/getappz/pageflare-cli
marketplace: https://github.com/marketplace/actions/pageflare-optimize
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/getappz/pageflare-cli** to version **v1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pageflare-optimize) to find the latest changes.

## Action Summary

The `@pageflare/cli` GitHub Action automates the optimization of static site output (HTML, CSS, JS, images) by applying production-grade performance enhancements. It streamlines the post-build process for static site generators (SSGs) by auto-detecting frameworks and output directories, ensuring optimized assets for deployment on platforms like Vercel and Netlify. This action simplifies workflows by reducing manual optimization tasks and enhancing site speed and performance.

## Release notes


  Optimize your static site for PageSpeed in one step. Add to any workflow — no install or configuration needed.

  ## Usage

  ```yaml
  - uses: getappz/pageflare-cli@v1

  Pageflare auto-detects your framework (Next.js, Astro, Gatsby, Nuxt, Hugo, Jekyll, WordPress, and more) and optimizes the build output automatically.

  What it does

  - HTML, CSS, and JavaScript minification
  - Image lazy loading with automatic dimensions
  - Font optimization and subsetting
  - Critical CSS extraction and inlining
  - Script deferral for faster interactivity
  - Responsive image srcset generation
  - WordPress bloat removal
  - Content-hashed filenames for cache busting

  Inputs

  ┌─────────┬─────────┬────────────────────────────────────────┐
  │  Input  │ Default │              Description               │
  ├─────────┼─────────┼────────────────────────────────────────┤
  │ version │ latest  │ CLI version to install                 │
  ├─────────┼─────────┼────────────────────────────────────────┤
  │ args    │         │ Arguments passed to pageflare optimize │
  └─────────┴─────────┴────────────────────────────────────────┘

  Example

  - uses: actions/checkout@v4
  - run: npm ci && npm run build
  - uses: getappz/pageflare-cli@v1
  - uses: cloudflare/wrangler-action@v3
    with:
      command: pages deploy dist --project-name=my-site
  https://pageflare.dev/docs · https://pageflare.dev/docs/cli/configuration · https://pageflare.dev/audit
  ```
