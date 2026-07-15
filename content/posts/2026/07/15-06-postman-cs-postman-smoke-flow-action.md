---
title: Postman Onboarding Smoke Flow
date: 2026-07-15 06:48:35 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-smoke-flow-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-smoke-flow
version: v2.1.4
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, Postman Onboarding: Smoke Flow, reshapes a generated Postman Smoke collection to match a curated `flow.yaml` and optionally injects runtime auth for OAuth2 and API keys. It is part of the Postman API Onboarding suite and requires credentials such as `postman-access-token`, which is minted by `postman-resolve-service-token-action`. The action runs entirely through the Postman gateway under the token and can handle both US and EU data residency settings for consistent region calls.
---


Version updated for **https://github.com/postman-cs/postman-smoke-flow-action** to version **v2.1.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-smoke-flow) to find the latest changes.

## Action Summary

This GitHub Action, Postman Onboarding: Smoke Flow, reshapes a generated Postman Smoke collection to match a curated `flow.yaml` and optionally injects runtime auth for OAuth2 and API keys. It is part of the Postman API Onboarding suite and requires credentials such as `postman-access-token`, which is minted by `postman-resolve-service-token-action`. The action runs entirely through the Postman gateway under the token and can handle both US and EU data residency settings for consistent region calls.

## What's Changed

## What's Changed
* fix: safe item-PATCH reconciliation and strict uid parsing by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/43
* chore(release): v2.1.4 by @jaredboynton in https://github.com/postman-cs/postman-smoke-flow-action/pull/44


**Full Changelog**: https://github.com/postman-cs/postman-smoke-flow-action/compare/v2...v2.1.4
