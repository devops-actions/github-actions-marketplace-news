---
title: AI Model Lifecycle Monitor
date: 2026-08-05 15:00:31 +00:00
tags:
  - oscarnilsson98
  - GitHub Actions
draft: false
repo: https://github.com/oscarnilsson98/ai-model-end-of-life-action
marketplace: https://github.com/marketplace/actions/ai-model-lifecycle-monitor
version: v3.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the monitoring of AI models referenced in your codebase. It checks for known deprecations and shutdowns from `deprecations.info`, providing warnings or failures before a model is no longer available. The action reads evidence directly from Git commits, allowing for quick setup and warning-only operations by default. Enforcement can be enabled with policy files to fail jobs when specific conditions are met.
---


Version updated for **https://github.com/oscarnilsson98/ai-model-end-of-life-action** to version **v3.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-model-lifecycle-monitor) to find the latest changes.

## Action Summary

This GitHub Action automates the monitoring of AI models referenced in your codebase. It checks for known deprecations and shutdowns from `deprecations.info`, providing warnings or failures before a model is no longer available. The action reads evidence directly from Git commits, allowing for quick setup and warning-only operations by default. Enforcement can be enabled with policy files to fail jobs when specific conditions are met.

## What's Changed

## What's Changed
* fix: re-qualify the detector rules against openai v7 and azurerm v5 by @oscarnilsson98 in https://github.com/oscarnilsson98/ai-model-end-of-life-action/pull/17


**Full Changelog**: https://github.com/oscarnilsson98/ai-model-end-of-life-action/compare/v3.1.0...v3.1.1
