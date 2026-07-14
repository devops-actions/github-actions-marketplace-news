---
title: TestivAI Visual Report
date: 2026-07-14 15:13:03 +00:00
tags:
  - mcbuddy
  - GitHub Actions
draft: false
repo: https://github.com/mcbuddy/testivai-oss
marketplace: https://github.com/marketplace/actions/testivai-visual-report
version: testivai/witness1.3.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates local-first visual regression testing for web applications using TestivAI SDKs. It provides a self-contained HTML report with DOM-aware noise hints to identify real changes and render noise, allowing developers to focus on meaningful UI improvements without false positives. The action supports Playwright and WebdriverIO frameworks, making it cross-platform and language-agnostic.
---


Version updated for **https://github.com/mcbuddy/testivai-oss** to version **@testivai/witness@1.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/testivai-visual-report) to find the latest changes.

## Action Summary

This GitHub Action automates local-first visual regression testing for web applications using TestivAI SDKs. It provides a self-contained HTML report with DOM-aware noise hints to identify real changes and render noise, allowing developers to focus on meaningful UI improvements without false positives. The action supports Playwright and WebdriverIO frameworks, making it cross-platform and language-agnostic.

## What's Changed

### Minor Changes

- 767385e: Added `--dry-run` flag to `testivai approve` that prints what would be approved without modifying files. Also changed `testivai approve --undo` (without a name) to automatically undo the last approval by finding the most recent `.previous/` backup — no longer requires an explicit snapshot name.
- 0158619: New `testivai report` command — the language-agnostic half of the adapter contract. Any Playwright binding (Python, Java, .NET, …) can capture by writing `.testivai/temp/<name>/screenshot.png` (+ `dom.html`) with its native APIs, then run `testivai report` for diffing, tolerances, the noise hint, the HTML report, and CI exit codes (`--fail-on-diff`, `--open`). This powers the new `testivai` Python package (PyPI) and the experimental Java adapter.
