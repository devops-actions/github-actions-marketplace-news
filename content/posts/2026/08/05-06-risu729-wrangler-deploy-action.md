---
title: Wrangler Deploy
date: 2026-08-05 06:16:18 +00:00
tags:
  - risu729
  - GitHub Actions
draft: false
repo: https://github.com/risu729/wrangler-deploy-action
marketplace: https://github.com/marketplace/actions/wrangler-deploy
version: v1.2.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  The Wrangler Deploy Action automates the deployment of Cloudflare Workers from GitHub Actions, providing a consistent workflow for preview and production deployments. It leverages Wrangler's version already declared in the caller package or configured through mise, ensuring no additional installation is required. The action supports both pull-request previews with `wrangler versions upload` and dry-run fallbacks for forks without preview credentials. For production deployments, it checks for Cloudflare credentials and fails if missing, uploads Worker secrets atomically, and outputs URLs and deployment targets directly to the GitHub Actions job summary.
---


Version updated for **https://github.com/risu729/wrangler-deploy-action** to version **v1.2.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wrangler-deploy) to find the latest changes.

## Action Summary

The Wrangler Deploy Action automates the deployment of Cloudflare Workers from GitHub Actions, providing a consistent workflow for preview and production deployments. It leverages Wrangler's version already declared in the caller package or configured through mise, ensuring no additional installation is required. The action supports both pull-request previews with `wrangler versions upload` and dry-run fallbacks for forks without preview credentials. For production deployments, it checks for Cloudflare credentials and fails if missing, uploads Worker secrets atomically, and outputs URLs and deployment targets directly to the GitHub Actions job summary.

## What's Changed

# [1.2.0](https://github.com/risu729/wrangler-deploy-action/compare/v1.1.0...v1.2.0) (2026-08-04)


### Features

* support deployment secrets ([#11](https://github.com/risu729/wrangler-deploy-action/issues/11)) ([e943f96](https://github.com/risu729/wrangler-deploy-action/commit/e943f9681fb250fa0d0a104bd95ea121c510d192))

