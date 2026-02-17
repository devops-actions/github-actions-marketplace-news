---
title: CalVer Creation
date: 2026-02-17 13:24:17 +00:00
tags:
  - MicahWW
  - GitHub Actions
draft: false
repo: https://github.com/MicahWW/CalVer-Creation
marketplace: https://github.com/marketplace/actions/calver-creation
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/MicahWW/CalVer-Creation** to version **v1.2.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/calver-creation) to find the latest changes.

## Action Summary

The **CalVer Creation** GitHub Action automates the generation of version tags based on the current date (with optional timezone support) and ensures unique tagging by appending build metadata as needed. It helps streamline workflows for projects requiring frequent, non-overlapping version tags, enabling automated tagging, pushing to GitHub, and optionally publishing releases. This action is particularly useful for fast-paced projects that need consistent and timestamped versioning to trigger other workflows efficiently.

## Release notes

The versions of the actions used in CalVer-Creation are now pinned to a specific version, instead of using just the major tag, so that when calling CalVer-Creation you know exactly what version is being used. With this it became even more necessary to add the missing Dependabot configuration that will now check weekly for updates.

Also, the major tag creation is now automated.

**Full Changelog**: https://github.com/MicahWW/CalVer-Creation/compare/v1.1.0...v1.2.0
