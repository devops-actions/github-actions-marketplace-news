---
title: Install omnipackage
date: 2026-07-18 22:31:18 +00:00
tags:
  - omnipackage
  - GitHub Actions
draft: false
repo: https://github.com/omnipackage/omnipackage-rs
marketplace: https://github.com/marketplace/actions/install-omnipackage
version: v0.1.17
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action installs and configures the OmniPackage CLI for building RPM, DEB, and Arch packages. It automates the process of packaging software into these formats using a specified channel (stable or master). The action is designed to be used in workflows on Ubuntu runners, automatically detecting the CPU architecture.
---


Version updated for **https://github.com/omnipackage/omnipackage-rs** to version **v0.1.17**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-omnipackage) to find the latest changes.

## Action Summary

This GitHub Action installs and configures the OmniPackage CLI for building RPM, DEB, and Arch packages. It automates the process of packaging software into these formats using a specified channel (stable or master). The action is designed to be used in workflows on Ubuntu runners, automatically detecting the CPU architecture.

## What's Changed

- fix dowload url retained package (3aa801f)
- gh market color to green (3b8aba2)
- set next versions 0.1.17 (9aaa991)
- add github action (cff437a)
- fix fedora 41 (dbea940)
- pin rust 1.95 (49f56ca)
- cargo update (ce6c454)
- add retry to s3 operations (c5f4219)
- remove badge border (7cc8b9e)
- add install.sh and install.json (#6) (b92554d)
