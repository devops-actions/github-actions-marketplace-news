---
title: ReARM Version and Publish Helm Chart Action
date: 2026-03-12 21:39:07 +00:00
tags:
  - relizaio
  - GitHub Actions
draft: false
repo: https://github.com/relizaio/rearm-helm-action
marketplace: https://github.com/marketplace/actions/rearm-version-and-publish-helm-chart-action
version: 1.5.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/relizaio/rearm-helm-action** to version **1.5.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rearm-version-and-publish-helm-chart-action) to find the latest changes.

## Action Summary

The `rearm-helm-action` GitHub Action automates the versioning, packaging, and publishing of Helm charts to OCI-compliant registries, AWS ECR, or ChartMuseum. It updates the chart version based on ReARM, commits these changes to the repository, and submits metadata (including the chart's SHA256 digest) to ReARM for release tracking. This action streamlines Helm chart management, ensuring consistent versioning and metadata integration across repositories and registries.

## Release notes

**BREAKING CHANGE:**
This action now uses repository path properly instead of resolving path by chat name.

**Other changes:**
- Bump rearm-actions to 1.1.0
- Support push to ReARM mirror
- Support for create component parameters
