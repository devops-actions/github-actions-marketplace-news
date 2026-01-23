---
title: GitHub API Usage Tracker
date: 2026-01-23 13:43:07 +00:00
tags:
  - hesreallyhim
  - GitHub Actions
draft: false
repo: https://github.com/hesreallyhim/github-api-usage-tracker
marketplace: https://github.com/marketplace/actions/github-api-usage-tracker
version: v1.2.0
dependentsNumber: "2"
---


Version updated for **https://github.com/hesreallyhim/github-api-usage-tracker** to version **v1.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-api-usage-tracker) to find the latest changes.

## Action Summary

This GitHub Action tracks and reports the number of GitHub API requests consumed during a workflow job, categorized by rate-limit buckets (e.g., core, GraphQL, search). It automates the process of monitoring API usage by capturing the rate-limit state at the start and end of a job, providing a clear summary of usage in the workflow UI. This helps developers optimize workflows and avoid exceeding API rate limits.

## Release notes

## [1.2.0](https://github.com/hesreallyhim/github-api-usage-tracker/compare/v1.1.0...v1.2.0) (2026-01-23)


### Features

* Add summary table, configurable buckets, and improve logging ([bee0b09](https://github.com/hesreallyhim/github-api-usage-tracker/commit/bee0b09065b97deb97b8c8b3852045b5913703fd))
* change formatting of summary to report start & end ([954fa43](https://github.com/hesreallyhim/github-api-usage-tracker/commit/954fa43eaafb1f26b175a3d0fbaba036922cf7a8))
* reformat output for reset crossing ([6cecd9f](https://github.com/hesreallyhim/github-api-usage-tracker/commit/6cecd9f8f2c8df147dd74f79398ae5d3e3d36856))
* remove used_is_minimum property ([77530e5](https://github.com/hesreallyhim/github-api-usage-tracker/commit/77530e5ab092a7f599399dd6d83b0abf7e514ed6))


### Bug Fixes

* fix bug in summary table construction ([5c01101](https://github.com/hesreallyhim/github-api-usage-tracker/commit/5c011018de3a79a650a0755a6fa691888fc22ea8))
* typo ([c2bea0a](https://github.com/hesreallyhim/github-api-usage-tracker/commit/c2bea0a114599def38897054bb6dee525d84eff2))
* usage accounting across windows ([bab40c4](https://github.com/hesreallyhim/github-api-usage-tracker/commit/bab40c4af552ebc76e77ac4e9d2e121cac69b430))
