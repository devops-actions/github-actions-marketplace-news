---
title: delstack-action
date: 2026-03-11 13:36:22 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.2.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

The `delstack` GitHub Action is a tool designed to forcefully delete entire AWS CloudFormation stacks, even if they include resources that typically fail to delete during standard CloudFormation operations. It automates the deletion process by handling dependencies, clearing resource deletion blockers (e.g., S3 buckets with versioning, VPC-attached Lambda configurations), and enabling parallel stack deletions with interactive selection. This action simplifies and accelerates stack cleanup, especially for complex environments created with various Infrastructure as Code tools.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at fece46fbd6d576bc1fab15d2190402b6371edcca -->

## What's Changed
* docs: improve what is in README by @go-to-k in https://github.com/go-to-k/delstack/pull/549
* docs: Update README.md by @go-to-k in https://github.com/go-to-k/delstack/pull/551
* feat: Auto-detach VPC from Lambda functions before stack deletion by @go-to-k in https://github.com/go-to-k/delstack/pull/556


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.1.4...v2.2.0
