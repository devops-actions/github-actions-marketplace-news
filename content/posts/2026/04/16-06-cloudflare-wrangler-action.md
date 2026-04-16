---
title: Deploy to Cloudflare Workers with Wrangler
date: 2026-04-16 06:25:28 +00:00
tags:
  - cloudflare
  - GitHub Actions
draft: false
repo: https://github.com/cloudflare/wrangler-action
marketplace: https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler
version: v3.15.0
dependentsNumber: "48,214"
---


Version updated for **https://github.com/cloudflare/wrangler-action** to version **v3.15.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **48,214** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler) to find the latest changes.

## Action Summary

The Wrangler GitHub Action simplifies the deployment of Cloudflare Workers and Pages applications by automating the execution of Wrangler CLI commands within GitHub workflows. It addresses the need for streamlined CI/CD processes, enabling developers to authenticate with a Cloudflare API token and configure deployments directly from their repository. Key capabilities include support for deploying Workers, managing secrets, specifying Wrangler versions, handling environment variables, and running pre- or post-deployment commands.

## What's Changed

### Minor Changes

-   [#426](https://github.com/cloudflare/wrangler-action/pull/426) [`febbda6`](https://github.com/cloudflare/wrangler-action/commit/febbda69f8c5838bf8b07fd6b9dfc836f00962db) Thanks [@WillTaylorDev](https://github.com/WillTaylorDev)! - Support version ranges and tags in `wranglerVersion` input. You can now set `wranglerVersion` to values like `4`, `^4.0.0`, `4.x`, or `latest` instead of only exact versions like `4.81.0`.

