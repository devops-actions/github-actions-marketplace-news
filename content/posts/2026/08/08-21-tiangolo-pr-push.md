---
title: Get PR Push token
date: 2026-08-08 21:54:05 +00:00
tags:
  - tiangolo
  - GitHub Actions
draft: false
repo: https://github.com/tiangolo/pr-push
marketplace: https://github.com/marketplace/actions/get-pr-push-token
version: 0.0.3
dependentsNumber: "32"
actionType: Docker
actionSummary: |
  The PR Push GitHub App automates the process of obtaining a short-lived, repository-scoped token for approved workflows that update existing pull request branches. It solves the problem of managing tokens securely and efficiently by allowing authorized workflows to request them directly from the app without exposing sensitive information in the repository's codebase. The action provides features such as token verification based on workflow versions and branch origin, ensuring secure and controlled access.
---


Version updated for **https://github.com/tiangolo/pr-push** to version **0.0.3**.

- This action is used across all versions by **32** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-pr-push-token) to find the latest changes.

## Action Summary

The PR Push GitHub App automates the process of obtaining a short-lived, repository-scoped token for approved workflows that update existing pull request branches. It solves the problem of managing tokens securely and efficiently by allowing authorized workflows to request them directly from the app without exposing sensitive information in the repository's codebase. The action provides features such as token verification based on workflow versions and branch origin, ensuring secure and controlled access.

## What's Changed

### Fixes

* 🐛 Support private repository pull requests. PR [#11](https://github.com/tiangolo/pr-push/pull/11) by [@tiangolo](https://github.com/tiangolo).

