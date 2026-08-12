---
title: SDP CI Integration
date: 2026-08-12 22:52:47 +00:00
tags:
  - opentext
  - GitHub Actions
draft: false
repo: https://github.com/opentext/sdp-github-actions-integration
marketplace: https://github.com/marketplace/actions/sdp-ci-integration
version: v26.4.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the communication between GitHub workflows and an OpenText Core Software Delivery Platform (formerly ALM Octane/ValueEdge) through CI/CD. It monitors workflow runs, updates them in the product, and can handle BDD test results and debugging information. The action supports both unidirectional and bidirectional communication with the product, requiring specific API access roles for higher versions.
---


Version updated for **https://github.com/opentext/sdp-github-actions-integration** to version **v26.4.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sdp-ci-integration) to find the latest changes.

## Action Summary

This GitHub Action automates the communication between GitHub workflows and an OpenText Core Software Delivery Platform (formerly ALM Octane/ValueEdge) through CI/CD. It monitors workflow runs, updates them in the product, and can handle BDD test results and debugging information. The action supports both unidirectional and bidirectional communication with the product, requiring specific API access roles for higher versions.

## What's Changed

### v26.4.0

- Introduced a **deployment lock mechanism** to prevent duplicate workflow runs when multi-job upstream workflows trigger the integration multiple times.
- The integration now uses GitHub Deployments as atomic locks to ensure only one workflow processes each upstream workflow run, preventing duplicate CI events in the product.
- Added `SDP_ENABLE_DEPLOYMENT_LOCK` environment variable (enabled by default) to control this feature. Set to `false` to disable duplicate run protection if needed.
- Added comprehensive documentation for the duplicate workflow run protection feature in the README.
