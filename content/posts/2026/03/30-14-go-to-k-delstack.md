---
title: delstack-action
date: 2026-03-30 14:14:37 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.7.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a CLI tool and GitHub Action designed to automate the deletion of AWS CloudFormation stacks, including those with resources that typically fail to delete, such as non-empty S3 buckets or protected resources. It resolves inter-stack dependencies, handles deletion protections, optimizes pre-deletion processes, and ensures no orphaned resources remain. This tool is particularly useful for streamlining stack cleanup in CI/CD pipelines, supporting various IaC tools like AWS CDK, SAM, and Serverless Framework.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at 789f441e0e5d4140307cfae9a40a91b7f2248994 -->

## What's Changed
* feat: add `cdk` subcommand for CDK app integration by @go-to-k in https://github.com/go-to-k/delstack/pull/612
* refactor: separate CLI layer from action logic in internal/app by @go-to-k in https://github.com/go-to-k/delstack/pull/614
* test: add unit tests for CdkDeleter logic by @go-to-k in https://github.com/go-to-k/delstack/pull/615
* refactor: introduce DI interfaces for StackDeleter/CdkDeleter with unit tests by @go-to-k in https://github.com/go-to-k/delstack/pull/616
* feat: support --app with both directory path and app command by @go-to-k in https://github.com/go-to-k/delstack/pull/617


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.6.1...v2.7.0
