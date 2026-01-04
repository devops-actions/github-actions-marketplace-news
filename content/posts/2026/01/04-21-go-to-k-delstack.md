---
title: delstack-action
date: 2026-01-04 21:29:21 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.1.3
dependentsNumber: "1"
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.1.3**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a CLI tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that typically fail during standard CloudFormation deletion processes, such as non-empty S3 buckets or IAM groups with external users. It supports stacks created by various Infrastructure as Code tools like AWS CDK, AWS SAM, and Serverless Framework, automating the cleanup of problematic resources to streamline stack deletion workflows. This tool simplifies stack management by targeting failures caused by dependencies or resource-specific limitations within the stack.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at bd9c4af760f6760e4da8d639f0f61d33cf58af1a -->

## What's Changed
* revert: "chore(client): improve retryer (#541)" by @go-to-k in https://github.com/go-to-k/delstack/pull/543


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.1.2...v2.1.3
