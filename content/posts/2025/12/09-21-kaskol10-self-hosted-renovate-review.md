---
title: Self-Hosted Renovate Review
date: 2025-12-09 21:16:18 +00:00
tags:
  - kaskol10
  - GitHub Actions
draft: false
repo: https://github.com/kaskol10/self-hosted-renovate-review
marketplace: https://github.com/marketplace/actions/self-hosted-renovate-review
version: v0.1.3
dependentsNumber: "?"
---


Version updated for **https://github.com/kaskol10/self-hosted-renovate-review** to version **v0.1.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/self-hosted-renovate-review) to find the latest changes.

## Release notes

 ### Fixed
 - Fixed GitHub token handling in composite actions - now properly uses `github.token` context variable
 - Improved error handling for missing GitHub token with clearer error messages

 ### Changed
 - Updated README structure with usage section at the top
 - Improved documentation for required workflow permissions
 - Enhanced troubleshooting section with permission error guidance

 ### Documentation
 - Added screenshot to README
 - Clarified permissions requirements (`contents: read` and `pull-requests: write`)
 - Updated examples to show proper permissions configuration
