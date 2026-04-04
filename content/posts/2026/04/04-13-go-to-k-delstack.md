---
title: delstack-action
date: 2026-04-04 13:40:34 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.10.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.10.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**Summary:**  
The `delstack` GitHub Action is a CLI tool designed to automate the deletion of AWS CloudFormation stacks, including those with undeletable or protected resources. It ensures complete cleanup by handling dependencies, force-deleting resources with retention policies, and resolving issues with deletion-blocking resources such as non-empty S3 buckets or Lambda VPC configurations. This action streamlines stack cleanup for CI/CD workflows, supporting AWS CDK, SAM, Amplify, Serverless Framework, and other IaC tools.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at 7aac9f274d5d95e72369f703ba37d463c6941fec -->

## What's Changed
* test: deploy Stage stacks in cdk_glob e2e test by @go-to-k in https://github.com/go-to-k/delstack/pull/625
* docs: change description for CDK integration in README by @go-to-k in https://github.com/go-to-k/delstack/pull/627
* docs: add -i for cdk in README by @go-to-k in https://github.com/go-to-k/delstack/pull/628
* docs: add E2E testing guidance for DELETE_FAILED reproduction by @go-to-k in https://github.com/go-to-k/delstack/pull/629
* docs: add note about adding to existing service client in CONTRIBUTING.md by @go-to-k in https://github.com/go-to-k/delstack/pull/631
* style: fix uppercase loop variable in IamGroupOperator by @go-to-k in https://github.com/go-to-k/delstack/pull/630
* feat: support IAM Users with policies, MFA devices, and other dependencies by @go-to-k in https://github.com/go-to-k/delstack/pull/632


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.9.0...v2.10.0
