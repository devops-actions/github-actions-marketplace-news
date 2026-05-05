---
title: Container Build Flow Action
date: 2026-05-05 20:53:08 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.8.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.8.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

The **Container Build Flow Action** automates intelligent Docker/Container image builds and tagging based on GitHub workflow contexts, eliminating repetitive manual configurations. It detects branch types (e.g., PRs, development, hotfixes) and applies branch-aware tagging strategies while supporting multi-platform builds, security scanning, and registry integration for Docker Hub and GitHub Container Registry. This action streamlines container workflows, saving development time and reducing errors in multi-branch environments.

## What's Changed

## [1.8.1] - 2026-05-05

### Changed

- fix validation order and disabled-state outputs
- fix bot-detection false skips on human-authored PRs (#43)
