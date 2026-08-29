---
title: Postman Onboarding Smoke Flow
date: 2026-08-29 01:50:23 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-smoke-flow-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-smoke-flow
version: v3.7.4
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Postman Onboarding: Smoke Flow action reshapes a generated Postman Smoke collection into an ordered journey, automatically determining the flow path using `postman/flow.yaml` or deriving it from an OpenAPI spec if it's absent. It supports auto-curation of a manifest and runtime auth injection for OAuth2 and API keys. The composite action is part of the larger Postman API Onboarding suite and requires inputs such as project name, workspace ID, spec ID, Smoke collection ID, flow path, spec path, access token, and region.
---


Version updated for **https://github.com/postman-cs/postman-smoke-flow-action** to version **v3.7.4**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-smoke-flow) to find the latest changes.

## Action Summary

The Postman Onboarding: Smoke Flow action reshapes a generated Postman Smoke collection into an ordered journey, automatically determining the flow path using `postman/flow.yaml` or deriving it from an OpenAPI spec if it's absent. It supports auto-curation of a manifest and runtime auth injection for OAuth2 and API keys. The composite action is part of the larger Postman API Onboarding suite and requires inputs such as project name, workspace ID, spec ID, Smoke collection ID, flow path, spec path, access token, and region.

## What's Changed

## What's Changed
* ci(release): cut immutable tags only after gates pass on main by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/57
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/58
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/59
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/60
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/61
* docs: make gate commands independently verifiable by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/76
* feat: publish as @postman/onboarding-smoke-flow with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/80
* feat: support monorepo working directories by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/81
* fix(release): tolerate npm registry propagation by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/82
* fix: activate CLI working directory once by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/83
* fix(deps): migrate automation core scope by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/84
* chore: ignore local plans by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/86
* fix: harden untrusted flow inputs by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/87


**Full Changelog**: https://github.com/postman-cs/postman-smoke-flow-action/compare/v2.1.7...v3.7.4
