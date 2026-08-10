---
title: Advanced Jules PR Reviewer
date: 2026-08-10 05:52:03 +00:00
tags:
  - thalesraymond
  - GitHub Actions
draft: false
repo: https://github.com/thalesraymond/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/advanced-jules-pr-reviewer
version: v1.6.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action uses Google Jules to review pull requests and post comments directly on the lines of code where security issues are found, providing line-level feedback. It automatically resolves its own comments if the issues are fixed and prevents duplicate findings in subsequent commits. The action is designed to work with any programming language or framework and uses a low-noise approach by default.
---


Version updated for **https://github.com/thalesraymond/jules-pr-reviewer** to version **v1.6.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advanced-jules-pr-reviewer) to find the latest changes.

## Action Summary

This GitHub Action uses Google Jules to review pull requests and post comments directly on the lines of code where security issues are found, providing line-level feedback. It automatically resolves its own comments if the issues are fixed and prevents duplicate findings in subsequent commits. The action is designed to work with any programming language or framework and uses a low-noise approach by default.

## What's Changed

## [1.6.0](https://github.com/thalesraymond/jules-pr-reviewer/compare/v1.5.0...v1.6.0) (2026-08-09)


### Features

* adopt GitHub Checks API for review status ([ae00f48](https://github.com/thalesraymond/jules-pr-reviewer/commit/ae00f48877ec8fc8e9a298db472c65ca6e575f9d)), closes [#113](https://github.com/thalesraymond/jules-pr-reviewer/issues/113)
* **dedup:** dedplucation feat ([#132](https://github.com/thalesraymond/jules-pr-reviewer/issues/132)) ([6536068](https://github.com/thalesraymond/jules-pr-reviewer/commit/65360680675c72aa0510965e13915b50d783044e))
* harden concurrency ([#134](https://github.com/thalesraymond/jules-pr-reviewer/issues/134)) ([637bd30](https://github.com/thalesraymond/jules-pr-reviewer/commit/637bd3022fdb6648c134f73e4089b83e59a4293f))
* large pr handling ([#133](https://github.com/thalesraymond/jules-pr-reviewer/issues/133)) ([f618fe6](https://github.com/thalesraymond/jules-pr-reviewer/commit/f618fe638201e6fca6ed71102fe483c17c355f3a))
* ticket 113 ([d399580](https://github.com/thalesraymond/jules-pr-reviewer/commit/d399580712c2b99df1f8cb3d1b436b22a6acff6f))
