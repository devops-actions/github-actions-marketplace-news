---
title: delstack-action
date: 2026-03-15 05:57:34 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.4.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.4.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a CLI tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that fail to delete during standard CloudFormation operations. It automates the cleanup of orphaned resources such as non-empty S3 buckets, ECR repositories with images, and other problematic resources, ensuring a complete and clean deletion. Additionally, it supports parallel deletion, handles dependencies, and provides options to manage resources with deletion protection or retain policies, making it a robust solution for automating stack cleanup tasks across various Infrastructure as Code tools.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at 71113f206b5fe530e85a6762146b99ef598e08cc -->

## What's Changed
* docs: add testgen_deletion_protection_no_tp to CONTRIBUTING.md by @go-to-k in https://github.com/go-to-k/delstack/pull/584
* chore(client): change retry logic for S3 client by @go-to-k in https://github.com/go-to-k/delstack/pull/586


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.4.0...v2.4.1
