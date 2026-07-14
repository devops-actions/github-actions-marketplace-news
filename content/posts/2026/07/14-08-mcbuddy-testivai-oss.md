---
title: TestivAI Visual Report
date: 2026-07-14 08:05:47 +00:00
tags:
  - mcbuddy
  - GitHub Actions
draft: false
repo: https://github.com/mcbuddy/testivai-oss
marketplace: https://github.com/marketplace/actions/testivai-visual-report
version: testivai/witness-playwright1.3.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the process of capturing and diffing screenshots to detect visual regressions in web applications locally. It helps identify render noise instead of false positives, providing a more reliable report by comparing both pixel changes and DOM structure. The action supports multiple frameworks (Playwright, WebdriverIO) and offers an optional cloud upgrade for additional analysis and team approvals.
---


Version updated for **https://github.com/mcbuddy/testivai-oss** to version **@testivai/witness-playwright@1.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testivai-visual-report) to find the latest changes.

## Action Summary

This GitHub Action automates the process of capturing and diffing screenshots to detect visual regressions in web applications locally. It helps identify render noise instead of false positives, providing a more reliable report by comparing both pixel changes and DOM structure. The action supports multiple frameworks (Playwright, WebdriverIO) and offers an optional cloud upgrade for additional analysis and team approvals.

## What's Changed

### Patch Changes

- cc6f3eb: Fix per-call `ignoreSelectors` (and `stabilize`) being dropped by the config merge. `testivai.witness(page, testInfo, 'name', { ignoreSelectors: ['.badge'] })` silently ignored the selectors — the elements were neither hidden from the screenshot nor excluded from the DOM snapshot. Long masked by the diff engine's cumulated threshold absorbing the few leaked pixels; surfaced by the text-aware DOM diff correctly flagging the leaked dynamic text.
