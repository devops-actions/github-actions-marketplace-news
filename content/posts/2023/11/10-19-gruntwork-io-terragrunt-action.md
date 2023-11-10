---
title: Gruntwork Terragrunt
date: 2023-11-10 19:03:13 +00:00
tags:
  - gruntwork-io
  - GitHub Actions
draft: false
repo: gruntwork-io/terragrunt-action
marketplace: https://github.com/marketplace/actions/gruntwork-terragrunt
version: v2.0.0
dependentsNumber: "22"
---


Version updated for **gruntwork-io/terragrunt-action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **22** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gruntwork-terragrunt) to find the latest changes.

## Release notes

## Description

* Updated user under which Terragrunt is invoked
* Added support for `INPUT_POST_EXEC_number` variables to allow execution of custom commands after terragrunt run.

## Related links

- https://github.com/gruntwork-io/terragrunt-action/pull/33
- https://github.com/gruntwork-io/terragrunt-action/pull/37

### Migration Guide

* Use `sudo` to do any action under privileged user
* Use `INPUT_POST_EXEC` to do any action to post-process files after Terragrunt execution
