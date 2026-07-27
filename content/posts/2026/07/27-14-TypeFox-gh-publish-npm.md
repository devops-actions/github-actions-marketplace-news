---
title: Publish updated packages
date: 2026-07-27 14:50:01 +00:00
tags:
  - TypeFox
  - GitHub Actions
draft: false
repo: https://github.com/TypeFox/gh-publish-npm
marketplace: https://github.com/marketplace/actions/publish-updated-packages
version: v0.5.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates publishing npm packages, VS Code extensions, and Open VSX extensions to their respective platforms based on whether the local versions are newer than what is already published. It helps in maintaining a consistent versioning scheme across different environments and tools. The action uses OIDC trusted publishing by default for npm authentication, but can also use an explicit `npm-token` for token-based authentication.
---


Version updated for **https://github.com/TypeFox/gh-publish-npm** to version **v0.5.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-updated-packages) to find the latest changes.

## Action Summary

This GitHub Action automates publishing npm packages, VS Code extensions, and Open VSX extensions to their respective platforms based on whether the local versions are newer than what is already published. It helps in maintaining a consistent versioning scheme across different environments and tools. The action uses OIDC trusted publishing by default for npm authentication, but can also use an explicit `npm-token` for token-based authentication.

## What's Changed

## What's Changed
* Added another latest/tag check by @kaisalmen in https://github.com/TypeFox/gh-publish-npm/pull/10
* Add a summary to the action by @gfontorbe in https://github.com/TypeFox/gh-publish-npm/pull/11


**Full Changelog**: https://github.com/TypeFox/gh-publish-npm/compare/v0.4.0...v0.5.0
