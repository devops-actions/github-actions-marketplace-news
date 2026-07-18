---
title: Postman Onboarding AWS Spec Discovery
date: 2026-07-18 14:23:11 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-aws-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery
version: v2.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of API specifications from AWS services using only the existing AWS credentials. It helps in creating a source-of-truth specification for Postman onboarding, which can be used to generate deterministic collections, OpenAPI-backed contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs. The action supports various AWS providers, including API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, etc., and uses IAM permissions for authorization.
---


Version updated for **https://github.com/postman-cs/postman-aws-spec-discovery-action** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-aws-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of API specifications from AWS services using only the existing AWS credentials. It helps in creating a source-of-truth specification for Postman onboarding, which can be used to generate deterministic collections, OpenAPI-backed contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs. The action supports various AWS providers, including API Gateway, AppSync, SNS, EventBridge, Lambda, SSM, etc., and uses IAM permissions for authorization.

## What's Changed

## What's Changed
* test(discovery): prove contract-control wires against live API Gateway by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/39
* v2.1.0: ambiguity outputs, local CDK/SAM artifact probe, additive REST enrichment by @jaredboynton in https://github.com/postman-cs/postman-aws-spec-discovery-action/pull/41


**Full Changelog**: https://github.com/postman-cs/postman-aws-spec-discovery-action/compare/v2.0.3...v2.1.0
