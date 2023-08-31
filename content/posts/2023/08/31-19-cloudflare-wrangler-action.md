---
title: Deploy to Cloudflare Workers with Wrangler
date: 2023-08-31 19:03:39 +00:00
tags:
  - cloudflare
  - GitHub Actions
draft: false
repo: cloudflare/wrangler-action
marketplace: https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler
version: v3.1.0
dependentsNumber: 4,993
---


Version updated for **cloudflare/wrangler-action** to version **v3.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,993** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler) to find the latest changes.

## Release notes

### Minor Changes

-   [#154](https://github.com/cloudflare/wrangler-action/pull/154) [`3f40637`](https://github.com/cloudflare/wrangler-action/commit/3f40637a1c48016d2101e412a7a06f1eb4b9c2fd) Thanks [@JacobMGEvans](https://github.com/JacobMGEvans)! - feat: Quiet mode
    Some of the stderr, stdout, info & groupings can be a little noisy for some users and use cases.
    This feature allows for a option to be passed 'quiet: true' this would significantly reduce the noise.

    There will still be output that lets the user know Wrangler Installed and Wrangler Action completed successfully.
    Any failure status will still be output to the user as well, to prevent silent failures.

    resolves #142
- [#157](https://github.com/cloudflare/wrangler-action/pull/157) [`4132892`](https://github.com/cloudflare/wrangler-action/commit/4132892387b6930d5bdec6947e6f21a970fd4284) Thanks [@EstebanBorai](https://github.com/EstebanBorai)! - use `wrangler@3.5.1` by default
