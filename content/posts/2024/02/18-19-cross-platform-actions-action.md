---
title: Cross Platform Action
date: 2024-02-18 19:08:36 +00:00
tags:
  - cross-platform-actions
  - GitHub Actions
draft: false
repo: cross-platform-actions/action
marketplace: https://github.com/marketplace/actions/cross-platform-action
version: v0.23.0
dependentsNumber: "486"
---


Version updated for **cross-platform-actions/action** to version **v0.23.0**.
- This action is used across all versions by **486** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-platform-action) to find the latest changes.

## Release notes

### Added
- Add support for FreeBSD 14.0 ([#74](https://github.com/cross-platform-actions/action/issues/74))
- Add post run step that prints the VM output
- Support hardware accelerated virtualization on Linux runners ([#47](https://github.com/cross-platform-actions/action/issues/47))

### Fixed
- OpenBSD VM fails during "Initializing VM" with QEMU on macOS ([#73](https://github.com/cross-platform-actions/action/issues/73))
- Use same options for rsync in both directions ([#76](https://github.com/cross-platform-actions/action/issues/76))

### Changed
- Update qemu to 8.2.0 for CVTPS2PD fix ([#78](https://github.com/cross-platform-actions/action/issues/78))

### Other
It's now recommended to use Linux runners. Since the upgrade [1] of the Linux runners, they now support hardware accelerated virtualization. The upgrade also comes with more resources resulting in having better performance than the macOS runners.

[1] https://github.blog/2024-01-17-github-hosted-runners-double-the-power-for-open-source/
