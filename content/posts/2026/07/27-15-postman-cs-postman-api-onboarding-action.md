---
title: Postman API Onboarding
date: 2026-07-27 15:07:00 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-api-onboarding-action
marketplace: https://github.com/marketplace/actions/postman-api-onboarding
version: v3.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of setting up a new Postman project by generating and committing various artifacts, including workspace, OpenAPI fixture upload, collection generation, environment management, mock server and monitor setup, and CI pipeline configuration. It uses the `postman-cs/postman-resolve-service-token-action` to obtain necessary API key, access token, and team ID for authentication and authorization in Postman.
---


Version updated for **https://github.com/postman-cs/postman-api-onboarding-action** to version **v3.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-api-onboarding) to find the latest changes.

## Action Summary

This GitHub Action automates the process of setting up a new Postman project by generating and committing various artifacts, including workspace, OpenAPI fixture upload, collection generation, environment management, mock server and monitor setup, and CI pipeline configuration. It uses the `postman-cs/postman-resolve-service-token-action` to obtain necessary API key, access token, and team ID for authentication and authorization in Postman.

## What's Changed

## What's Changed
* ci(release): port automatic release cut by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/91
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/92
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/93
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/94
* chore(deps): pin Insights onboarding v2.2.1 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/95
* fix: consume Insights human-session normalization by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/96
* fix: consume repo-sync v2.2.0 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/97
* fix: expose mock environment and refresh Azure pins by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/98
* feat: pass mock visibility policy through to repo-sync by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/99
* chore: pin repo-sync v2.4.0 by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/100
* fix: document private mock credential paths for consumers by @jaredboynton in https://github.com/postman-cs/postman-api-onboarding-action/pull/101


**Full Changelog**: https://github.com/postman-cs/postman-api-onboarding-action/compare/v2.1.8...v3.0.0
