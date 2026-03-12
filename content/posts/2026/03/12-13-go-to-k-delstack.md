---
title: delstack-action
date: 2026-03-12 13:35:27 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.2.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.2.2**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that typically fail during standard CloudFormation deletion operations. It supports stacks created by various Infrastructure as Code tools (e.g., AWS CDK, AWS Amplify, Serverless Framework) and automates complex tasks such as resolving dependencies, handling retained resources, and performing pre-deletion optimizations. This tool simplifies and accelerates stack cleanup processes, particularly for challenging scenarios like non-empty S3 buckets or nested stacks with failed deletions.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at 3a2ac62dc0c56fa3e957fc6228e668f3645eb7c2 -->

## What's Changed
* fix: exclude DELETE_COMPLETE resources from FilterResourcesByType by @go-to-k in https://github.com/go-to-k/delstack/pull/564


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.2.1...v2.2.2
