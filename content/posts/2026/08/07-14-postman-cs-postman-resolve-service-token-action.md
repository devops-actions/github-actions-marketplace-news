---
title: Postman Onboarding Service Token
date: 2026-08-07 14:44:32 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-resolve-service-token-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-service-token
version: v2.1.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of minting fresh service account access tokens and team IDs for use in Postman Onboarding workflows. It solves the problem of managing service account credentials securely by generating them directly from the CI environment, reducing the need to store sensitive information in repository secrets or personal access tokens (PMAKs). The key capabilities include:
  
  1. **Token Generation**: Automatically generates a fresh access token and team ID for each run.
  2. **Compliance with Postman Policies**: Uses service account credentials as specified by Postman's API onboarding suite, ensuring compliance with security policies.
  3. **Scalability**: Suitable for CI/CD pipelines that require frequent token generation, such as those in a staging or development environment.
  
  The action is particularly useful for workflows that need to onboard new projects or update existing ones while maintaining security standards.
---


Version updated for **https://github.com/postman-cs/postman-resolve-service-token-action** to version **v2.1.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-service-token) to find the latest changes.

## Action Summary

This GitHub Action automates the process of minting fresh service account access tokens and team IDs for use in Postman Onboarding workflows. It solves the problem of managing service account credentials securely by generating them directly from the CI environment, reducing the need to store sensitive information in repository secrets or personal access tokens (PMAKs). The key capabilities include:

1. **Token Generation**: Automatically generates a fresh access token and team ID for each run.
2. **Compliance with Postman Policies**: Uses service account credentials as specified by Postman's API onboarding suite, ensuring compliance with security policies.
3. **Scalability**: Suitable for CI/CD pipelines that require frequent token generation, such as those in a staging or development environment.

The action is particularly useful for workflows that need to onboard new projects or update existing ones while maintaining security standards.

## What's Changed

## What's Changed
* fix(release): verify service-token artifacts and async monitors by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/37
* perf(ci): accelerate Windows parity gate by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/38
* test: avoid empty npm CLI path on Windows by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/39
* chore: prepare v2.0.5 release by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/40
* fix(release): classify dispatch-cut runs by the cut tag ref by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/41
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/42
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/43
* fix(release): pass the required version input when dispatching a cut tag by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/44
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/45
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/46
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/47
* chore(deps): bump the npm-minor-patch group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/postman-cs/postman-resolve-service-token-action/pull/51
* fix(ci): make cache pin assertion semantic by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/52


**Full Changelog**: https://github.com/postman-cs/postman-resolve-service-token-action/compare/v2.0.4...v2.1.1
