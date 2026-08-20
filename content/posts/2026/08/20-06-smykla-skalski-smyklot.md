---
title: Smyklot
date: 2026-08-20 06:22:44 +00:00
tags:
  - smykla-skalski
  - GitHub Actions
draft: false
repo: https://github.com/smykla-skalski/smyklot
marketplace: https://github.com/marketplace/actions/smyklot
version: v1.44.0
dependentsNumber: "2"
actionType: Docker
actionSummary: |
  Smyklot is a GitHub App that automates pull request approvals and merges by validating permissions against the repository's CODEOWNERS file. It supports multiple command formats, including slash commands, mentions, and bare commands, and allows customization through a TOML configuration file. The app handles various commands such as approving, merging, squashing, rebasing, unapproving, cleaning up, and showing help information, with features like emoji feedback and reaction tracking.
---


Version updated for **https://github.com/smykla-skalski/smyklot** to version **v1.44.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smyklot) to find the latest changes.

## Action Summary

Smyklot is a GitHub App that automates pull request approvals and merges by validating permissions against the repository's CODEOWNERS file. It supports multiple command formats, including slash commands, mentions, and bare commands, and allows customization through a TOML configuration file. The app handles various commands such as approving, merging, squashing, rebasing, unapproving, cleaning up, and showing help information, with features like emoji feedback and reaction tracking.

## What's Changed

## [1.44.0](https://github.com/smykla-skalski/smyklot/compare/v1.43.1...v1.44.0) (2026-08-19)

### Features

* **sync:** the sync overhaul, and an index that rescans only what changed ([#282](https://github.com/smykla-skalski/smyklot/issues/282)) ([f3770d7](https://github.com/smykla-skalski/smyklot/commit/f3770d79f9835329950374c2c2d86b0dbefa4e36))

### Bug Fixes

* **deps:** update module modernc.org/sqlite to v1.57.0 ([#286](https://github.com/smykla-skalski/smyklot/issues/286)) ([ffc1ec1](https://github.com/smykla-skalski/smyklot/commit/ffc1ec118825e96f061fbf91a710cf3482b70b14))


## Smyklot v1.44.0

Docker image: `ghcr.io/smykla-skalski/smyklot:1.44.0`

## Changelog
* 1fabaa06e62163274ec56c0dc41ef7175f923298 chore(release): bump version to 1.44.0
* bdeff8feaf14b7166d887e645e1c7660b51fc0dc ci(release): pin the semantic-release plugin majors (#288)
* e8520c0b77a8f065a4f1953502e28b33e2123efa test(service): give Run room for the shutdown floor it cannot beat (#287)
* 0fa40a6dfd71d49f3a6da094052dc0566991d8b4 chore(deps): update dependency yq to v4.53.4 (#283)
* af206a9521e78d52aca08797fe659390c26b5ea4 ci(deps): update docker/setup-buildx-action action to v4.3.0 (#284)
* ffc1ec118825e96f061fbf91a710cf3482b70b14 fix(deps): update module modernc.org/sqlite to v1.57.0 (#286)
* f3770d79f9835329950374c2c2d86b0dbefa4e36 feat(sync): the sync overhaul, and an index that rescans only what changed (#282)
* 12509dfe3ad539350c2b7f7ca09023db8e0ae5b8 test(panel): story the states sync never showed (#280)


