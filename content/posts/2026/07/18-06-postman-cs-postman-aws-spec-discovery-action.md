---
title: Postman Onboarding AWS Spec Discovery
date: 2026-07-18 06:55:40 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-aws-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery
version: v2.0.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of API specs from AWS services using your existing AWS credentials. It solves the problem of setting up a source-of-truth spec hub for Postman onboarding by automatically detecting providers, resolving specs if they exist locally, and exporting them to Postman. The action supports various AWS services like API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, etc., and can be used in a CI/CD workflow without requiring GitHub tokens.
---


Version updated for **https://github.com/postman-cs/postman-aws-spec-discovery-action** to version **v2.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of API specs from AWS services using your existing AWS credentials. It solves the problem of setting up a source-of-truth spec hub for Postman onboarding by automatically detecting providers, resolving specs if they exist locally, and exporting them to Postman. The action supports various AWS services like API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, etc., and can be used in a CI/CD workflow without requiring GitHub tokens.

## What's Changed

## What's Changed
* feat(ci): fast-loop e2e tune-up (P1/P5) by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/31
* test(ci): complete deterministic fast-loop gates by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/33
* fix(ci): assert rebuilt dist has no drift by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/34
* chore(deps): bump the actions group with 3 updates by @dependabot[bot] in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/35
* chore(deps): bump the npm-minor-patch group with 21 updates by @dependabot[bot] in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/36
* feat(discovery): audit API Gateway schema coverage by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/37
* test(discovery): retain live contract audit proof by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/38


**Full Changelog**: https://github.com/postman-cs/postman-aws-spec-discovery-action/compare/v2...v2.0.3
