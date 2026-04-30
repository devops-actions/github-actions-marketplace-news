---
title: Gruntwork Terragrunt
date: 2026-04-30 06:02:43 +00:00
tags:
  - gruntwork-io
  - GitHub Actions
draft: false
repo: https://github.com/gruntwork-io/terragrunt-action
marketplace: https://github.com/marketplace/actions/gruntwork-terragrunt
version: v3.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/gruntwork-io/terragrunt-action** to version **v3.3.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gruntwork-terragrunt) to find the latest changes.

## Action Summary

The **terragrunt-action** GitHub Action automates the installation and execution of Terragrunt and OpenTofu, providing streamlined infrastructure management within CI/CD workflows. It simplifies tasks like version management, command execution, and output handling, while optionally integrating with GitHub pull requests for automated feedback. This action helps teams efficiently manage Terraform configurations and infrastructure code with enhanced automation and reduced manual intervention.

## What's Changed

## Optional Output Capture

Added a new `tg_output_capture` input (default 1) that controls whether Terragrunt execution output is propagated to the `tg_action_output` step output.

Set `tg_output_capture: 0` to skip writing the Terragrunt log to `tg_action_output`.

Thanks to @Tensho for contributing this!

## What's Changed
* feat: add optional terragrunt output capture by @Tensho in https://github.com/gruntwork-io/terragrunt-action/pull/133

## New Contributors
* @Tensho made their first contribution in https://github.com/gruntwork-io/terragrunt-action/pull/133

**Full Changelog**: https://github.com/gruntwork-io/terragrunt-action/compare/v3.2.0...v3.3.0
