---
title: lighthouse-box
date: 2026-01-07 05:40:15 +00:00
tags:
  - abordage
  - GitHub Actions
draft: false
repo: https://github.com/abordage/lighthouse-box
marketplace: https://github.com/marketplace/actions/lighthouse-box
version: v3.0.0
dependentsNumber: "4"
---


Version updated for **https://github.com/abordage/lighthouse-box** to version **v3.0.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lighthouse-box) to find the latest changes.

## Action Summary

This GitHub Action automates the process of updating a pinned GitHub Gist with Lighthouse performance metrics for a specified website. It evaluates five key Lighthouse categories—Performance, Accessibility, Best Practices, SEO, and PWA—and schedules daily updates to ensure the metrics remain current. Ideal for showcasing website performance directly on a GitHub profile, it simplifies the integration of visually appealing, dynamically updated performance data.

## Release notes

# [3.0.0](https://github.com/abordage/lighthouse-box/compare/v2.1.1...v3.0.0) (2026-01-07)


* feat(project)!: migrate to Rollup bundler and Lighthouse CLI ([fc6c701](https://github.com/abordage/lighthouse-box/commit/fc6c7016ab89e0d738f18560c98eaa203b8cb67b))


### BREAKING CHANGES

* Requires Node.js 24+. The action now uses
Lighthouse CLI instead of bundled Node API. No changes required
for users - the action interface remains the same.




