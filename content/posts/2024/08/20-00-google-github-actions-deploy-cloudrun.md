---
title: Deploy to Cloud Run
date: 2024-08-20 00:51:00 +00:00
tags:
  - google-github-actions
  - GitHub Actions
draft: false
repo: google-github-actions/deploy-cloudrun
marketplace: https://github.com/marketplace/actions/deploy-to-cloud-run
version: v2.7.0
dependentsNumber: "4,809"
---


Version updated for **google-github-actions/deploy-cloudrun** to version **v2.7.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,809** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-cloud-run) to find the latest changes.

## Release notes

**⚠️ Potentially breaking changes** - this fixes a bug where, when `tag_traffic` or `revision_traffic` was specified, no deployments happened. This was a very bad bug, but some users may have been depending on the broken behavior. After this version, deployment _always_ happens, and then if `tag_traffic` or `revision_traffic` are set, a second command is run to update the traffic accordingly.

## What's Changed
* docs: remove csv regions since it's not implemented upstream by @sethvargo in https://github.com/google-github-actions/deploy-cloudrun/pull/534
* Always update traffic if tag_traffic or revision_traffic is given by @sethvargo in https://github.com/google-github-actions/deploy-cloudrun/pull/535
* Release: v2.7.0 by @google-github-actions-bot in https://github.com/google-github-actions/deploy-cloudrun/pull/536


**Full Changelog**: https://github.com/google-github-actions/deploy-cloudrun/compare/v2.6.1...v2.7.0
