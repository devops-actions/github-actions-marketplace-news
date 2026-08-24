---
title: Postman Onboarding Azure Spec Discovery
date: 2026-08-24 06:11:21 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.5.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automatically discovers and exports API specifications from Azure services using your existing Azure credentials, automating the process of setting up a source-of-truth for Postman onboarding. It resolves and selects the most appropriate API specification based on various criteria such as committed `.postman` bindings, explicit `api-id`, or specific tags. If there are multiple candidates, it narrows down the selection using a six-tier pipeline until a single specification is chosen. The action handles different Azure providers and supports various formats of specifications, including OpenAPI, AsyncAPI, and WSDL. It also provides zero-config discovery without requiring secret inputs, only needing provider-specific read access permissions.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.5.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automatically discovers and exports API specifications from Azure services using your existing Azure credentials, automating the process of setting up a source-of-truth for Postman onboarding. It resolves and selects the most appropriate API specification based on various criteria such as committed `.postman` bindings, explicit `api-id`, or specific tags. If there are multiple candidates, it narrows down the selection using a six-tier pipeline until a single specification is chosen. The action handles different Azure providers and supports various formats of specifications, including OpenAPI, AsyncAPI, and WSDL. It also provides zero-config discovery without requiring secret inputs, only needing provider-specific read access permissions.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/15
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/18
* fix(test): assert the packaged version against package.json by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/19
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/20
* fix(release): fetch the tag parent before ancestry checks by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/21
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/22
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/23
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/24
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/26
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/28
* fix(ci): trigger writeback on dependabot branches by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/29
* fix(ci): pin writeback actions to immutable SHAs by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/30
* fix(ci): address Codex writeback feedback by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/31
* fix(ci): use ESM execSync and update permission test by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/32
* test(windows): preserve gate timing under contention by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/34
* feat: publish as @postman/onboarding-azure-spec-discovery with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/38


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.5.0
