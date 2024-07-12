---
title: Cross Platform Action
date: 2024-07-12 00:50:54 +00:00
tags:
  - cross-platform-actions
  - GitHub Actions
draft: false
repo: cross-platform-actions/action
marketplace: https://github.com/marketplace/actions/cross-platform-action
version: v0.25.0
dependentsNumber: "728"
---


Version updated for **cross-platform-actions/action** to version **v0.25.0**.
- This action is used across all versions by **728** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cross-platform-action) to find the latest changes.

## Release notes

### Summary

Version 0.25.0 brings several enhancements, deprecations, and support updates. Key changes include added support for new operating systems and deprecation of certain features. Below is a detailed overview of the changes.

### New Features

- **Support for FreeBSD 14.1**: This release includes support for FreeBSD 14.1, extending compatibility with this new version of the operating system.
- **Support for NetBSD 9.4**: Added support for NetBSD 9.4 to ensure compatibility and performance improvements on this system.

### Deprecations

- **macOS Runners**: Deprecation of support for macOS runners, due to the transition to ARM64 architecture for the latest macOS versions. Users are advised to switch to supported environments.
- **`hypervisor` Input Parameter**: The `hypervisor` input parameter has been deprecated. Users should update their configurations accordingly.

### Acknowledgements

We would like to thank all contributors and users for their feedback and support. Special thanks to Jacob Carlborg for his ongoing efforts and contributions to this release.

For a detailed list of changes, please refer to the [changelog](changelog.md) on our repository.
