---
title: Postman Onboarding Azure Spec Discovery
date: 2026-07-26 22:38:55 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.3.8
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding Azure Spec Discovery action automates the discovery and export of API specs from Azure services using your existing Azure credentials. It resolves these specs based on committed `.postman` bindings, explicit API IDs, and provider-specific contracts. When multiple candidates match, it narrows them down through a six-tier pipeline that prioritizes exact commit bindings, gateway configurations, resource tags, and generic naming. The action supports various Azure services and integrates with Postman to create collections and perform contract checks.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.3.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

The Postman Onboarding Azure Spec Discovery action automates the discovery and export of API specs from Azure services using your existing Azure credentials. It resolves these specs based on committed `.postman` bindings, explicit API IDs, and provider-specific contracts. When multiple candidates match, it narrows them down through a six-tier pipeline that prioritizes exact commit bindings, gateway configurations, resource tags, and generic naming. The action supports various Azure services and integrates with Postman to create collections and perform contract checks.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/15
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/18
* fix(test): assert the packaged version against package.json by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/19
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/20
* fix(release): fetch the tag parent before ancestry checks by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/21
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/22


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.3.8
