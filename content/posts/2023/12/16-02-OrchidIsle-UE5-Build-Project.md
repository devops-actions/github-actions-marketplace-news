---
title: UE5-Build-Project
date: 2023-12-16 02:56:12 +00:00
tags:
  - OrchidIsle
  - GitHub Actions
draft: false
repo: OrchidIsle/UE5-Build-Project
marketplace: https://github.com/marketplace/actions/ue5-build-project
version: 0.2.0
dependentsNumber: "?"
---


Version updated for **OrchidIsle/UE5-Build-Project** to version **0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ue5-build-project) to find the latest changes.

## Release notes

# Release v0.2.0 - Archiving Feature Added

We're excited to announce the release of `v0.2.0` of our UE5-Build-Project GitHub Action. This version introduces the much-anticipated archiving feature, further enhancing the flexibility and utility of our action for Unreal Engine project builds.

## What's New

### Archiving Feature
- **Archive Your Builds**: With this new release, you now have the option to archive the build output of your Unreal Engine projects.
- **Configurable Archive Path**: Specify the destination path for your archives using the `ARCHIVE_PATH` input.
- **Flexible Option**: Archiving can be toggled on or off with the `ARCHIVE` input, providing you with control over when and how your build outputs are archived.

## Enhancements
- Improved input validation and error handling, especially concerning the new archiving feature.
- Updated documentation to guide users on how to utilize the new archiving option effectively.

## Inputs Added
- `ARCHIVE`: Set to `true` to enable archiving of the build output.
- `ARCHIVE_PATH`: Specify the path where the build output should be archived. This input is considered only when `ARCHIVE` is set to `true`.
