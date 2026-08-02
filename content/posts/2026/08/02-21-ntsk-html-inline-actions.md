---
title: HTML Inline Actions
date: 2026-08-02 21:24:57 +00:00
tags:
  - ntsk
  - GitHub Actions
draft: false
repo: https://github.com/ntsk/html-inline-actions
marketplace: https://github.com/marketplace/actions/html-inline-actions
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action inlines CSS, JavaScript, and images into HTML files to reduce HTTP requests and improve page load times. It supports batch processing of multiple files and can be configured to skip certain types of inlining based on file type or link attributes.
---


Version updated for **https://github.com/ntsk/html-inline-actions** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/html-inline-actions) to find the latest changes.

## Action Summary

This GitHub Action inlines CSS, JavaScript, and images into HTML files to reduce HTTP requests and improve page load times. It supports batch processing of multiple files and can be configured to skip certain types of inlining based on file type or link attributes.

## What's Changed

### Changed

- The action now runs on the Node 24 runtime (`runs.using: 'node24'`). GitHub runners have defaulted to Node 24 since June 16, 2026, and Node 20 is removed from runners in fall 2026, after which actions declaring `node20` no longer start.

### Internal

- Upgraded TypeScript to 6.0, with TypeScript 7 running side by side for the `tsc` binary (#122, #125)
- Upgraded ESLint to 10 and removed `eslint-plugin-import` (#56, #121)
- Added a type check step to CI, which previously had none — `rollup` does not fail the build on type errors (#122)
- Removed unbundled `tsc` output that had been committed to `dist/` by mistake (#124)
- `createDataUrl` now attaches `cause` to the error it throws (#121)

**Full Changelog**: https://github.com/ntsk/html-inline-actions/compare/v1.1.1...v1.2.0
