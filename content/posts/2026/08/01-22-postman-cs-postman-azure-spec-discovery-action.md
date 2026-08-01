---
title: Postman Onboarding Azure Spec Discovery
date: 2026-08-01 22:25:43 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.4.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of API specifications from Azure services using existing Azure credentials. It prioritizes various sources, including APIM, App Service, Logic Apps, and more, based on predefined criteria such as committed `.postman` bindings and repository tags. The action supports OpenAPI, AsyncAPI, and other formats, but not container apps or specific versions of Azure providers like Function bindings.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.4.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of API specifications from Azure services using existing Azure credentials. It prioritizes various sources, including APIM, App Service, Logic Apps, and more, based on predefined criteria such as committed `.postman` bindings and repository tags. The action supports OpenAPI, AsyncAPI, and other formats, but not container apps or specific versions of Azure providers like Function bindings.

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


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.4.1
