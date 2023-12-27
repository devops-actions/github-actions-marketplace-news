---
title: Cross Platform Action
date: 2023-12-27 19:16:13 +00:00
tags:
  - cross-platform-actions
  - GitHub Actions
draft: false
repo: cross-platform-actions/action
marketplace: https://github.com/marketplace/actions/cross-platform-action
version: v0.22.0
dependentsNumber: "434"
---


Version updated for **cross-platform-actions/action** to version **v0.22.0**.
- This action is used across all versions by **434** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-platform-action) to find the latest changes.

## Release notes

### Added
- Added support for using the action in multiple steps in the same job ([#26](https://github.com/cross-platform-actions/action/issues/26)).
    All the inputs need to be the same for all steps, except for the following
    inputs: `sync_files`, `shutdown_vm` and `run`.

- Added support for specifying that the VM should not shutdown after the action
    has run. This adds a new input parameter: `shutdown_vm`. When set to `false`,
    this will hopefully mitigate very frequent freezing of VM during teardown ([#61](https://github.com/cross-platform-actions/action/issues/61), [#72](https://github.com/cross-platform-actions/action/issues/72)).

### Changed
- Always terminate VM instead of shutting down. This is more efficient and this
    will hopefully mitigate very frequent freezing of VM during teardown
    ([#61](https://github.com/cross-platform-actions/action/issues/61), [#72](https://github.com/cross-platform-actions/action/issues/72)).

- Use `unsafe` as the cache mode for QEMU disks. This should improve performance ([#67](https://github.com/cross-platform-actions/action/issues/67)).
