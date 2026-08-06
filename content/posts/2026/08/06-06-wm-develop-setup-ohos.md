---
title: Setup HarmonyOS tools
date: 2026-08-06 06:11:02 +00:00
tags:
  - wm-develop
  - GitHub Actions
draft: false
repo: https://github.com/wm-develop/setup-ohos
marketplace: https://github.com/marketplace/actions/setup-harmonyos-tools
version: v3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `setup-ohos`, automates the setup of the HarmonyOS NEXT (API12+) building environment in a GitHub Actions workflow. It downloads and installs the latest CLI tools and SDK versions, ensuring that developers can easily build and test their applications on the platform. The action supports macOS and Windows with specific installation instructions for `libGL1` on Linux. Users can configure the version of the CLI tools to be used, cache the SDK, and access environment variables related to the SDK's home directories.
---


Version updated for **https://github.com/wm-develop/setup-ohos** to version **v3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-harmonyos-tools) to find the latest changes.

## Action Summary

This GitHub Action, `setup-ohos`, automates the setup of the HarmonyOS NEXT (API12+) building environment in a GitHub Actions workflow. It downloads and installs the latest CLI tools and SDK versions, ensuring that developers can easily build and test their applications on the platform. The action supports macOS and Windows with specific installation instructions for `libGL1` on Linux. Users can configure the version of the CLI tools to be used, cache the SDK, and access environment variables related to the SDK's home directories.

## What's Changed

- update setup.sh (695a5d3)
- chore (1f4ec7a)
- test use cache (4dbb630)
- fix windows path (8136e0f)
- fix: use bash on windows (e43beb7)
- fix filename (5124d8c)
- fix gh token (f16c2ca)
- feat: support more runner arch (89c72db)
- Update version information formatting in README (ed8745d)
- Update version numbers in README.md (71e2c59)
