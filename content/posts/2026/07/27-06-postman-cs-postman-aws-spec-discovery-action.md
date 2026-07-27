---
title: Postman Onboarding AWS Spec Discovery
date: 2026-07-27 06:58:58 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-aws-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery
version: v3.1.9
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of API specs from AWS services using only existing AWS credentials. It solves the problem of generating a source-of-truth OpenAPI-backed specification for Postman onboarding, which can then be used to create deterministic collections, contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs. The action supports zero-config discovery by automatically detecting providers based on IAM permissions and prefers existing specs before calling AWS APIs. It also handles region and Postman handoff, using the `postman-resolve-service-token-action` to mint access tokens for spec import.
---


Version updated for **https://github.com/postman-cs/postman-aws-spec-discovery-action** to version **v3.1.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of API specs from AWS services using only existing AWS credentials. It solves the problem of generating a source-of-truth OpenAPI-backed specification for Postman onboarding, which can then be used to create deterministic collections, contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs. The action supports zero-config discovery by automatically detecting providers based on IAM permissions and prefers existing specs before calling AWS APIs. It also handles region and Postman handoff, using the `postman-resolve-service-token-action` to mint access tokens for spec import.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/53
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/54
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/55
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/56
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/57
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/58


**Full Changelog**: https://github.com/postman-cs/postman-aws-spec-discovery-action/compare/v3.1.4...v3.1.9
