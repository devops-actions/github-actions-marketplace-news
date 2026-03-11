---
title: Choose Random Action
date: 2026-03-11 21:46:32 +00:00
tags:
  - ddradar
  - GitHub Actions
draft: false
repo: https://github.com/ddradar/choose-random-action
marketplace: https://github.com/marketplace/actions/choose-random-action
version: v4.1.0
dependentsNumber: "1,286"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ddradar/choose-random-action** to version **v4.1.0**.
- This action is used across all versions by **1,286** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/choose-random-action) to find the latest changes.

## Action Summary

The "Choose Random Action" GitHub Action is designed to randomly select one item from a list of user-defined inputs, with optional weighting to influence the likelihood of selection. It automates tasks requiring randomized decision-making, such as choosing images or other resources dynamically in workflows. The action simplifies incorporating randomness into CI/CD pipelines while offering flexible configuration for weighted probabilities.

## Release notes

> [!IMPORTANT]
> `ddradar/choose-random-action@v4` now runs on Node.js 24 (runs.using: `node24`) and requires a minimum Actions Runner version of `2.327.1`.
> If you are using self-hosted runners, ensure they are updated before upgrading.

In this release, migrate `@actions/core` to native [GitHub Actions workflow command](https://docs.github.com/actions/reference/workflows-and-actions/workflow-commands).
There is no change in behavior.

_Full Changelog_: f02edbb236561dba33758abcb88535cbf0aa5d72...0c31d163e39a1dddb63d45d840debbd5f56477a1

## Features :speech_balloon:
- use native workflow command instead of `@actions/core` (#1062)

## Development :rocket:
- ci(gh-actions): add auto merge action (#1056)
- test(ci): add invalid parameter integration tests (#1063)
- ci(dependabot): add oxc group & update lint-tools group (#1070)
- chore: enable new oxlint rules & auto fix (#1071)

## Refactoring :sparkles:
- refactor(gh-actions): use GitHub CLI on apply milestone (#1057)
- refactor(ci): use variables & remove files on release (#1060, #1061)

## Dependencies Update :robot:
|Type|Package|old|new|PR|
|----|-------|---|---|--|
|packageManager|npm|11.8.0|11.11.0|#1072|
|npm(dev)|@types/node|24.10.9|24.11.2|#1050,#1051,#1058,#1068,#1072|
|npm(dev)|esbuild|0.27.2|0.27.3|#1052|
|npm(dev)|lint-staged|16.2.7|16.3.2|#1072|
|npm(dev)|oxfmt|0.26.0|0.36.0|#1049,#1053,#1059,#1066,#1072|
|npm(dev)|oxlint|1.41.0|1.51.0|#1049,#1053,#1059,#1066,#1072|
|npm(dev)|oxlint-tsgolint|0.11.2|0.16.0|#1049,#1054,#1059,#1064,#1066,#1072|
|gh-actions|actions/download-artifact|7.0.0|8.0.0|#1069|
|gh-actions|actions/upload-artifact|6.0.0|7.0.0|#1069|

