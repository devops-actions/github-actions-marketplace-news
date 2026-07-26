---
title: PlatformIO Dependency Updater
date: 2026-07-26 06:26:29 +00:00
tags:
  - VIPnytt
  - GitHub Actions
draft: false
repo: https://github.com/VIPnytt/platformio-dependency-updater
marketplace: https://github.com/marketplace/actions/platformio-dependency-updater
version: v1.0.0-b3
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action checks a `platformio.ini` file for dependency updates across various platforms like PlatformIO, Espressif, and Git-based services. It automatically creates pull requests with release notes when newer versions are available, ensuring projects remain up to date with the latest dependencies. The action supports multiple dependency sources and handles pre-releases appropriately, offering options for cooldown periods and customizing labels and PR limits.
---


Version updated for **https://github.com/VIPnytt/platformio-dependency-updater** to version **v1.0.0-b3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/platformio-dependency-updater) to find the latest changes.

## Action Summary

This GitHub Action checks a `platformio.ini` file for dependency updates across various platforms like PlatformIO, Espressif, and Git-based services. It automatically creates pull requests with release notes when newer versions are available, ensuring projects remain up to date with the latest dependencies. The action supports multiple dependency sources and handles pre-releases appropriately, offering options for cooldown periods and customizing labels and PR limits.

## What's Changed

## What's Changed
### Enhancements
* Add ESP Registry as a source by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/28
* Configurable options: `cooldown`, `labels`, `open-pull-requests-limit`, and `project-dir` by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/31
### Dependency updates
* Bump astral-sh/setup-uv from 8.3.2 to 9.0.0 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/24
* Bump uv from 0.11.30 to 0.11.32 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/34
* Bump ruff from 0.15.22 to 0.16.0 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/33
* Bump gitpython from 3.1.53 to 3.1.55 by @dependabot[bot] in https://github.com/VIPnytt/platformio-dependency-updater/pull/30
### Miscellaneous
* Filter out environment-specific variables during parsing by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/27
* Allow updating the same dependency on multiple lines by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/35
* Full refactor to improve code quality for Ruff 0.16 by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/36
* Bump project version to v1.0.0-b3 by @JanPetterMG in https://github.com/VIPnytt/platformio-dependency-updater/pull/37


**Full Changelog**: https://github.com/VIPnytt/platformio-dependency-updater/compare/v1.0.0-b2...v1.0.0-b3
