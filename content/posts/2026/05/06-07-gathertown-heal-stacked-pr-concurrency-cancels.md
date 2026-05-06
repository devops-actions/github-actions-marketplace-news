---
title: Heal Stacked-PR Concurrency Cancels
date: 2026-05-06 07:29:48 +00:00
tags:
  - gathertown
  - GitHub Actions
draft: false
repo: https://github.com/gathertown/heal-stacked-pr-concurrency-cancels
marketplace: https://github.com/marketplace/actions/heal-stacked-pr-concurrency-cancels
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/gathertown/heal-stacked-pr-concurrency-cancels** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/heal-stacked-pr-concurrency-cancels) to find the latest changes.

## Action Summary

This GitHub Action resolves issues caused by stacked pull request tools (e.g., Graphite's `gt submit --stack`) that trigger duplicate workflow runs, leading to one being canceled and causing misleading status indicators in the GitHub PR Checks sidebar. By detecting and rerunning the prematurely canceled workflow run, it ensures that the correct status is displayed, eliminating confusion for reviewers. The action automates this healing process for workflows configured with `cancel-in-progress` concurrency, ensuring accurate and up-to-date PR check statuses.

## What's Changed

**Full Changelog**: https://github.com/gathertown/heal-stacked-pr-concurrency-cancels/compare/v1.0.0...v1.0.1

## v1.0.0

First stable release.

### Changes
- **Functionality**: Adds all initial release of functionality: re-running cancelled CI runs that result from stacked PRs where it would show up in the GitHub UI.

