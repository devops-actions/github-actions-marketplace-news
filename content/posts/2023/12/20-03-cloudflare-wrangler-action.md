---
title: Deploy to Cloudflare Workers with Wrangler
date: 2023-12-20 03:19:04 +00:00
tags:
  - cloudflare
  - GitHub Actions
draft: false
repo: cloudflare/wrangler-action
marketplace: https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler
version: v3.4.0
dependentsNumber: "5,665"
---


Version updated for **cloudflare/wrangler-action** to version **v3.4.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **5,665** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-cloudflare-workers-with-wrangler) to find the latest changes.

## Release notes

### Minor Changes

-   [#213](https://github.com/cloudflare/wrangler-action/pull/213) [`d13856dfc92816473ebf47f66e263a2668a97896`](https://github.com/cloudflare/wrangler-action/commit/d13856dfc92816473ebf47f66e263a2668a97896) Thanks [@GrantBirki](https://github.com/GrantBirki)! - This change introduces three new GitHub Actions output variables. These variables are as follows:

    -   `command-output` - contains the string results of `stdout`
    -   `command-stderr` - contains the string results of `stderr`
    -   `deployment-url` - contains the string results of the URL that was deployed (ex: `https://<your_pages_site>.pages.dev`)

    These output variables are intended to be used by more advanced workflows that require the output results or deployment url from Wrangler commands in subsequent workflow steps.

### Patch Changes

-   [#216](https://github.com/cloudflare/wrangler-action/pull/216) [`9aba9c34daabca23a88191a5fe1b81fa721c1f11`](https://github.com/cloudflare/wrangler-action/commit/9aba9c34daabca23a88191a5fe1b81fa721c1f11) Thanks [@Cherry](https://github.com/Cherry)! - Fixes issues with semver comparison, where version parts were treated lexicographically instead of numerically.

    Bulk secret uploading was introduced in wrangler `3.4.0`, and this action tries to check if the version used is greater than `3.4.0`, and then if so, using the new bulk secret API which is faster. Due to a bug in the semver comparison, `3.19.0` was being considered less than `3.4.0`, and then using an older and slower method for uploading secrets.

    Now the semver comparison is fixed, the faster bulk method is used for uploading secrets when available.

