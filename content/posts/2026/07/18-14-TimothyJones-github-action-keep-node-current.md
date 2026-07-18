---
title: Keep Node Current
date: 2026-07-18 14:15:52 +00:00
tags:
  - TimothyJones
  - GitHub Actions
draft: false
repo: https://github.com/TimothyJones/github-action-keep-node-current
marketplace: https://github.com/marketplace/actions/keep-node-current
version: v1.0.2
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action keeps Node.js versions in sync across repositories by fetching the latest release schedule and adjusting CI configurations, `.nvmrc`, and `package.json` files to reflect active LTS majors. It automates the process of updating matrices, single-version pins, and engine version declarations, ensuring compatibility with the official Node.js release schedule.
---


Version updated for **https://github.com/TimothyJones/github-action-keep-node-current** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/keep-node-current) to find the latest changes.

## Action Summary

This GitHub Action keeps Node.js versions in sync across repositories by fetching the latest release schedule and adjusting CI configurations, `.nvmrc`, and `package.json` files to reflect active LTS majors. It automates the process of updating matrices, single-version pins, and engine version declarations, ensuring compatibility with the official Node.js release schedule.

## What's Changed

Bug fix: pushing could fail with `Duplicate header: "Authorization"` when `actions/checkout` had persisted more than one credential header. The action now clears all persisted `extraheader` entries and authenticates with a single one from the supplied token.

Recommended for all users. `@v1` now points here.
