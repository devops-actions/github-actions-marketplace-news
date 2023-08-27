---
title: Simple Webhook Trigger
date: 2023-08-27 10:57:06 +00:00
tags:
  - 1ockwood
  - GitHub Actions
draft: false
repo: 1ockwood/simple-webhook-trigger-action
marketplace: https://github.com/marketplace/actions/simple-webhook-trigger
version: v1.1.0
dependentsNumber: '?'
---


Version updated for **1ockwood/simple-webhook-trigger-action** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/simple-webhook-trigger) to find the latest changes.

## Release notes

This release consists of a lot of streamlining. 

**Added:**
- Implement action workflow to handle the build and force push semantic tags, per [the GitHub docs](https://docs.github.com/en/actions/creating-actions/releasing-and-maintaining-actions#setting-up-github-actions-workflows).

**Changed:**
- Update runner to use `node20` [now that it's available](https://github.com/actions/runner/releases/tag/v2.308.0).
- Change to cjs for better compatibility with `build-and-tag-action`.

**Removed:** 
- Remove `node-fetch` dependency.
- Remove `dist` directory from repo.
