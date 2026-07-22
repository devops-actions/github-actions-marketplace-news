---
title: PlatformIO Dependency Updater
date: 2026-07-22 06:05:29 +00:00
tags:
  - VIPnytt
  - GitHub Actions
draft: false
repo: https://github.com/VIPnytt/platformio-dependency-updater
marketplace: https://github.com/marketplace/actions/platformio-dependency-updater
version: v1.0.0-b2
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The PlatformIO Dependency Updater is a GitHub Action that checks for dependency updates in the `platformio.ini` file and creates pull requests when newer versions are available. It supports various dependency sources, including PlatformIO Registry, GitHub, GitLab, Bitbucket, and Arduino libraries, and can handle pre-release versions and custom package versions. The action automates dependency management by creating dedicated update branches, updating dependencies, and opening pull requests, while also maintaining the number of open dependency PRs to 5 and applying labels if they exist. It includes a 3-day cooldown for new releases to avoid faulty versions and manages updates for inactive repositories after 3 months.
---


Version updated for **https://github.com/VIPnytt/platformio-dependency-updater** to version **v1.0.0-b2**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/platformio-dependency-updater) to find the latest changes.

## Action Summary

The PlatformIO Dependency Updater is a GitHub Action that checks for dependency updates in the `platformio.ini` file and creates pull requests when newer versions are available. It supports various dependency sources, including PlatformIO Registry, GitHub, GitLab, Bitbucket, and Arduino libraries, and can handle pre-release versions and custom package versions. The action automates dependency management by creating dedicated update branches, updating dependencies, and opening pull requests, while also maintaining the number of open dependency PRs to 5 and applying labels if they exist. It includes a 3-day cooldown for new releases to avoid faulty versions and manages updates for inactive repositories after 3 months.

## What's Changed

## What's Changed
### Enhancements
* Add support for PlatformIO-official registry packages without owner-prefix by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/21
### Dependency updates
* Bump ruff from 0.15.21 to 0.15.22 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/16
* Bump actions/checkout from 7.0.0 to 7.0.1 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/17
* Bump uv from 0.11.29 to 0.11.30 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/19
* Bump gitpython from 3.1.52 to 3.1.53 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/20
* Bump actions/labeler from 6.2.0 to 7.0.0 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/18
### Miscellaneous
* Bump project version to v1.0.0b2 by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/23


**Full Changelog**: https://github.com/VIPnytt/platformio-dependency-updater/compare/v1.0.0-b1...v1.0.0-b2
