---
title: Container Build Flow Action
date: 2026-04-06 21:41:59 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.7.1
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.7.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

The **Container Build Flow Action** automates the process of building and tagging Docker container images based on GitHub workflow contexts, such as pull requests, development branches, or hotfixes. It eliminates repetitive configuration by intelligently detecting branch contexts and applying appropriate tagging strategies, while supporting dual registries, multi-platform builds, and built-in security scanning. This action streamlines container workflows, saves time, and improves consistency for modern development pipelines.

## What's Changed

## [1.7.1] - 2026-04-06

### Changed

- update CHANGELOG.md for v1.7.0
- Bump typescript from 5.9.3 to 6.0.2 (#34)
- Bump docker/login-action from 3 to 4 (#33)
- Bump docker/build-push-action from 6 to 7 (#32)
- Bump docker/metadata-action from 5 to 6 (#31)
- Bump docker/setup-buildx-action from 3 to 4 (#30)
- Bump aquasecurity/trivy-action from 0.34.1 to 0.35.0 (#29)
- Bump aquasecurity/trivy-action from 0.33.1 to 0.34.1 (#22)
- Bump actions/github-script from 7 to 8 (#24)
- Bump alpine from 3.21 to 3.23 (#23)
- Bump docker/build-push-action from 5 to 6 (#25)
- Bump actions/checkout from 4 to 6 (#26)
- Bump @types/node from 22.19.13 to 25.3.2 (#28)
- Bump github/codeql-action from 3 to 4
- add dependabot configuration for automated updates

### Security

- fix trivy-action tag to use v-prefix for resolution
