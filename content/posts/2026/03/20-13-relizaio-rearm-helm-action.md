---
title: ReARM Version and Publish Helm Chart Action
date: 2026-03-20 13:36:36 +00:00
tags:
  - relizaio
  - GitHub Actions
draft: false
repo: https://github.com/relizaio/rearm-helm-action
marketplace: https://github.com/marketplace/actions/rearm-version-and-publish-helm-chart-action
version: 1.7.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/relizaio/rearm-helm-action** to version **1.7.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rearm-version-and-publish-helm-chart-action) to find the latest changes.

## Action Summary

The `rearm-helm-action` GitHub Action automates the versioning, packaging, and publishing of Helm charts to OCI-compliant registries, ECR, or ChartMuseum while integrating with ReARM for release metadata submission. It simplifies chart version management by dynamically updating the `Chart.yaml` version, committing changes back to the repository, and computing a chart's SHA256 digest for secure tracking. This action streamlines Helm chart release workflows and supports additional features like SBOM generation and secure artifact signing.

## Release notes

- Bump rearm-actions to 1.3.0

This release bumps default ReARM CLI to 26.03.12 that contains breaking change, read more [here](https://github.com/relizaio/rearm-cli/releases/tag/26.03.12).
