---
title: Setup ZeroDrop
date: 2026-07-17 06:38:33 +00:00
tags:
  - zerodrop-dev
  - GitHub Actions
draft: false
repo: https://github.com/zerodrop-dev/setup-zerodrop
marketplace: https://github.com/marketplace/actions/setup-zerodrop
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The `setup-zerodrop` GitHub Action generates a unique inbox per CI run, allowing email verification and OTP extraction at Cloudflare's edge. It solves the problem of managing isolated inboxes for parallel test runs and provides an easy way to integrate email verification into workflows using ZeroDrop SDKs.
---


Version updated for **https://github.com/zerodrop-dev/setup-zerodrop** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-zerodrop) to find the latest changes.

## Action Summary

The `setup-zerodrop` GitHub Action generates a unique inbox per CI run, allowing email verification and OTP extraction at Cloudflare's edge. It solves the problem of managing isolated inboxes for parallel test runs and provides an easy way to integrate email verification into workflows using ZeroDrop SDKs.

## What's Changed

Initial release of setup-zerodrop — successor to create-inbox.

- Generates an isolated ZeroDrop inbox per CI run (no network request)
- Outputs: inbox, name · Exports: ZERODROP_INBOX, ZERODROP_INBOX_NAME
- New: api-key input for Workspaces, base-url for self-hosted
- Zero dependencies — single auditable dist/index.js
- Pin by SHA for supply chain security
