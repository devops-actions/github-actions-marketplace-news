---
title: Setup Turborepo Remote Cache
date: 2026-08-21 21:51:54 +00:00
tags:
  - vercel
  - GitHub Actions
draft: false
repo: https://github.com/vercel/setup-turborepo-remote-cache-action
marketplace: https://github.com/marketplace/actions/setup-turborepo-remote-cache
version: v1.1.0
dependentsNumber: "50"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates setting up Turborepo CLI Remote Caching in GitHub workflows. It enables remote caching, which can significantly speed up build times by reusing previously computed results across different CI/CD runs. The action requires creating a Vercel team OIDC policy and adding a `TURBO_TEAM` repository variable to the workflow before calling Turborepo CLI.
---


Version updated for **https://github.com/vercel/setup-turborepo-remote-cache-action** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **50** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-turborepo-remote-cache) to find the latest changes.

## Action Summary

This GitHub Action automates setting up Turborepo CLI Remote Caching in GitHub workflows. It enables remote caching, which can significantly speed up build times by reusing previously computed results across different CI/CD runs. The action requires creating a Vercel team OIDC policy and adding a `TURBO_TEAM` repository variable to the workflow before calling Turborepo CLI.

## What's Changed

- Convert action to Node.js 24
- Auto-revoke Turborepo access token once the job completes (disable by setting `revoke: false`)
