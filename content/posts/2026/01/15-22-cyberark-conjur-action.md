---
title: CyberArk Conjur Secret Fetcher Action
date: 2026-01-15 22:04:12 +00:00
tags:
  - cyberark
  - GitHub Actions
draft: false
repo: https://github.com/cyberark/conjur-action
marketplace: https://github.com/marketplace/actions/cyberark-conjur-secret-fetcher-action
version: v2.1.0
dependentsNumber: "31"
---


Version updated for **https://github.com/cyberark/conjur-action** to version **v2.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **31** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cyberark-conjur-secret-fetcher-action) to find the latest changes.

## Action Summary

The CyberArk Conjur Secret Fetcher GitHub Action securely retrieves secrets from CyberArk Conjur and injects them into GitHub Actions workflows, streamlining secret management for CI/CD pipelines. It supports both host identity and JWT-based authentication, ensuring secure and automated access to sensitive credentials. This action solves the problem of securely managing and integrating secrets into workflows, offering robust capabilities for fetching and utilizing secrets directly from CyberArk Conjur.

## Release notes

[2.1.0] - 2026-01-12

### Changed
- The action is now using a pre-build image hosted on DockerHub in order to enable the usage of kubernetes mode for self-hosted runners
- The image now uses a non-root user


