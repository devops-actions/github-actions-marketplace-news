---
title: Next.js Turbopack Bundle Analysis
date: 2026-03-19 21:47:49 +00:00
tags:
  - suzuki3jp
  - GitHub Actions
draft: false
repo: https://github.com/suzuki3jp/nextjs-turbopack-bundle-analysis
marketplace: https://github.com/marketplace/actions/next-js-turbopack-bundle-analysis
version: v0.1.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/suzuki3jp/nextjs-turbopack-bundle-analysis** to version **v0.1.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/next-js-turbopack-bundle-analysis) to find the latest changes.

## Action Summary

The **Next.js Turbopack Bundle Analysis** GitHub Action is designed to analyze bundle size changes in Next.js projects using Turbopack and provide detailed feedback on pull requests. It automates the detection of size differences between the base branch and the PR branch, posting a comment with a breakdown of route-specific size changes, including increases, decreases, new routes, and removals. This action helps developers monitor and manage bundle size impacts during the development process, ensuring optimized performance and adherence to size budgets.

## Release notes

### Patch Changes

-   7d3b33d: change default value of `minimum-change-threshold` from `0` to `1024` (1 KB)

