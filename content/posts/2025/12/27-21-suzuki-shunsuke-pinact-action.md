---
title: pinact
date: 2025-12-27 21:06:45 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/pinact-action
marketplace: https://github.com/marketplace/actions/pinact
version: v1.2.0
dependentsNumber: "143"
---


Version updated for **https://github.com/suzuki-shunsuke/pinact-action** to version **v1.2.0**.
- This action is used across all versions by **143** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinact) to find the latest changes.

## Action Summary

Pinact-action is a GitHub Action designed to automate the process of pinning specific versions of GitHub Actions and reusable workflows in workflow files. It ensures consistency and security by verifying and updating workflow configurations, pushing commits to a remote branch when required, or failing CI if actions are not properly pinned. Additionally, it offers validation-only mode and integrates with tools like Reviewdog for enhanced code review capabilities.

## Release notes

[Issues](https://github.com/suzuki-shunsuke/pinact-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av1.2.0) | [Pull Requests](https://github.com/suzuki-shunsuke/pinact-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av1.2.0) | https://github.com/suzuki-shunsuke/pinact-action/compare/v1.1.0...v1.2.0 | [Base revision](https://github.com/suzuki-shunsuke/pinact-action/tree/c1043996e860fc07fc542c5a466440c79c063890)

## Features

#845 Add the input `github_token_for_push` to use the different access token to push commits from the access token for `pinact run`
#847 Use [reviewdog](https://github.com/reviewdog/reviewdog) instead of pinact's -review option

## Fixes

#848 Fix permissions of GitHub App installation Access Tokens
