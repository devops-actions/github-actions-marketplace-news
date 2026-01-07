---
title: wakatime-gist
date: 2026-01-07 05:40:10 +00:00
tags:
  - abordage
  - GitHub Actions
draft: false
repo: https://github.com/abordage/wakatime-box
marketplace: https://github.com/marketplace/actions/wakatime-gist
version: v3.0.0
dependentsNumber: "9"
---


Version updated for **https://github.com/abordage/wakatime-box** to version **v3.0.0**.
- This action is used across all versions by **9** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wakatime-gist) to find the latest changes.

## Action Summary

This GitHub Action automatically updates a pinned Gist on your GitHub profile with your WakaTime statistics, such as time spent coding and language usage, over customizable time ranges (e.g., weekly, monthly, yearly). It simplifies the process of showcasing coding activity by automating data retrieval from WakaTime and creating visually appealing summaries, including bar charts or dotted formats. The action supports self-hosted WakaTime-compatible backends and is ideal for developers who want to display their productivity metrics dynamically on their profiles.

## Release notes

# [3.0.0](https://github.com/abordage/wakatime-box/compare/v2.1.1...v3.0.0) (2026-01-07)


* feat(project)!: migrate to ESM, Rollup, and Node 24 ([18a634d](https://github.com/abordage/wakatime-box/commit/18a634dd8eea79124cdb637fd9abf6e0a86f4646))


### BREAKING CHANGES

* Complete rewrite with modern tooling.

- Migrate from CommonJS to ESM modules
- Replace ncc with Rollup for bundling
- Upgrade to Node.js 24 runtime
- Refactor codebase into modular structure
- Update all dependencies to latest versions
- Add comprehensive CI/CD with semantic-release
- Improve configuration handling for local development

Users upgrading from v2:
- Update workflow to use abordage/wakatime-box@v3
- No changes required for input parameters




