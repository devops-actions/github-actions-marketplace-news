---
title: Postman Onboarding AWS Spec Discovery
date: 2026-08-26 06:39:17 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-aws-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery
version: v3.3.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automatically discovers and exports API specifications from AWS services using only existing AWS credentials. It solves the problem of creating a source-of-truth specification for Postman onboarding by leveraging your IAM permissions to automatically detect and resolve specs before calling AWS APIs. The action supports a wide range of AWS services, including API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, and more.
---


Version updated for **https://github.com/postman-cs/postman-aws-spec-discovery-action** to version **v3.3.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automatically discovers and exports API specifications from AWS services using only existing AWS credentials. It solves the problem of creating a source-of-truth specification for Postman onboarding by leveraging your IAM permissions to automatically detect and resolve specs before calling AWS APIs. The action supports a wide range of AWS services, including API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, and more.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/53
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/54
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/55
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/56
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/57
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/58
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/62
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/64
* fix(ci): trigger writeback on dependabot branches by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/65
* fix(ci): pin writeback actions to immutable SHAs by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/66
* fix(ci): address Codex writeback feedback by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/67
* fix(ci): use ESM execSync and update permission test by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/68
* docs: make gate commands independently verifiable by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/69
* feat: publish as @postman/onboarding-aws-spec-discovery with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/73
* fix(release): tolerate npm registry propagation by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/74


**Full Changelog**: https://github.com/postman-cs/postman-aws-spec-discovery-action/compare/v3.1.4...v3.3.1
