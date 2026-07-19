---
title: zizmor - static analysis tool for Actions workflows
date: 2026-07-19 14:52:14 +00:00
tags:
  - its-me
  - GitHub Actions
draft: false
repo: https://github.com/its-me/action.zizmor
marketplace: https://github.com/marketplace/actions/zizmor-static-analysis-tool-for-actions-workflows
version: v1.0.1
dependentsNumber: "32"
actionType: Composite
actionSummary: |
  This GitHub Action runs the zizmor static analysis tool on GitHub Actions workflows. It automates finding security issues in workflows, providing inline annotations and SARIF files when code scanning is enabled, or simply streaming findings to the job log otherwise. The action uses a Docker image based on its own checked-out files, ensuring consistent behavior across different repositories calling it.
---


Version updated for **https://github.com/its-me/action.zizmor** to version **v1.0.1**.

- This action is used across all versions by **32** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zizmor-static-analysis-tool-for-actions-workflows) to find the latest changes.

## Action Summary

This GitHub Action runs the zizmor static analysis tool on GitHub Actions workflows. It automates finding security issues in workflows, providing inline annotations and SARIF files when code scanning is enabled, or simply streaming findings to the job log otherwise. The action uses a Docker image based on its own checked-out files, ensuring consistent behavior across different repositories calling it.

## What's Changed

## Changed

- Bump `github/codeql-action/upload-sarif` from 4.36.2 to 4.37.0 (#1, via Dependabot)

**Full Changelog**: https://github.com/its-me/action.zizmor/compare/v1.0.0...v1.0.1
