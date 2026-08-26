---
title: Postman Onboarding Azure Spec Discovery
date: 2026-08-26 06:38:10 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-azure-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery
version: v1.5.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding: Azure Spec Discovery action helps discover and export API specs from Azure services using the user's existing Azure credentials. It automates the process of identifying and selecting the most relevant Azure service spec for integration with Postman, ensuring a reliable source-of-truth for API contracts. The action handles various Azure providers such as APIM, App Service, custom connectors, and others, and narrows down the results based on tags, environment variables, and Git metadata, providing users with clear and actionable insights into their API specs.
---


Version updated for **https://github.com/postman-cs/postman-azure-spec-discovery-action** to version **v1.5.3**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-azure-spec-discovery) to find the latest changes.

## Action Summary

The Postman Onboarding: Azure Spec Discovery action helps discover and export API specs from Azure services using the user's existing Azure credentials. It automates the process of identifying and selecting the most relevant Azure service spec for integration with Postman, ensuring a reliable source-of-truth for API contracts. The action handles various Azure providers such as APIM, App Service, custom connectors, and others, and narrows down the results based on tags, environment variables, and Git metadata, providing users with clear and actionable insights into their API specs.

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
* fix(release): gate aliases on npm publish output and retry registry r… by @pavan-nelakuditi in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/39
* fix(release): size registry read-back window to measured propagation delay by @pavan-nelakuditi in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/40
* fix(release): keep alias gates on publish job result by @pavan-nelakuditi in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/41

## New Contributors
* @pavan-nelakuditi made their first contribution in https://github.com/postman-cs/postman-azure-spec-discovery-action/pull/39

**Full Changelog**: https://github.com/postman-cs/postman-azure-spec-discovery-action/compare/v1.3.5...v1.5.3
