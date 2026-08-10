---
title: Cloudflare IP List Sync
date: 2026-08-10 14:25:42 +00:00
tags:
  - rezzell
  - GitHub Actions
draft: false
repo: https://github.com/rezzell/cloudflare-ip-list-sync-action
marketplace: https://github.com/marketplace/actions/cloudflare-ip-list-sync
version: v0.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action synchronizes a Cloudflare IP list with composed IP and CIDR sources, such as GitHub webhook egress ranges from the GitHub Meta API. It automates keeping the WAF IP list current by replacing all existing items with the resolved desired set. The action supports various source types, including GitHub Meta, CIDRs, and URLs, and provides options for dry run and wait operations to ensure smooth execution.
---


Version updated for **https://github.com/rezzell/cloudflare-ip-list-sync-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloudflare-ip-list-sync) to find the latest changes.

## Action Summary

This GitHub Action synchronizes a Cloudflare IP list with composed IP and CIDR sources, such as GitHub webhook egress ranges from the GitHub Meta API. It automates keeping the WAF IP list current by replacing all existing items with the resolved desired set. The action supports various source types, including GitHub Meta, CIDRs, and URLs, and provides options for dry run and wait operations to ensure smooth execution.

## What's Changed

## Fixes

- Fixed hyphenated action input parsing for inputs such as `cloudflare-api-token`. GitHub exposes these to JavaScript actions as environment variables such as `INPUT_CLOUDFLARE-API-TOKEN`; the action now reads that format and retains underscore fallback for local testing. Fixes #1.

## Impact

This fixes real GitHub Actions runtime failures where the action reported `Missing required input: cloudflare-api-token` even though the workflow passed the input.

## Verification

- Added regression coverage for hyphenated action inputs.
- Confirmed `npm test` passes.
- Confirmed the built action dry-run resolves 6 current GitHub webhook CIDRs.
- Confirmed `rezzell/.github` dry-run workflow succeeds: https://github.com/rezzell/.github/actions/runs/31356536712

The `v1` tag has been moved to this release commit.
