---
title: Setup Minecraft
date: 2023-09-20 09:45:29 +00:00
tags:
  - mcenv
  - GitHub Actions
draft: false
repo: mcenv/setup-minecraft
marketplace: https://github.com/marketplace/actions/setup-minecraft
version: v3.3.0
dependentsNumber: "20"
---


Version updated for **mcenv/setup-minecraft** to version **v3.3.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **20** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-minecraft) to find the latest changes.

## Release notes

### New Features

- Add `cache` input #134
  - Whether to cache Minecraft. Default `false`.
  - Caching server.jar does not reduce workflow execution time significantly, even though it uses more than 45MB of cache space per version. Set this to `true` only if you want to reduce execution time as much as possible or make your workflow more stable.
- Add `retries` input #126
  - Number of retries to download Minecraft. Default `3`.
