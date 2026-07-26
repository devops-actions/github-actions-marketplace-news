---
title: Advanced Jules PR Reviewer
date: 2026-07-26 06:30:54 +00:00
tags:
  - thalesraymond
  - GitHub Actions
draft: false
repo: https://github.com/thalesraymond/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/advanced-jules-pr-reviewer
version: v1.3.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action uses the Google Jules AI assistant to review pull requests by analyzing code and suggesting improvements. It automatically posts inline comments on specific lines of code, resolves issues when fixed, and gates merges based on a commit status check. The action supports inline rules in the workflow or rules file for customization.
---


Version updated for **https://github.com/thalesraymond/jules-pr-reviewer** to version **v1.3.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advanced-jules-pr-reviewer) to find the latest changes.

## Action Summary

This GitHub Action uses the Google Jules AI assistant to review pull requests by analyzing code and suggesting improvements. It automatically posts inline comments on specific lines of code, resolves issues when fixed, and gates merges based on a commit status check. The action supports inline rules in the workflow or rules file for customization.

## What's Changed

## [1.3.0](https://github.com/thalesraymond/jules-pr-reviewer/compare/v1.2.0...v1.3.0) (2026-07-25)


### Features

* 🚀 Catalyst: [Enhancement] Add and integrate withRetry utility ([99e59f8](https://github.com/thalesraymond/jules-pr-reviewer/commit/99e59f8365bfb552d755a53cfcab2c860105986b))
* **action:** new parameter for ignored paths ([fad749f](https://github.com/thalesraymond/jules-pr-reviewer/commit/fad749f53fcf3cab7fb6b8831e240daa25165b06))
* **action:** new parameter for ignored paths ([a2076c0](https://github.com/thalesraymond/jules-pr-reviewer/commit/a2076c0dbe550232164eb0e69ccd83ffbf81f7ce))
* add withFallback utility and integrate into submitReview ([e338834](https://github.com/thalesraymond/jules-pr-reviewer/commit/e33883456878c8985a4953ebd2bdaa4828ce9479))
* add withRetry utility and integrate into github API mutations ([ca5e62f](https://github.com/thalesraymond/jules-pr-reviewer/commit/ca5e62fac639160bed1cebfc2e1cca7a5ab211f7))
* **packages:** update all outdated packages ([ce933b2](https://github.com/thalesraymond/jules-pr-reviewer/commit/ce933b213aeec993867bc75fac65443a486675d4))


### Bug Fixes

* 🔒 prevent comment spoofing by validating author ([6368835](https://github.com/thalesraymond/jules-pr-reviewer/commit/636883531fe15fa0c7a98bcfc2e2cf1ad3bcd012))
* **ci:** fix error on setup node ([3b7f18e](https://github.com/thalesraymond/jules-pr-reviewer/commit/3b7f18e60a9e15099182a58ec46c7509f62b8913))
* **oktokit:** optime octokit init ([d9a2233](https://github.com/thalesraymond/jules-pr-reviewer/commit/d9a22334c143b3bee11d34ab0094fb80ba76b2e5))
* **pnpm:** remove invalid config ([a12569d](https://github.com/thalesraymond/jules-pr-reviewer/commit/a12569d34db7c9c58c3813728d0a0607fbe10e89))
* securely format error strings in public commit status ([635b55e](https://github.com/thalesraymond/jules-pr-reviewer/commit/635b55e02e77c46509c079cbbb2b24e906cc75f6))


### Performance Improvements

* optimize early returns and instantiation ([a926605](https://github.com/thalesraymond/jules-pr-reviewer/commit/a92660515ee5c40239593eccdae00766d5e1e871))
* optimize early returns to prevent wasteful allocations ([6b93386](https://github.com/thalesraymond/jules-pr-reviewer/commit/6b933868c9c156e6ab6f1fbc5f260d6cb508964c))
* parallelize independent github api requests ([0cb6436](https://github.com/thalesraymond/jules-pr-reviewer/commit/0cb6436d00ab46fef922575201f8e90c15e04bdf))
