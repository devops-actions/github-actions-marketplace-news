---
title: Setup Kyma CLI
date: 2026-05-05 20:54:16 +00:00
tags:
  - kyma-project
  - GitHub Actions
draft: false
repo: https://github.com/kyma-project/setup-kyma-cli
marketplace: https://github.com/marketplace/actions/setup-kyma-cli
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kyma-project/setup-kyma-cli** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-kyma-cli) to find the latest changes.

## Action Summary

The **Setup Kyma CLI** GitHub Action automates the installation and caching of the Kyma Command Line Interface (CLI) in GitHub Actions workflows. It simplifies the process of provisioning the Kyma CLI by downloading the specified version (or the latest by default) and ensuring it is readily available for use. This action streamlines tasks involving Kyma CLI, reducing manual setup effort and supporting efficient CI/CD pipelines.

## What's Changed

## What's Changed

- Added option to append custom path to the output (#36)
- Added new flag support in app push (#35, #34)
- Authentication improvements: challenge GITHUB_TOKEN before use (#30, #31, #32)
- Dependency updates: bump actions/cache from 4 to 5 (#27)

## Usage

```yaml
- uses: kyma-project/setup-kyma-cli@v1.1.0
```

**Full Changelog**: https://github.com/kyma-project/setup-kyma-cli/compare/v1.0.0...v1.1.0
