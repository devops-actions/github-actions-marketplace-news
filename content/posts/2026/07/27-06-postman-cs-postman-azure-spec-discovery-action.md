---
title: Postman Onboarding Azure Spec Discovery
date: 2026-07-27 06:57:48 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.3.9
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding: Azure Spec Discovery action automatically discovers and exports API specs from Azure services using your existing Azure credentials. It helps automate the process of creating a source-of-truth OpenAPI-based specification for Postman onboarding, supporting various Azure providers including APIM, App Service, custom connectors, API Center, and IaC. The action narrows down multiple Azure candidates based on various criteria and selects one by leveraging commit bindings, explicit `api-id` or `api-center-definition-id`, unique tags, GitHub labels, and IaC fingerprints.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.3.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

The Postman Onboarding: Azure Spec Discovery action automatically discovers and exports API specs from Azure services using your existing Azure credentials. It helps automate the process of creating a source-of-truth OpenAPI-based specification for Postman onboarding, supporting various Azure providers including APIM, App Service, custom connectors, API Center, and IaC. The action narrows down multiple Azure candidates based on various criteria and selects one by leveraging commit bindings, explicit `api-id` or `api-center-definition-id`, unique tags, GitHub labels, and IaC fingerprints.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/15
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/18
* fix(test): assert the packaged version against package.json by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/19
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/20
* fix(release): fetch the tag parent before ancestry checks by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/21
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/22
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/23


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.3.9
