---
title: GitHub API Usage Tracker
date: 2026-01-22 05:57:15 +00:00
tags:
  - hesreallyhim
  - GitHub Actions
draft: false
repo: https://github.com/hesreallyhim/github-api-usage-tracker
marketplace: https://github.com/marketplace/actions/github-api-usage-tracker
version: github-api-usage-tracker-v1.1.0
dependentsNumber: "2"
---


Version updated for **https://github.com/hesreallyhim/github-api-usage-tracker** to version **github-api-usage-tracker-v1.1.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-api-usage-tracker) to find the latest changes.

## Action Summary

This GitHub Action, "GitHub API Usage Tracker," monitors and tracks the number of GitHub API requests consumed during a workflow job, categorized by rate-limit buckets (e.g., core, GraphQL, search). It automates the process by capturing API usage at the start and end of a job, providing a detailed summary of the total requests used, remaining limits, and breakdown by bucket. This helps developers better understand and manage their API usage within rate limits.

## Release notes

## [1.1.0](https://github.com/hesreallyhim/github-api-usage-tracker/compare/github-api-usage-tracker-v1.0.2...github-api-usage-tracker-v1.1.0) (2026-01-21)


### Features

* Add summary table, configurable buckets, and improve logging ([bee0b09](https://github.com/hesreallyhim/github-api-usage-tracker/commit/bee0b09065b97deb97b8c8b3852045b5913703fd))


### Bug Fixes

* fix bug in summary table construction ([5c01101](https://github.com/hesreallyhim/github-api-usage-tracker/commit/5c011018de3a79a650a0755a6fa691888fc22ea8))
* typo ([c2bea0a](https://github.com/hesreallyhim/github-api-usage-tracker/commit/c2bea0a114599def38897054bb6dee525d84eff2))
* usage accounting across windows ([bab40c4](https://github.com/hesreallyhim/github-api-usage-tracker/commit/bab40c4af552ebc76e77ac4e9d2e121cac69b430))
