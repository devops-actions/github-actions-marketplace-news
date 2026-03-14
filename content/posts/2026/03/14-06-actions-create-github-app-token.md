---
title: Create GitHub App Token
date: 2026-03-14 06:05:53 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: https://github.com/actions/create-github-app-token
marketplace: https://github.com/marketplace/actions/create-github-app-token
version: v3.0.0
dependentsNumber: "24,686"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/actions/create-github-app-token** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **24,686** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-github-app-token) to find the latest changes.

## Action Summary

The "Create GitHub App Token" GitHub Action automates the process of generating installation access tokens for GitHub Apps. It simplifies the integration of GitHub Apps into workflows by securely handling authentication, enabling tasks like repository access and API interactions to be performed on behalf of the app. This action is particularly useful for managing short-lived tokens required for secure, automated processes.

## Release notes

# [3.0.0](https://github.com/actions/create-github-app-token/compare/v2.2.2...v3.0.0) (2026-03-14)


* feat!: node 24 support ([#275](https://github.com/actions/create-github-app-token/issues/275)) ([2e564a0](https://github.com/actions/create-github-app-token/commit/2e564a0bb8e7cc2b907b2401a2afe177882d4325))
* fix!: require `NODE_USE_ENV_PROXY` for proxy support ([#342](https://github.com/actions/create-github-app-token/issues/342)) ([4451bcb](https://github.com/actions/create-github-app-token/commit/4451bcbc139f8124b0bf04f968ea2586b17df458))


### Bug Fixes

* remove custom proxy handling ([#143](https://github.com/actions/create-github-app-token/issues/143)) ([dce0ab0](https://github.com/actions/create-github-app-token/commit/dce0ab05f36f30b22fd14289fd36655c618e4e8e))


### BREAKING CHANGES

* Custom proxy handling has been removed. If you use HTTP_PROXY or HTTPS_PROXY, you must now also set NODE_USE_ENV_PROXY=1 on the action step.
* Requires [Actions Runner v2.327.1](https://github.com/actions/runner/releases/tag/v2.327.1) or later if you are using a self-hosted runner.

