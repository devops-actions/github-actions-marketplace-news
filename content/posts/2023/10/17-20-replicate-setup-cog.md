---
title: Setup Cog
date: 2023-10-17 20:12:52 +00:00
tags:
  - replicate
  - GitHub Actions
draft: false
repo: replicate/setup-cog
marketplace: https://github.com/marketplace/actions/setup-cog
version: v1.0.3
dependentsNumber: "10"
---


Version updated for **replicate/setup-cog** to version **v1.0.3**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cog) to find the latest changes.

## Release notes

This release adds a new `install-cuda` boolean for configuring whether to Install CUDA drivers. This flag defaults to `true`, and can be set to `false` when building Cog containers that don't require GPU. See https://github.com/replicate/setup-cog/pull/13

Thanks to @luismavs and @nateraw for the PR and review. 🙏🏼 


