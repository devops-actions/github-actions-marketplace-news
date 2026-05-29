---
title: esc-action
date: 2026-05-29 14:48:10 +00:00
tags:
  - pulumi
  - GitHub Actions
draft: false
repo: https://github.com/pulumi/esc-action
marketplace: https://github.com/marketplace/actions/esc-action
version: v2.0.0
dependentsNumber: "194"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/pulumi/esc-action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **194** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/esc-action) to find the latest changes.

## Action Summary

The Pulumi ESC GitHub Action simplifies the management and secure injection of secrets, environment variables, and configuration into GitHub workflows. It eliminates issues like outdated `.env` files and secret sprawl by integrating with popular secret stores, supporting dynamic credentials, and enabling automatic secret rotation. Key capabilities include securely injecting secrets into workflows, downloading the Pulumi ESC CLI for use, and leveraging OIDC tokens for secure authentication.

## What's Changed

## Breaking changes

- **Action runtime updated from Node 20 to Node 24** (#45). Runners must support the Node 24 action runtime. This is the reason for the major version bump.

## Other changes

- README usage examples now pin `pulumi/esc-action@v2`.
- Fixed documented OIDC org env var: `ESC_ACTION_OIDC_ORGANZATION` → `ESC_ACTION_OIDC_ORGANIZATION` (the action reads `ESC_ACTION_OIDC_ORGANIZATION`).
- Fixed invalid YAML and a malformed jobs block in README examples.

## Upgrading

Update your workflows to reference the new major version:

```yaml
uses: pulumi/esc-action@v2
```

**Full Changelog**: https://github.com/pulumi/esc-action/compare/v1.6.0...v2.0.0
