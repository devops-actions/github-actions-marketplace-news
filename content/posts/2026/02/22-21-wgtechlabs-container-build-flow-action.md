---
title: Container Build Flow Action
date: 2026-02-22 21:13:39 +00:00
tags:
  - wgtechlabs
  - GitHub Actions
draft: false
repo: https://github.com/wgtechlabs/container-build-flow-action
marketplace: https://github.com/marketplace/actions/container-build-flow-action
version: v1.3.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/wgtechlabs/container-build-flow-action** to version **v1.3.1**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-build-flow-action) to find the latest changes.

## Action Summary

The **Container Build Flow Action** automates Docker container builds and tagging for GitHub workflows by intelligently detecting the branch context (e.g., pull requests, development, staging, production) and applying appropriate tags without requiring extensive manual configuration. It solves the problem of repetitive and error-prone container build workflows by streamlining the process with features like dual registry support, multi-platform builds, built-in security scanning, and automatic PR comments, making it ideal for modern CI/CD pipelines.

## Release notes

## [1.3.1] - 2026-02-22

### Changed

- skip per-package monorepo release tags in container builds (#20)
