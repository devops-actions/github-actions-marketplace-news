---
title: Anchore Container Scan
date: 2024-10-12 02:20:43 +00:00
tags:
  - anchore
  - GitHub Actions
draft: false
repo: anchore/scan-action
marketplace: https://github.com/marketplace/actions/anchore-container-scan
version: v5.0.0
dependentsNumber: "6,464"
---


Version updated for **anchore/scan-action** to version **v5.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **6,464** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/anchore-container-scan) to find the latest changes.

## Release notes

## New in scan-action v5.0.0

- chore(deps): update Grype to v0.82.0 (#383) [[anchore-actions-token-generator](https://github.com/anchore-actions-token-generator)]

## 🚀 Features

- feat: short-lived grype-db cache (#348) [[kzantow](https://github.com/kzantow)]
Note: with this release grype is no longer installed on `$PATH`. We suspect the changes here could break a number of users of the action who have learned to expect Grype be installed on `$PATH`.
