---
title: delstack-action
date: 2026-03-14 21:28:23 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.4.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.4.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

The **delstack** GitHub Action is a tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that fail to delete during standard CloudFormation operations. Unlike the default `FORCE_DELETE_STACK` option, which leaves behind undeleted resources, **delstack** ensures a complete cleanup by removing problematic resources such as non-empty S3 buckets, ECR repositories with images, and more. It supports stacks created by various Infrastructure as Code tools (e.g., AWS CDK, Serverless Framework) and automates tasks like dependency resolution, deletion policy handling, and pre-deletion optimization, making it an efficient solution for managing CloudFormation stack deletions without leaving orphaned resources.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at b0c7311118a061a19ca4c888cc365391ae82238c -->

## What's Changed
* docs: add comparison with CloudFormation FORCE_DELETE_STACK by @go-to-k in https://github.com/go-to-k/delstack/pull/578
* docs: use markdownlint instead of editorconfig by @go-to-k in https://github.com/go-to-k/delstack/pull/580
* feat: check and disable resource deletion protection before stack deletion by @go-to-k in https://github.com/go-to-k/delstack/pull/581
* feat: display and force-delete TerminationProtection stacks with -f flag by @go-to-k in https://github.com/go-to-k/delstack/pull/582


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.3.1...v2.4.0
