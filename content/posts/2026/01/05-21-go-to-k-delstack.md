---
title: delstack-action
date: 2026-01-05 21:20:33 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.1.4
dependentsNumber: "1"
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.1.4**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

The `delstack` GitHub Action is a command-line tool designed to forcefully delete entire AWS CloudFormation stacks, including resources that typically fail to delete during standard CloudFormation operations. It automates the removal of problematic resources such as non-empty S3 buckets, nested stacks, IAM groups with external users, and more, providing a comprehensive solution to clean up stacks created by CloudFormation or other tools like AWS CDK and Serverless Framework. This tool streamlines stack deletion, resolving common issues with stuck resources while ensuring unsupported or protected resources remain unaffected.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at eb14113a9483548ce87cfb94c32bdd560601de39 -->

## What's Changed
* chore: improve retryer with ratelimit none by @go-to-k in https://github.com/go-to-k/delstack/pull/545


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.1.3...v2.1.4
