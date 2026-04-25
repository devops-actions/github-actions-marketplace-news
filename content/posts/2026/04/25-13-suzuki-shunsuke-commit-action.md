---
title: Create Commit By GitHub API
date: 2026-04-25 13:23:10 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/commit-action
marketplace: https://github.com/marketplace/actions/create-commit-by-github-api
version: v0.1.2
dependentsNumber: "49"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/suzuki-shunsuke/commit-action** to version **v0.1.2**.

- This action is used across all versions by **49** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-commit-by-github-api) to find the latest changes.

## Action Summary

`commit-action` is a GitHub Action designed to automate the process of creating and pushing **verified commits** directly to remote branches using the GitHub API, without relying on Git commands or managing GPG/SSH keys. It addresses the challenges of creating secure, signed commits in CI/CD pipelines and eliminates the need for manual credential management. Key capabilities include the ability to use GitHub App installation access tokens for secure authentication and pushing changes while triggering new workflow runs.

## What's Changed

[Issues](https://github.com/suzuki-shunsuke/commit-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av0.1.2) | [Pull Requests](https://github.com/suzuki-shunsuke/commit-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av0.1.2) | https://github.com/suzuki-shunsuke/commit-action/compare/v0.1.1...v0.1.2 | [Base revision](https://github.com/suzuki-shunsuke/commit-action/tree/5a16840cb815e30e051c3e4bd86621c243bd1a77)

## 🐛 Bug Fixes

Update commit-ts 0.1.10 to 0.1.13

https://github.com/suzuki-shunsuke/commit-ts/pull/275 preserve non-UTF-8 bytes by uploading binary files as blobs
