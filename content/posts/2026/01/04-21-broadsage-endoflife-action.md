---
title: End-of-life (EOL) GitHub Action
date: 2026-01-04 21:29:42 +00:00
tags:
  - broadsage
  - GitHub Actions
draft: false
repo: https://github.com/broadsage/endoflife-action
marketplace: https://github.com/marketplace/actions/end-of-life-eol-github-action
version: v4.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/broadsage/endoflife-action** to version **v4.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/end-of-life-eol-github-action) to find the latest changes.

## Action Summary

The EOL GitHub Action automates the tracking and management of software lifecycle End-of-Life (EOL) dates for over 380 products, ensuring dependencies remain secure and up-to-date. It provides capabilities such as multi-channel notifications (e.g., Slack, Discord, Teams), automated issue creation, CI/CD integration with version matrix generation, and smart filtering of supported versions. This action helps teams proactively address EOL risks, streamline dependency management, and maintain compliance in their workflows.

## Release notes

## [4.0.0](https://github.com/broadsage/endoflife-action/compare/v3.1.0...v4.0.0) (2026-01-04)


### ⚠ BREAKING CHANGES

* Migrated from endoflife.date API v0 to API v1. Users with custom-api-url must update to include /api/v1 path.

### Features

* complete v1 API migration with full endpoint coverage and improved test coverage ([4bfcea6](https://github.com/broadsage/endoflife-action/commit/4bfcea6b0b49a788836a01bc22c4a17efcfab467))
