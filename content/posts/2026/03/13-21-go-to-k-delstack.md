---
title: delstack-action
date: 2026-03-13 21:37:01 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.3.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.3.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

The `delstack` GitHub Action is a tool designed to force delete entire AWS CloudFormation stacks, including resources that fail to delete through standard CloudFormation operations. It automates the deletion process for stacks created by various Infrastructure as Code tools (e.g., AWS CDK, Amplify, SAM) and handles complex scenarios like resources with `Retain` policies, non-empty S3 buckets, IAM groups, ECR repositories with images, and more. Additionally, it supports parallel deletion with dependency resolution and pre-deletion optimization, simplifying resource cleanup and resolving common stack deletion challenges.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at 4a59c431a3e89a3ec04d5599b9b9bf112bee0025 -->

## What's Changed
* test: add S3 bucket and query execution to Athena E2E test by @go-to-k in https://github.com/go-to-k/delstack/pull/573
* fix: support AWS::CloudFormation::CustomResource type for force deletion by @go-to-k in https://github.com/go-to-k/delstack/pull/575


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.3.0...v2.3.1
