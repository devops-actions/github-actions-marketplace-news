---
title: delstack-action
date: 2026-03-13 13:33:39 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.3.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.3.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

The `delstack` GitHub Action is a CLI tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that fail to delete during standard CloudFormation deletion, such as non-empty S3 buckets, nested child stacks, and IAM groups with external users. It automates stack deletions by resolving dependencies, handling resources with special deletion policies, and performing pre-deletion optimizations, making it especially useful for managing complex or problematic stacks created by CloudFormation or other IaC tools like AWS CDK or Serverless Framework.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at a908fa893c14fa6dfed756e72037e043e5a9ab36 -->

## What's Changed
* refactor: move preprocessing logic from app to preprocessor package by @go-to-k in https://github.com/go-to-k/delstack/pull/567
* style: format by @go-to-k in https://github.com/go-to-k/delstack/pull/571
* docs: add CONTRIBUTING.md with development guide by @go-to-k in https://github.com/go-to-k/delstack/pull/568
* feat: add Athena WorkGroup operator for force deletion by @go-to-k in https://github.com/go-to-k/delstack/pull/569
* refactor: remove unnecessary vars for range by @go-to-k in https://github.com/go-to-k/delstack/pull/572


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.2.2...v2.3.0
