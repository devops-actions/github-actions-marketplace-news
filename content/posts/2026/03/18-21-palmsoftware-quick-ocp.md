---
title: Quick OCP
date: 2026-03-18 21:38:33 +00:00
tags:
  - palmsoftware
  - GitHub Actions
draft: false
repo: https://github.com/palmsoftware/quick-ocp
marketplace: https://github.com/marketplace/actions/quick-ocp
version: v0.0.28
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/palmsoftware/quick-ocp** to version **v0.0.28**.
- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quick-ocp) to find the latest changes.

## Action Summary

The `quick-ocp` GitHub Action automates the setup of an OpenShift Container Platform (OCP) cluster using OpenShift Local on GitHub-hosted runners, enabling users to quickly perform testing and development in a full OpenShift environment. It simplifies the process of provisioning OCP clusters by handling tasks like downloading required tools, managing connectivity checks, and version pinning to ensure stability. This action is ideal for workflows that require a lightweight, ephemeral OpenShift environment and works on low-resource runners, with limitations noted for specific runner configurations.

## Release notes

## What's Changed

### Improvements
- Suppress deprecated `node-role.kubernetes.io/master` nodeSelector warnings in console scaling operations to reduce CI log noise

**Full Changelog**: https://github.com/palmsoftware/quick-ocp/compare/v0.0.27...v0.0.28
