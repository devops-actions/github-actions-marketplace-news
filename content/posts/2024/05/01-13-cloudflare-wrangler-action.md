---
title: Deploy to Cloudflare Workers with Wrangler
date: 2024-05-01 13:57:03 +00:00
tags:
  - cloudflare
  - GitHub Actions
draft: false
repo: cloudflare/wrangler-action
marketplace: https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler
version: v3.5.0
dependentsNumber: "24,714"
---


Version updated for **cloudflare/wrangler-action** to version **v3.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **24,714** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler) to find the latest changes.

## Release notes

### Minor Changes

-   [#255](https://github.com/cloudflare/wrangler-action/pull/255) [`31a6263ef3ec73ff2d03cb4c0260379f96f7598c`](https://github.com/cloudflare/wrangler-action/commit/31a6263ef3ec73ff2d03cb4c0260379f96f7598c) Thanks [@matthewdavidrodgers](https://github.com/matthewdavidrodgers)! - Stop racing secret uploads

    For up to date versions of wrangler, secrets are uploaded via the 'secret:bulk' command, which batches updates in a single API call.

    For versions of wrangler without that capability, the action falls back to the single 'secret put' command for each secret. It races all these with a Promise.all()

    Unfortunately, the single secret API cannot handle concurrency - at best, these calls have to wait on one another, holding requests open all the while. Often it times out and errors.

    This fixes the legacy secret upload errors by making these calls serially instead of concurrently.

