---
title: Container Build Flow Action
date: 2026-08-20 13:59:41 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.9.0
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  This GitHub Action automates container builds with intelligent tagging for Docker Hub and GitHub Container Registry based on the workflow context (PR, dev, patch, or WIP). It handles branch detection, tagging, building, and PR comments automatically without requiring manual configuration. The action supports dual registry support, smart tagging strategies, and integrates security features such as SBOMs and vulnerability scanning with Trivy.
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.9.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

This GitHub Action automates container builds with intelligent tagging for Docker Hub and GitHub Container Registry based on the workflow context (PR, dev, patch, or WIP). It handles branch detection, tagging, building, and PR comments automatically without requiring manual configuration. The action supports dual registry support, smart tagging strategies, and integrates security features such as SBOMs and vulnerability scanning with Trivy.

## What's Changed

## [1.9.0] - 2026-08-20

### Added

- add planned registry publishing (#54)

### Changed

- support planned manual releases (#56)
- join image tags with real newline
