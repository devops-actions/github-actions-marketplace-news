---
title: Ghcr.io Cleanup Action
date: 2026-05-25 22:12:25 +00:00
tags:
  - dataaxiom
  - GitHub Actions
draft: false
repo: https://github.com/dataaxiom/ghcr-cleanup-action
marketplace: https://github.com/marketplace/actions/ghcr-io-cleanup-action
version: v1.2.1
dependentsNumber: "907"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/dataaxiom/ghcr-cleanup-action** to version **v1.2.1**.

- This action is used across all versions by **907** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghcr-io-cleanup-action) to find the latest changes.

## Action Summary

The **GitHub Container Registry Image Cleanup Action** automates the deletion of container images from the GitHub Container Registry, supporting advanced retention rules such as tag patterns, image age, and keeping the most recent images. It efficiently handles multi-architecture images, as well as related metadata and signatures, ensuring a clean and manageable container registry. This action simplifies automated image cleanup tasks, reducing manual effort and optimizing storage management for GitHub-hosted repositories.

## What's Changed

* fix: tolerate every 404 on package version delete (was: fail on the second) (fix #121)
* fix: eliminate spurious "wasn't found" warnings from cosign signature dual-cascade race
* fix: per-image log buffer flushes audit trail even when a cascade errors mid-flight
