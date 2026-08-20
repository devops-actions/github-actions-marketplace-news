---
title: Advanced Jules PR Reviewer
date: 2026-08-20 14:06:50 +00:00
tags:
  - thalesraymond
  - GitHub Actions
draft: false
repo: https://github.com/thalesraymond/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/advanced-jules-pr-reviewer
version: v1.7.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action uses Google Jules to review pull requests in various programming languages. It provides inline comments directly on code lines with severity and confidence levels, automatically resolves resolved issues after fixes are pushed, and gates merges via a check run if configured. The action is extensible with custom rules and supports deduplication of findings across pushes.
---


Version updated for **https://github.com/thalesraymond/jules-pr-reviewer** to version **v1.7.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advanced-jules-pr-reviewer) to find the latest changes.

## Action Summary

This GitHub Action uses Google Jules to review pull requests in various programming languages. It provides inline comments directly on code lines with severity and confidence levels, automatically resolves resolved issues after fixes are pushed, and gates merges via a check run if configured. The action is extensible with custom rules and supports deduplication of findings across pushes.

## What's Changed

## [1.7.0](https://github.com/thalesraymond/jules-pr-reviewer/compare/v1.6.0...v1.7.0) (2026-08-20)


### Features

* ignore-by-title/label/author filters and per-severity actions ([#137](https://github.com/thalesraymond/jules-pr-reviewer/issues/137)) ([e50c16a](https://github.com/thalesraymond/jules-pr-reviewer/commit/e50c16aa28f5dbed248175127702730926ad5c4a))
* per-path review instructions via rules_directory ([#138](https://github.com/thalesraymond/jules-pr-reviewer/issues/138)) ([337fc00](https://github.com/thalesraymond/jules-pr-reviewer/commit/337fc00569394b475922d47a681bfee7435fec15))
* **phase3:** auto-approve clean verdicts and review evaluator harness ([#145](https://github.com/thalesraymond/jules-pr-reviewer/issues/145)) ([681f014](https://github.com/thalesraymond/jules-pr-reviewer/commit/681f014ecb76cf6a81f1513373d109a9b1294dcd))
* strictness profiles (quiet / chill / assertive) ([#139](https://github.com/thalesraymond/jules-pr-reviewer/issues/139)) ([7204d7f](https://github.com/thalesraymond/jules-pr-reviewer/commit/7204d7f69e995ea538956c7ad5f56c5908025632))
* **utils:** add and integrate sleep utility ([#135](https://github.com/thalesraymond/jules-pr-reviewer/issues/135)) ([a72ecbf](https://github.com/thalesraymond/jules-pr-reviewer/commit/a72ecbf9d079b1c91e057c361e8fd3b9f6bd0cd7))
* zero-config default pass (fail_on defaults to never) ([#140](https://github.com/thalesraymond/jules-pr-reviewer/issues/140)) ([dc89639](https://github.com/thalesraymond/jules-pr-reviewer/commit/dc89639c325543e401ea5789356e6dc4159b051c))
