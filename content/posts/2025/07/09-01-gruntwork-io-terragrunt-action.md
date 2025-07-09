---
title: Gruntwork Terragrunt
date: 2025-07-09 01:13:36 +00:00
tags:
  - gruntwork-io
  - GitHub Actions
draft: false
repo: https://github.com/gruntwork-io/terragrunt-action
marketplace: https://github.com/marketplace/actions/gruntwork-terragrunt
version: v3.0.0
dependentsNumber: "255"
---


Version updated for **https://github.com/gruntwork-io/terragrunt-action** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **255** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gruntwork-terragrunt) to find the latest changes.

## Release notes

## 🛠️ Breaking Changes

### Container Usage Removed

This GitHub Action no longer uses a container to run Terragrunt/OpenTofu. 

It simply installs Terragrunt and OpenTofu directly on the runner using mise. The action also supports installing Terragrunt + OpenTofu without running any Terragrunt command on behalf of the user.

For more information on how to use this action, read the updated [README](https://github.com/gruntwork-io/terragrunt-action).

## What's Changed
* feat: Switch off containers by @yhakbar in https://github.com/gruntwork-io/terragrunt-action/pull/103


**Full Changelog**: https://github.com/gruntwork-io/terragrunt-action/compare/v2.1.8...v3.0.0
