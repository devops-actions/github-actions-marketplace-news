---
title: Dormant Users Action
date: 2026-05-16 21:27:00 +00:00
tags:
  - matsumo-and
  - GitHub Actions
draft: false
repo: https://github.com/matsumo-and/dormant-users-action
marketplace: https://github.com/marketplace/actions/dormant-users-action
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/matsumo-and/dormant-users-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dormant-users-action) to find the latest changes.

## Action Summary

The **dormant-users-action** is a GitHub Action designed to identify inactive members within a GitHub organization by analyzing activity logs from the Organization Members API and Audit Log API. It automates the process of detecting dormant users without making individual API requests per user, providing scalable and efficient results. Key outputs include a list of dormant users in JSON or CSV format, enabling organizations to manage inactive members effectively.

## What's Changed

## Breaking change

The `debug` input has been removed. Use GitHub's built-in debug logging instead:

- Set the `ACTIONS_STEP_DEBUG` repository secret to `true` (persistent)
- Or re-run a job with **Enable debug logging** checked in the GitHub UI (one-off)

Remove `debug: true` from any workflow files that use it — the action will otherwise ignore the unknown input without failing.

## What's new

- Debug output now covers more detail: gh CLI version, token rate-limit status, per-endpoint fetch counts, bot-filter breakdown, audit log event/actor counts, and the full dormant login list
- `core.debug()` is used for all debug lines, so output integrates cleanly with GitHub's native step debug log viewer
