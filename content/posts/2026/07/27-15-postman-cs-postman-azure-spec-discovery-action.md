---
title: Postman Onboarding Azure Spec Discovery
date: 2026-07-27 15:04:44 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding: Azure Spec Discovery action automates the discovery and export of API specifications from Azure services using your existing Azure credentials. It helps convert running Azure services into deterministic collections, OpenAPI-backed contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs without calling Azure directly. The action narrows down possible candidates by examining various sources like APIM, App Service, custom connectors, API Center, IaC, Logic Apps, Template Specs, Event Grid, Service Bus, and Function bindings, and selects the best fit based on specific criteria such as committed `.postman` binding, explicit `api-id`, select-grade repo tags, and gateway assignments.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

The Postman Onboarding: Azure Spec Discovery action automates the discovery and export of API specifications from Azure services using your existing Azure credentials. It helps convert running Azure services into deterministic collections, OpenAPI-backed contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs without calling Azure directly. The action narrows down possible candidates by examining various sources like APIM, App Service, custom connectors, API Center, IaC, Logic Apps, Template Specs, Event Grid, Service Bus, and Function bindings, and selects the best fit based on specific criteria such as committed `.postman` binding, explicit `api-id`, select-grade repo tags, and gateway assignments.

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


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.4.0
