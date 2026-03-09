---
title: Expand AWS IAM Wildcards
date: 2026-03-09 21:48:35 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/expand-aws-iam-wildcards
marketplace: https://github.com/marketplace/actions/expand-aws-iam-wildcards
version: v1.1.9
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/thekbb/expand-aws-iam-wildcards** to version **v1.1.9**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/expand-aws-iam-wildcards) to find the latest changes.

## Action Summary

This GitHub Action, **Expand AWS IAM Wildcards**, automates the process of analyzing pull request diffs for AWS IAM wildcard actions and expands them into a detailed list of specific actions with links to AWS documentation. Its primary purpose is to help reviewers quickly understand changes to security policies by providing clear and actionable inline comments, reducing the risk of misconfigurations or unintended permissions.

## Release notes

- Refactor per-patch parsing in diff processing
- Update all dependencies
- Group all NPM dependabot updates into one pull request. Having development dependencies in a separate PR had little value and lead to merge conflicts in `package-lock.json`
