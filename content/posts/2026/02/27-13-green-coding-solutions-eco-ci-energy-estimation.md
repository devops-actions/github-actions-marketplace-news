---
title: Eco CI Energy Estimation
date: 2026-02-27 13:18:34 +00:00
tags:
  - green-coding-solutions
  - GitHub Actions
draft: false
repo: https://github.com/green-coding-solutions/eco-ci-energy-estimation
marketplace: https://github.com/marketplace/actions/eco-ci-energy-estimation
version: v5.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/green-coding-solutions/eco-ci-energy-estimation** to version **v5.2.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eco-ci-energy-estimation) to find the latest changes.

## Action Summary

Eco CI is a GitHub Action designed to estimate energy consumption in continuous integration (CI) environments by analyzing CPU utilization and hardware characteristics. It automates the tracking and calculation of energy usage during CI workflows, providing insights into the environmental impact of development pipelines. Key capabilities include real-time energy measurement, data export, and compatibility with multiple CI platforms like GitHub and GitLab.

## Release notes

The `display-results` step in Eco CI was showing 0 values in case `display-table: false` was set.

All values were still correctly submitted to the API. See the PR for details on the bug.

## What's Changed
* When display-table is set to false 0 values where shown by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/151


**Full Changelog**: https://github.com/green-coding-solutions/eco-ci-energy-estimation/compare/v5.2...v5.2.1
