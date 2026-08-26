---
title: Smyklot
date: 2026-08-26 06:26:35 +00:00
tags:
  - smykla-skalski
  - GitHub Actions
draft: false
repo: https://github.com/smykla-skalski/smyklot
marketplace: https://github.com/marketplace/actions/smyklot
version: v1.49.0
dependentsNumber: "2"
actionType: Docker
actionSummary: |
  Smyklot is a GitHub App that automates pull request approvals and merges by validating permissions against the `.github/CODEOWNERS` file. It supports multiple command formats, such as slash commands, mentions, and bare commands, with options to approve/merge using different merge methods. The app also includes features like reaction-based commands for approval, merge, cleanup, and helps manage bot reactions and comments efficiently.
---


Version updated for **https://github.com/smykla-skalski/smyklot** to version **v1.49.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smyklot) to find the latest changes.

## Action Summary

Smyklot is a GitHub App that automates pull request approvals and merges by validating permissions against the `.github/CODEOWNERS` file. It supports multiple command formats, such as slash commands, mentions, and bare commands, with options to approve/merge using different merge methods. The app also includes features like reaction-based commands for approval, merge, cleanup, and helps manage bot reactions and comments efficiently.

## What's Changed

## [1.49.0](https://github.com/smykla-skalski/smyklot/compare/v1.48.4...v1.49.0) (2026-08-25)

### Features

* **merge:** allow merging draft pull requests ([#321](https://github.com/smykla-skalski/smyklot/issues/321)) ([f4df619](https://github.com/smykla-skalski/smyklot/commit/f4df6199d0dc90b5194c6a6dc9e4cfa456b008d7))

### Bug Fixes

* **queue:** stop disabled repository work ([#326](https://github.com/smykla-skalski/smyklot/issues/326)) ([b9d29b5](https://github.com/smykla-skalski/smyklot/commit/b9d29b5d57bbdfa5a289111bfbc8e8e0ff8d7ee5))


## Smyklot v1.49.0

Docker image: `ghcr.io/smykla-skalski/smyklot:1.49.0`

## Changelog
* ad2a3803bb196d385db938e0fdb95993655470a8 chore(release): bump version to 1.49.0
* b9d29b5d57bbdfa5a289111bfbc8e8e0ff8d7ee5 fix(queue): stop disabled repository work (#326)
* f4df6199d0dc90b5194c6a6dc9e4cfa456b008d7 feat(merge): allow merging draft pull requests (#321)


