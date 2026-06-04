---
title: spek - OpenSpec Static Site
date: 2026-06-04 15:13:25 +00:00
tags:
  - kewang
  - GitHub Actions
draft: false
repo: https://github.com/kewang/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.3.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kewang/spek** to version **v1.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## What's Changed

- Fix: a fresh clone now starts cleanly with `npm install && npm run dev` — `@spek/core` resolves to its gitignored `dist/` build, which neither install nor dev used to produce, so the Express API failed with `ERR_MODULE_NOT_FOUND` and Vite failed to resolve `@spek/core/headings`. `npm install` now compiles `@spek/core` (new `prepare` script) and the root `dev` script rebuilds it before launching (#2)
