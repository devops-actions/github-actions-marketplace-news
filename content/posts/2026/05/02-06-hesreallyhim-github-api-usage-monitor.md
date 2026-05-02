---
title: github-api-usage-monitor
date: 2026-05-02 06:01:05 +00:00
tags:
  - hesreallyhim
  - GitHub Actions
draft: false
repo: https://github.com/hesreallyhim/github-api-usage-monitor
marketplace: https://github.com/marketplace/actions/github-api-usage-monitor
version: v2.0.1
dependentsNumber: "11"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/hesreallyhim/github-api-usage-monitor** to version **v2.0.1**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-api-usage-monitor) to find the latest changes.

## Action Summary

This GitHub Action monitors GitHub API usage during workflow jobs by polling the `/rate_limit` endpoint in the background and providing a detailed summary of API rate limit consumption per bucket. It automates the tracking of API usage, helping users identify and analyze how their workflows interact with the GitHub API, ensuring efficient token utilization and avoiding rate limit issues. Key capabilities include adaptive polling, constant-space aggregation for usage summaries, and optional fine-grained diagnostics logs with artifact uploads for deeper analysis.

## What's Changed

## [2.0.1](https://github.com/hesreallyhim/github-api-usage-monitor/compare/v2.0.0...v2.0.1) (2026-05-01)


### Miscellaneous Chores

* harden workflow configuration ([ee097c2](https://github.com/hesreallyhim/github-api-usage-monitor/commit/ee097c2c6c36393c8234311caa8a5fd224f4e4bb))
