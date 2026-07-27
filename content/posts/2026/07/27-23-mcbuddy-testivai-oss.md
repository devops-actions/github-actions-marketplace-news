---
title: TestivAI Visual Report
date: 2026-07-27 23:15:00 +00:00
tags:
  - mcbuddy
  - GitHub Actions
draft: false
repo: https://github.com/mcbuddy/testivai-oss
marketplace: https://github.com/marketplace/actions/testivai-visual-report
version: testivai/witness-playwright1.7.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  The TestivAI Open Source project provides local-first visual regression testing SDKs for modern web applications. It captures, diffs, and reports visual regressions fully locally without an account or server, using DOM snapshots to distinguish real changes from render noise. Key features include a style-aware noise hint, auditable masks and region-level diffs, element attribution, and first-class adapters for Playwright and WebdriverIO. The project also includes a GitHub Action that posts the diff and approves baselines via a `/testivai approve` comment.
---


Version updated for **https://github.com/mcbuddy/testivai-oss** to version **@testivai/witness-playwright@1.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testivai-visual-report) to find the latest changes.

## Action Summary

The TestivAI Open Source project provides local-first visual regression testing SDKs for modern web applications. It captures, diffs, and reports visual regressions fully locally without an account or server, using DOM snapshots to distinguish real changes from render noise. Key features include a style-aware noise hint, auditable masks and region-level diffs, element attribution, and first-class adapters for Playwright and WebdriverIO. The project also includes a GitHub Action that posts the diff and approves baselines via a `/testivai approve` comment.

## What's Changed

### Minor Changes

- f94048d: `witness()` is now the canonical capture call — aligning the Playwright adapter with the package family (`@testivai/witness*`) and the other adapters: `import { witness } from '@testivai/witness-playwright'`. `snapshot` and `testivai.witness` remain as fully compatible aliases; nothing breaks.

### Patch Changes

- Updated dependencies [f94048d]
- Updated dependencies [8de6c13]
  - @testivai/witness@1.11.0
