---
title: Build Size Diff
date: 2026-01-23 21:17:05 +00:00
tags:
  - q1sh101
  - GitHub Actions
draft: false
repo: https://github.com/q1sh101/build-size-diff
marketplace: https://github.com/marketplace/actions/build-size-diff
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/q1sh101/build-size-diff** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-size-diff) to find the latest changes.

## Action Summary

The **Build Size Diff** GitHub Action automates the tracking of bundle size changes in CI/CD workflows, providing instant feedback on performance regressions through detailed pull request comments. It supports multiple build tools (e.g., Webpack, Vite, Next.js) and calculates gzip/brotli size comparisons, highlighting per-file changes, budget violations, and the most impactful modifications. This action helps developers identify and address performance issues early, ensuring efficient and optimized builds.

## Release notes

## Added
- Workflow-run baseline lookup for faster, reliable detection
- Fallback to repo search when workflow lookup fails

