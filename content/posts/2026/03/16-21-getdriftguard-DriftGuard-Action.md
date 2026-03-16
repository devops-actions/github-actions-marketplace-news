---
title: DriftGuard Schema Check
date: 2026-03-16 21:42:13 +00:00
tags:
  - getdriftguard
  - GitHub Actions
draft: false
repo: https://github.com/getdriftguard/DriftGuard-Action
marketplace: https://github.com/marketplace/actions/driftguard-schema-check
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/getdriftguard/DriftGuard-Action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/driftguard-schema-check) to find the latest changes.

## Action Summary

The DriftGuard Schema Check GitHub Action automates the detection of API schema changes in CI/CD pipelines, helping teams identify and address schema drift before deployment. It checks monitored API endpoints for changes, reports results via pull request comments and build statuses, and can fail builds if changes exceed a specified severity threshold. This ensures API stability and prevents breaking changes from impacting downstream systems.

## Release notes

Check your API dependencies for schema drift in CI/CD pipelines.

- Trigger schema checks for monitored endpoints
- Classify changes as breaking, warning, or info
- Post drift summaries as PR comments
- Fail builds when drift exceeds your severity threshold
- Filter by specific endpoint IDs
