---
title: Cross Platform Action
date: 2023-08-17 11:04:29 +00:00
tags:
  - cross-platform-actions
  - GitHub Actions
draft: false
repo: cross-platform-actions/action
marketplace: https://github.com/marketplace/actions/cross-platform-action
version: v0.19.0
dependentsNumber: 293
---


Version updated for **cross-platform-actions/action** to version **v0.19.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **293** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-platform-action) to find the latest changes.

## Release notes

### Changed
- VMs running via QEMU only expose SSE and SSE2 CPU features ([#60](https://github.com/cross-platform-actions/action/issues/60)).
    This changes the machine to `q35` and the cpu to `max`, for x86-64 using
    the QEMU hypervisor. This adds more CPU features like AVX and AVX2.
