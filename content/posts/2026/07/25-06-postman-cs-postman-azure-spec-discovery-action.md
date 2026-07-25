---
title: Postman Onboarding Azure Spec Discovery
date: 2026-07-25 06:44:27 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.3.5
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of API specifications from Azure services using your existing Azure credentials. It helps in creating deterministic collections, contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs by leveraging Postman's Spec Hub feature. The action supports various Azure providers such as API Management, App Service, custom connectors, API Center, and IaC. It narrows down the API specification based on several criteria including committed `.postman` binding, explicit `api-id`, `api-center-definition-id`, gateway hostname, API base path, select-grade repo tag, self-hosted/gateway assignment narrowing via `gateway-id`, IaC fingerprint/resource-group correlation, and generic name ranking. The action uses Azure's DefaultAzureCredential for authentication without adding any secret inputs.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.3.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of API specifications from Azure services using your existing Azure credentials. It helps in creating deterministic collections, contract checks, smoke tests, mocks, monitors, repo artifacts, and CI runs by leveraging Postman's Spec Hub feature. The action supports various Azure providers such as API Management, App Service, custom connectors, API Center, and IaC. It narrows down the API specification based on several criteria including committed `.postman` binding, explicit `api-id`, `api-center-definition-id`, gateway hostname, API base path, select-grade repo tag, self-hosted/gateway assignment narrowing via `gateway-id`, IaC fingerprint/resource-group correlation, and generic name ranking. The action uses Azure's DefaultAzureCredential for authentication without adding any secret inputs.

## What's Changed

## What's Changed
* fix(release): set git committer identity in advance-rolling-aliases by @jaredboynton in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/14


**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.4...v1.3.5
