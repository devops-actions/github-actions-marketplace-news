---
title: pinact
date: 2025-12-26 21:07:05 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/pinact-action
marketplace: https://github.com/marketplace/actions/pinact
version: v1.1.0
dependentsNumber: "143"
---


Version updated for **https://github.com/suzuki-shunsuke/pinact-action** to version **v1.1.0**.
- This action is used across all versions by **143** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinact) to find the latest changes.

## Action Summary

The `pinact-action` automates the process of pinning specific versions of GitHub Actions and reusable workflows in workflow files to enhance security and stability. It validates and updates the workflow files, ensuring that actions are securely pinned to specific versions, and optionally pushes the changes or fails the CI if unpinned actions are detected. This helps prevent issues caused by unintentional updates to third-party actions and ensures consistent builds.

## Release notes

[Issues](https://github.com/suzuki-shunsuke/pinact-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av1.1.0) | [Pull Requests](https://github.com/suzuki-shunsuke/pinact-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av1.1.0) | https://github.com/suzuki-shunsuke/pinact-action/compare/v1.0.1...v1.1.0 | [Base revision](https://github.com/suzuki-shunsuke/pinact-action/tree/e1f36cb5308c3858c4abaf58c102465ab2086006)

## Features

#838 #844 Rewrite Composite Action as JavaScript Action

The Composite Action has been rewritten as a JavaScript Action.
Using TypeScript allows for more flexible implementation and makes it possible to support new pinact options:

- update
- verify
- review
- min-age
- include
- exclude

In addition, the Action no longer depends on other actions, which improves performance.
