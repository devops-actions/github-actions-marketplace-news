---
title: Setup Soft-RoCE
date: 2026-08-27 17:42:55 +00:00
tags:
  - SF-Zhou
  - GitHub Actions
draft: false
repo: https://github.com/SF-Zhou/setup-soft-roce-action
marketplace: https://github.com/marketplace/actions/setup-soft-roce
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action sets up the Soft-RoCE software stack on Ubuntu GitHub Actions runners, automating the installation of necessary modules and configuration for RDMA (Remote Direct Memory Access) communication. It can be customized with specific network interface and device name settings to configure a Soft-RoCE network environment efficiently.
---


Version updated for **https://github.com/SF-Zhou/setup-soft-roce-action** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-soft-roce) to find the latest changes.

## Action Summary

This GitHub Action sets up the Soft-RoCE software stack on Ubuntu GitHub Actions runners, automating the installation of necessary modules and configuration for RDMA (Remote Direct Memory Access) communication. It can be customized with specific network interface and device name settings to configure a Soft-RoCE network environment efficiently.

## What's Changed

Fall back to linux-modules-extra and retry kernel source download
