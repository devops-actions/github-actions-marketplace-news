---
title: Container Build Flow Action
date: 2026-02-17 13:23:51 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.2.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.2.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

The "Container Build Flow Action" is a GitHub Action that automates Docker container builds with intelligent tagging strategies based on branch and workflow context. It eliminates the need for repetitive build workflows by automatically detecting events like pull requests, branch pushes, and hotfixes, and applying appropriate tags for Docker Hub and GitHub Container Registry. Key features include dual registry support, multi-platform builds, built-in security scanning, and automated pull request comments, streamlining containerization workflows for modern development teams.

## Release notes

## What's New

- Added GitHub Release event support for automatic semantic version tagging
- Standard releases generate `1.2.3`, `1.2`, `1`, and `latest` tags
- Pre-releases generate version and channel tags (e.g., `beta`)
- New `release-version` output
- Added `examples/release-workflow.yml`
- Removed unnecessary `package.json` and `package-lock.json`
- Zero breaking changes

**Full Changelog**: https://github.com/wgtechlabs/container-build-flow-action/compare/v1.1.1...v1.2.0
