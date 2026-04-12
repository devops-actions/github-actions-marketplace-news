---
title: Cross Platform Action
date: 2026-04-12 13:50:26 +00:00
tags:
  - cross-platform-actions
  - GitHub Actions
draft: false
repo: https://github.com/cross-platform-actions/action
marketplace: https://github.com/marketplace/actions/cross-platform-action
version: v1.0.0
dependentsNumber: "2,056"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/cross-platform-actions/action** to version **v1.0.0**.

- This action is used across all versions by **2,056** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-platform-action) to find the latest changes.

## Action Summary

This GitHub Action enables workflows to run on multiple platforms, including non-native and less commonly supported operating systems, architectures, and versions such as FreeBSD, OpenBSD, NetBSD, Haiku, and OmniOS. It automates cross-platform compatibility testing by providing a simplified way to specify operating systems, architectures, and configurations within a CI/CD pipeline. Key capabilities include multi-OS support, fast execution, low overhead, and the ability to use various shells and environment variables.

## What's Changed

### Fixed
- Fix #108: Fix file ownership on Haiku after rsync, resolving git
    `safe.directory` errors

### Changed
- **Breaking**: Update the requirement of Node for running this action from
    version 20 to 24.

### Removed
- **Breaking**: Remove support for running on macOS runners. Only Linux runners
    (e.g. `ubuntu-latest`) are now supported. This was deprecated in v0.25.0.
- **Breaking**: Remove the Xhyve hypervisor and the `hypervisor` input
    parameter. QEMU is now the only supported hypervisor. These were deprecated
    in v0.25.0.

