---
title: Pkg Action
date: 2023-09-28 19:11:30 +00:00
tags:
  - lando
  - GitHub Actions
draft: false
repo: lando/pkg-action
marketplace: https://github.com/marketplace/actions/pkg-action
version: v3.0.0
dependentsNumber: "27"
---


Version updated for **lando/pkg-action** to version **v3.0.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **27** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pkg-action) to find the latest changes.

## Release notes

### New Features

* Bumped default `pkg` input to `pkg@5.8.0`
* Bumped default `node-version` input to `16`
* Disabled `--debug` by default. Added support for debug toggling via https://github.blog/changelog/2022-05-24-github-actions-re-run-jobs-with-debug-logging
* Synced `node-version` usage so it is used in all relevant build environments

### **BREAKING CHANGES**

* `node-version` input is now just a major version eg `16` instead of `node16`

