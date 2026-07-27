---
title: Postman Onboarding Service Token
date: 2026-07-27 14:58:57 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-resolve-service-token-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-service-token
version: v2.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This action generates and stores a fresh service account access token and team ID in the CI environment, which can be used by the Postman Onboarding action or stored as GitHub repository secrets. It is suitable for onboarding workflows where a valid PMAK is required. The token is automatically refreshed with each run.
---


Version updated for **https://github.com/postman-cs/postman-resolve-service-token-action** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-service-token) to find the latest changes.

## Action Summary

This action generates and stores a fresh service account access token and team ID in the CI environment, which can be used by the Postman Onboarding action or stored as GitHub repository secrets. It is suitable for onboarding workflows where a valid PMAK is required. The token is automatically refreshed with each run.

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


**Full Changelog**: https://github.com/postman-cs/postman-resolve-service-token-action/compare/v2.0.4...v2.1.0
