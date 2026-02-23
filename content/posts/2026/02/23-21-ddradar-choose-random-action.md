---
title: Choose Random Action
date: 2026-02-23 21:46:13 +00:00
tags:
  - ddradar
  - GitHub Actions
draft: false
repo: https://github.com/ddradar/choose-random-action
marketplace: https://github.com/marketplace/actions/choose-random-action
version: v4.0.2
dependentsNumber: "1,284"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ddradar/choose-random-action** to version **v4.0.2**.
- This action is used across all versions by **1,284** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/choose-random-action) to find the latest changes.

## Action Summary

The "Choose Random Action" GitHub Action allows users to randomly select one item from a provided list of inputs, with optional weighting to influence selection probabilities. It automates decision-making tasks that require randomized output, such as selecting an image, message, or other predefined options. This action is particularly useful for workflows needing randomized elements while offering the flexibility to assign different likelihoods to each choice.

## Release notes

> [!IMPORTANT]
> `ddradar/choose-random-action@v4` now runs on Node.js 24 (runs.using: `node24`) and requires a minimum Actions Runner version of `2.327.1`.
> If you are using self-hosted runners, ensure they are updated before upgrading.

In this release, update `@actions/core` to 3.0.0 for [vulnerability on `undici`](https://github.com/advisories/GHSA-g9mf-h72j-4rw9).
There is no change in behavior.

_Full Changelog_: 346f0b0c44ee87c6adec7e15b1e01d234066f7f1...f02edbb236561dba33758abcb88535cbf0aa5d72

## Development :rocket:
- Use `oxc.oxc-vscode` extension on vscode (#1047)

## Documentation :memo:
- Update action version in usage (#1046)
- Update project version to v4.0.2 (#1046)

## Dependencies Update :robot:
|Type|Package|old|new|PR|
|----|-------|---|---|--|
|npm(security)|@actions/core|2.0.1|3.0.0|#1046|
|npm(dev)|oxlint-tsgolint|0.11.1|0.11.2|#1043|
|gh-actions|ddradar/lgtm-action|v3|v4|#1044|

