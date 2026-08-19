---
title: Get PR Push token
date: 2026-08-19 06:19:50 +00:00
tags:
  - tiangolo
  - GitHub Actions
draft: false
repo: https://github.com/tiangolo/pr-push
marketplace: https://github.com/marketplace/actions/get-pr-push-token
version: 0.0.4
dependentsNumber: "47"
actionType: Docker
actionSummary: |
  The PR Push GitHub App issues short-lived, repository-scoped tokens to approved workflows that update existing pull request branches. It automates token management for workflow-triggered pushes to pull requests and manual commits on forks. The action uses GitHub's OIDC authentication to securely grant access to repository contents and pull requests, ensuring only authorized workflows can generate and use tokens.
---


Version updated for **https://github.com/tiangolo/pr-push** to version **0.0.4**.

- This action is used across all versions by **47** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-pr-push-token) to find the latest changes.

## Action Summary

The PR Push GitHub App issues short-lived, repository-scoped tokens to approved workflows that update existing pull request branches. It automates token management for workflow-triggered pushes to pull requests and manual commits on forks. The action uses GitHub's OIDC authentication to securely grant access to repository contents and pull requests, ensuring only authorized workflows can generate and use tokens.

## What's Changed

### Features

* ✨ Support workflow dispatch on PR branches. PR [#19](https://github.com/tiangolo/pr-push/pull/19) by [@tiangolo](https://github.com/tiangolo).
* ✨ Use PR Submit for release PRs. PR [#16](https://github.com/tiangolo/pr-push/pull/16) by [@tiangolo](https://github.com/tiangolo).

### Docs

* 📝 Use GitHub CLI for Git authentication. PR [#18](https://github.com/tiangolo/pr-push/pull/18) by [@tiangolo](https://github.com/tiangolo).
* 📝 Use FastAPI Cloud deployment domain. PR [#15](https://github.com/tiangolo/pr-push/pull/15) by [@tiangolo](https://github.com/tiangolo).
* 📝 Show PR Push commit identity. PR [#14](https://github.com/tiangolo/pr-push/pull/14) by [@tiangolo](https://github.com/tiangolo).

### Internal

* 🎨 Align logo background color. PR [#13](https://github.com/tiangolo/pr-push/pull/13) by [@tiangolo](https://github.com/tiangolo).

