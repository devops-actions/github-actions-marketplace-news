---
title: AWS CDK Diff PR Commenter
date: 2026-07-20 23:09:24 +00:00
tags:
  - towardsthecloud
  - GitHub Actions
draft: false
repo: https://github.com/towardsthecloud/aws-cdk-diff-pr-commenter
marketplace: https://github.com/marketplace/actions/aws-cdk-diff-pr-commenter
version: v1.5.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automatically posts the output of `cdk diff` as a comment on Pull Requests, helping teams review infrastructure changes directly within their PR workflow. It updates existing comments and supports custom headers for better organization in multi-stack setups, parsing and highlighting IAM statement changes, Security Group changes, Parameters, and Resources.
---


Version updated for **https://github.com/towardsthecloud/aws-cdk-diff-pr-commenter** to version **v1.5.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aws-cdk-diff-pr-commenter) to find the latest changes.

## Action Summary

This GitHub Action automatically posts the output of `cdk diff` as a comment on Pull Requests, helping teams review infrastructure changes directly within their PR workflow. It updates existing comments and supports custom headers for better organization in multi-stack setups, parsing and highlighting IAM statement changes, Security Group changes, Parameters, and Resources.

## What's Changed


## [1.5.0](https://github.com/towardsthecloud/github-actions-builder/compare/v1.4.0...v1.5.0) (2026-07-20)


### Features

* add pnpm workspace configuration and update TypeScript settings ([5a03822](https://github.com/towardsthecloud/github-actions-builder/commit/5a03822eaf4d988f7b2ed48c92d519f7cbaa68e4))
* integrate Dependabot and Mergify for automated dependency management ([0e249c8](https://github.com/towardsthecloud/github-actions-builder/commit/0e249c82318d470240a03332b3bac18e4a8b63cc))
* update workflows to use self-hosted runners with arm64, fargate, and small labels ([15ce06a](https://github.com/towardsthecloud/github-actions-builder/commit/15ce06a86a03f995aafe21ba2da71872d819fc69))


### Bug Fixes

* update release workflow triggers to only activate on changes in src/ and build directories ([008a4ed](https://github.com/towardsthecloud/github-actions-builder/commit/008a4ed4906d107d187264932a9389dafa365b8f))
* update resource change handling in parsePlanfileJSON function ([f34ee67](https://github.com/towardsthecloud/github-actions-builder/commit/f34ee6785782a4ef2858a9dd40917c3d4a646dc5))


