---
title: Deploy to Neocities
date: 2024-11-20 08:47:08 +00:00
tags:
  - bcomnes
  - GitHub Actions
draft: false
repo: bcomnes/deploy-to-neocities
marketplace: https://github.com/marketplace/actions/deploy-to-neocities
version: v3.0.0
dependentsNumber: "759"
---


Version updated for **bcomnes/deploy-to-neocities** to version **v3.0.0**.
- This action is used across all versions by **759** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-neocities) to find the latest changes.

## Release notes

### Merged

- chore(deps-dev): bump npm-run-all2 from 6.2.6 to 7.0.1 [`#205`](https://github.com/bcomnes/deploy-to-neocities/pull/205)

### Commits

- **Breaking change:** Update to the latest async-neocities 4.0 [`7b14798`](https://github.com/bcomnes/deploy-to-neocities/commit/7b14798c892f2494466bc72d5402c85801f75341)
- BREAKING CHANGE: `api_token` action input is renamed to `api_key`, please update this
- BREAKING CHANGE: added a required `neocities_supporter` action input to toggle unsupported file filtering
- BREAKING CHANGE: added a `preview_before_deploy` action input to toggle informational deploy plans prior to deploys
- BREAKING CHANGE: completely rewrote the underlying library to provide better error handling and reporting
- BREAKING CHANGE: Remove a bunch of real time stats and progress meters. Deploys were finishing in seconds and these were very complicated to maintain.
