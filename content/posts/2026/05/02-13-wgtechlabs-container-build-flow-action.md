---
title: Container Build Flow Action
date: 2026-05-02 13:39:54 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.8.0
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.8.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

The **Container Build Flow Action** automates Docker and container image builds by intelligently detecting branch contexts (e.g., PR, dev, hotfix) and applying appropriate tagging strategies without requiring complex configurations. It simplifies workflows, reduces redundancy, and ensures consistent tagging across multiple branches while supporting dual registry pushes, multi-platform builds, security scanning, and caching. This action is ideal for teams looking to streamline container build processes and eliminate repetitive manual tasks.

## What's Changed

## [1.8.0] - 2026-05-02

### Added

- add floating-tags input for non-release build flows

### Changed

- update extra-tags output comment to include floating tags
- Bump actions/github-script from 8 to 9 (#37)
- Bump aquasecurity/trivy-action from 0.35.0 to 0.36.0 (#38)
