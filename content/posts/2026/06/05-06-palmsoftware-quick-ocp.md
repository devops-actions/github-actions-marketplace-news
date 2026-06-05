---
title: Quick OCP
date: 2026-06-05 06:44:49 +00:00
tags:
  - palmsoftware
  - GitHub Actions
draft: false
repo: https://github.com/palmsoftware/quick-ocp
marketplace: https://github.com/marketplace/actions/quick-ocp
version: v0.0.33
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/palmsoftware/quick-ocp** to version **v0.0.33**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quick-ocp) to find the latest changes.

## What's Changed

## What's Changed

* fix: retry crc start on kubeconfig update failure (#52)

CRC occasionally reports `Cannot update kubeconfig: connection reset by peer` during startup but claims the cluster started successfully. This left `oc` unable to connect, causing wait-for-node-ready to time out after 10 minutes.

This was the sole cause of nightly flakiness over the past month, hitting OCP 4.18 in ~40% of runs. CRC start now retries up to 3 times on this error, with a `crc stop` in between. Restarts are fast since the bundle is already extracted.

**Full Changelog**: https://github.com/palmsoftware/quick-ocp/compare/v0.0.32...v0.0.33
