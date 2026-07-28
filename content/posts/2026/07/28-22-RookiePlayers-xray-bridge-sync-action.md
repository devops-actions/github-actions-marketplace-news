---
title: Xray Bridge Sync
date: 2026-07-28 22:42:46 +00:00
tags:
  - RookiePlayers
  - GitHub Actions
draft: false
repo: https://github.com/RookiePlayers/xray-bridge-sync-action
marketplace: https://github.com/marketplace/actions/xray-bridge-sync
version: v1.1.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of running tests and syncing their results to Jira/Xray. It supports Jest, Mocha, Pest (PHP), and Pytest test runners. The action reads `.xray-sync.yml` for configuration, extracts test metadata from the files, runs tests using the specified reporter, and posts results to a configured Xray-sync-service instance. The service creates or updates Jira Test Executions based on the tags in the test files, providing detailed execution results and linking them to Jira issues. If the test run itself fails, the action fails the job after syncing, ensuring that users get a link to the Xray execution even in failure cases.
---


Version updated for **https://github.com/RookiePlayers/xray-bridge-sync-action** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/xray-bridge-sync) to find the latest changes.

## Action Summary

This GitHub Action automates the process of running tests and syncing their results to Jira/Xray. It supports Jest, Mocha, Pest (PHP), and Pytest test runners. The action reads `.xray-sync.yml` for configuration, extracts test metadata from the files, runs tests using the specified reporter, and posts results to a configured Xray-sync-service instance. The service creates or updates Jira Test Executions based on the tags in the test files, providing detailed execution results and linking them to Jira issues. If the test run itself fails, the action fails the job after syncing, ensuring that users get a link to the Xray execution even in failure cases.

## What's Changed

**Full Changelog**: https://github.com/RookiePlayers/xray-bridge-sync-action/compare/v1.1.1...v1.1.2
