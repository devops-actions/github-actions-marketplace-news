---
title: SMF Flutter Release
date: 2026-07-30 14:31:42 +00:00
tags:
  - Ventairy
  - GitHub Actions
draft: false
repo: https://github.com/Ventairy/smf-action
marketplace: https://github.com/marketplace/actions/smf-flutter-release
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SMF Action automates the process of releasing Flutter apps through a single reviewable pull request. It generates CI/CD workflows that handle iOS and Android releases, including versioning, changelogs, candidates, and approval. The action uploads exact store artifacts for testing and verifies or delivers them after the release PR is approved and merged. Key capabilities include safe defaults, such as generating configurations to upload candidates but not opt into App Review or Google Play production delivery.
---


Version updated for **https://github.com/Ventairy/smf-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smf-flutter-release) to find the latest changes.

## Action Summary

SMF Action automates the process of releasing Flutter apps through a single reviewable pull request. It generates CI/CD workflows that handle iOS and Android releases, including versioning, changelogs, candidates, and approval. The action uploads exact store artifacts for testing and verifies or delivers them after the release PR is approved and merged. Key capabilities include safe defaults, such as generating configurations to upload candidates but not opt into App Review or Google Play production delivery.

## What's Changed

## [1.2.0](https://github.com/Ventairy/smf-action/compare/v1.1.0...v1.2.0) (2026-07-29)


### Features

* install released SMF CLI ([34952a1](https://github.com/Ventairy/smf-action/commit/34952a1a9af7b01e6f22334d46a5ce8107f1f3e3))


### Bug Fixes

* publish Action tags atomically ([#15](https://github.com/Ventairy/smf-action/issues/15)) ([25b8023](https://github.com/Ventairy/smf-action/commit/25b8023d0a03be2558d7c313d3b9127adbbce274))
