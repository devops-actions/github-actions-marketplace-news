---
title: delstack-action
date: 2026-03-30 22:20:05 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.8.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.8.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a CLI and GitHub Action tool designed to automate the deletion of AWS CloudFormation stacks, including those with resources that are typically difficult to remove, such as non-empty S3 buckets or resources with deletion protection. It resolves inter-stack dependencies, handles retained resources, and ensures no orphaned resources remain. With features like parallel deletion, interactive stack selection, and integration with popular IaC tools (e.g., AWS CDK, SAM, and Serverless Framework), it simplifies and accelerates stack cleanup tasks in CI/CD pipelines or routine infrastructure management.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at cfcd5b67f5b9b53025e6c51d8e589cadf9140399 -->

## What's Changed
* test: handle missing RETAIN_MODE context gracefully in e2e CDK apps by @go-to-k in https://github.com/go-to-k/delstack/pull/619
* feat: support glob patterns for -s stack name filtering by @go-to-k in https://github.com/go-to-k/delstack/pull/621


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.7.0...v2.8.0
