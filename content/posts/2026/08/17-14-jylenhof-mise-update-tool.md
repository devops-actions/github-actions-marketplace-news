---
title: Mise Update Tool
date: 2026-08-17 14:04:12 +00:00
tags:
  - jylenhof
  - GitHub Actions
draft: false
repo: https://github.com/jylenhof/mise-update-tool
marketplace: https://github.com/marketplace/actions/mise-update-tool
version: v1.0.4
dependentsNumber: "4"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action `mise-update-tool` automates the process of upgrading tools defined in a local mise configuration file. It uses the `mise upgrade --bump --local` command to update specified or all local tools, and optionally opens pull requests if config files change. This helps maintain tool versions and ensures consistency across projects.
---


Version updated for **https://github.com/jylenhof/mise-update-tool** to version **v1.0.4**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mise-update-tool) to find the latest changes.

## Action Summary

The GitHub Action `mise-update-tool` automates the process of upgrading tools defined in a local mise configuration file. It uses the `mise upgrade --bump --local` command to update specified or all local tools, and optionally opens pull requests if config files change. This helps maintain tool versions and ensures consistency across projects.

## What's Changed

## [1.0.4](https://github.com/jylenhof/mise-update-tool/compare/v1.0.3...v1.0.4) (2026-08-17)


### Bug Fixes

* only use nodejs 24 types related to nodejs 24 ([#43](https://github.com/jylenhof/mise-update-tool/issues/43)) ([657d6d2](https://github.com/jylenhof/mise-update-tool/commit/657d6d2d804e5c4583161ed590e98ea0e5fe808b))
