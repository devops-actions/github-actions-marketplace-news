---
title: Postman Onboarding Service Token
date: 2026-08-24 06:09:11 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-resolve-service-token-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-service-token
version: v2.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the minting of a fresh service-account access token and team ID in CI, ready to be used by the Postman API Onboarding suite. It supports different regions and can be used either as a recommended credential producer or an existing workflow refresh mechanism. The action generates the tokens and emits them as outputs that can be referenced by other actions in the workflow.
---


Version updated for **https://github.com/postman-cs/postman-resolve-service-token-action** to version **v2.2.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-service-token) to find the latest changes.

## Action Summary

This GitHub Action automates the minting of a fresh service-account access token and team ID in CI, ready to be used by the Postman API Onboarding suite. It supports different regions and can be used either as a recommended credential producer or an existing workflow refresh mechanism. The action generates the tokens and emits them as outputs that can be referenced by other actions in the workflow.

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
* chore(deps): bump actions/cache from 4.2.0 to 6.1.0 in the actions group across 1 directory by @dependabot[bot] in https://github.com/postman-cs/postman-resolve-service-token-action/pull/48
* docs: make gate commands independently verifiable by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/53
* feat: publish as @postman/onboarding-resolve-service-token with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-resolve-service-token-action/pull/56


**Full Changelog**: https://github.com/postman-cs/postman-resolve-service-token-action/compare/v2.0.4...v2.2.0
