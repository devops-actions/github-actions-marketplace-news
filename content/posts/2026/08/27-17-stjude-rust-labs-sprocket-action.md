---
title: Sprocket CI/CD
date: 2026-08-27 17:39:15 +00:00
tags:
  - stjude-rust-labs
  - GitHub Actions
draft: false
repo: https://github.com/stjude-rust-labs/sprocket-action
marketplace: https://github.com/marketplace/actions/sprocket-ci-cd
version: v0.30.0
dependentsNumber: "8"
actionType: Docker
actionSummary: |
  This GitHub Action provides a set of commands from the Sprocket WDL tool, including static analysis (`check` and `lint`), validation, and formatting. It automates common tasks in CI/CD pipelines by running these tools on WDL documents in the repository. The action allows for customization through inputs and configuration files, enabling flexibility in how WDL code is validated and formatted.
---


Version updated for **https://github.com/stjude-rust-labs/sprocket-action** to version **v0.30.0**.

- This action is used across all versions by **8** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sprocket-ci-cd) to find the latest changes.

## Action Summary

This GitHub Action provides a set of commands from the Sprocket WDL tool, including static analysis (`check` and `lint`), validation, and formatting. It automates common tasks in CI/CD pipelines by running these tools on WDL documents in the repository. The action allows for customization through inputs and configuration files, enabling flexibility in how WDL code is validated and formatted.

## What's Changed

Updates the action to use [Sprocket v0.30.0](https://github.com/stjude-rust-labs/sprocket/releases/tag/v0.30.0) and maps the existing `all-lint-rules` input to `--tag all`.
