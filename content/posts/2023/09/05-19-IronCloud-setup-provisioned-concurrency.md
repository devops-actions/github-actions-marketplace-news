---
title: Setup and Cleanup Provisioned Concurrency for AWS Lambda
date: 2023-09-05 19:03:14 +00:00
tags:
  - IronCloud
  - GitHub Actions
draft: false
repo: IronCloud/setup-provisioned-concurrency
marketplace: https://github.com/marketplace/actions/setup-and-cleanup-provisioned-concurrency-for-aws-lambda
version: v2
dependentsNumber: '?'
---


Version updated for **IronCloud/setup-provisioned-concurrency** to version **v2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-and-cleanup-provisioned-concurrency-for-aws-lambda) to find the latest changes.

## Release notes

This new version introduces significant improvements, including the ability to clean up older versions and their associated provisioned concurrency configurations.

## New Features

- **Cleanup of Older Versions**: The action now automatically deletes older versions of the Lambda function, helping you manage resources more effectively.
- **Cleanup of Provisioned Concurrency**: Along with older versions, the action also removes their associated provisioned concurrency configurations.

## How to Upgrade

To upgrade to this new version, update the uses line in your GitHub Actions workflow:
```yaml
uses: IronCloud/setup-provisioned-concurrency@v2
```
