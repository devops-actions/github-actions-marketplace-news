---
title: AWS Lambda Version Pruner
date: 2026-02-20 13:22:04 +00:00
tags:
  - suzujun
  - GitHub Actions
draft: false
repo: https://github.com/suzujun/aws-lambda-version-pruner
marketplace: https://github.com/marketplace/actions/aws-lambda-version-pruner
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/suzujun/aws-lambda-version-pruner** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-lambda-version-pruner) to find the latest changes.

## Action Summary

The AWS Lambda Version Pruner GitHub Action automates the cleanup of outdated or excessive AWS Lambda function versions by applying count-based (`keep-latest`) and age-based (`older-than-days`) pruning rules. It helps manage Lambda version sprawl, reducing clutter and costs, while ensuring alias-referenced versions and the `$LATEST` version are preserved by default. Key capabilities include operating on multiple functions, a dry-run mode for previewing deletions, and comprehensive output metrics for selected and deleted versions.

## Release notes

## What's Changed
- Support newline-separated multiple Lambda function names via `function-name` input
- Keep backward compatibility for single `function-name` input
- Update action metadata and README for multi-function usage

## Compatibility Notes
- `selected-versions` and `deleted-versions` outputs are now arrays of objects with `functionName` and `version`
