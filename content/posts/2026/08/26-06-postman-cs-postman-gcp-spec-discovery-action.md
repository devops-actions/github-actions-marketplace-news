---
title: Postman Onboarding GCP Spec Discovery
date: 2026-08-26 06:35:57 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-gcp-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-gcp-spec-discovery
version: v1.3.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding: GCP Spec Discovery action automatically discovers and exports OpenAPI specifications from Google Cloud services, supporting Application Default Credentials (ADC) or Workload Identity Federation. It uses repository context to resolve APIs or supports exporting via API ID or config revision. The action requires a `project-id` and can be configured to use specific service names or labels for resolution.
---


Version updated for **https://github.com/postman-cs/postman-gcp-spec-discovery-action** to version **v1.3.2**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-gcp-spec-discovery) to find the latest changes.

## Action Summary

The Postman Onboarding: GCP Spec Discovery action automatically discovers and exports OpenAPI specifications from Google Cloud services, supporting Application Default Credentials (ADC) or Workload Identity Federation. It uses repository context to resolve APIs or supports exporting via API ID or config revision. The action requires a `project-id` and can be configured to use specific service names or labels for resolution.

## What's Changed

## What's Changed
* ci(release): port automatic release cut and verify tags by ancestry by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/27
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/30
* fix(test): assert the packaged version against package.json by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/31
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/32
* fix(release): fetch the tag parent before ancestry checks by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/33
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/34
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/35
* chore(deps): bump the actions group and follow the pins by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/36
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/40
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/42
* fix(ci): trigger writeback on dependabot branches by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/43
* fix(ci): pin writeback actions to immutable SHAs by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/44
* fix(ci): address Codex writeback feedback by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/45
* fix(ci): use ESM execSync and update permission test by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/46
* feat: publish as @postman/onboarding-gcp-spec-discovery with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/50
* fix(release): gate aliases on npm publish output and size registry read-back by @pavan-nelakuditi in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/51
* fix(release): keep alias gates on publish job result by @pavan-nelakuditi in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/52

## New Contributors
* @pavan-nelakuditi made their first contribution in https://github.com/postman-cs/postman-gcp-spec-discovery-action/pull/51

**Full Changelog**: https://github.com/postman-cs/postman-gcp-spec-discovery-action/compare/v1.1.8...v1.3.2
