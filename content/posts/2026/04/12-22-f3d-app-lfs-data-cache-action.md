---
title: Cache LFS data
date: 2026-04-12 22:00:56 +00:00
tags:
  - f3d-app
  - GitHub Actions
draft: false
repo: https://github.com/f3d-app/lfs-data-cache-action
marketplace: https://github.com/marketplace/actions/cache-lfs-data
version: v2.2
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/f3d-app/lfs-data-cache-action** to version **v2.2**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-lfs-data) to find the latest changes.

## Action Summary

The **`lfs-data-cache-action`** is a GitHub Action designed to efficiently cache and recover Git Large File Storage (LFS) data in CI workflows, reducing the need for repeated cloning of large files and minimizing LFS bandwidth usage. It operates in two modes: as a producer to cache and upload LFS data, and as a consumer to retrieve cached or pre-uploaded data, ensuring faster and cost-effective CI pipeline execution. The action leverages caching and artifact storage, with support for specifying repositories, branches, or commits to optimize LFS data handling.

## What's Changed

## What's Changed
* update all used actions to their last versions by @mwestphal in https://github.com/f3d-app/lfs-data-cache-action/pull/13


**Full Changelog**: https://github.com/f3d-app/lfs-data-cache-action/compare/v2.1...v2.2
