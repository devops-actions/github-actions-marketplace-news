---
title: Postman Onboarding Insights Linking
date: 2026-08-29 01:52:38 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-insights-onboarding-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-insights-linking
version: v2.5.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the linking of services discovered by Postman Insights to a user's Postman workspace and environment, ensuring that every service lands in the catalog with a collection, repo link, and live telemetry. It supports linking to specific workspaces and environments and requires human-user credentials for authentication. The action does not deploy any resources but focuses on updating existing ones after deployment.
---


Version updated for **https://github.com/postman-cs/postman-insights-onboarding-action** to version **v2.5.2**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-insights-linking) to find the latest changes.

## Action Summary

This GitHub Action automates the linking of services discovered by Postman Insights to a user's Postman workspace and environment, ensuring that every service lands in the catalog with a collection, repo link, and live telemetry. It supports linking to specific workspaces and environments and requires human-user credentials for authentication. The action does not deploy any resources but focuses on updating existing ones after deployment.

## What's Changed

## What's Changed
* ci(release): port automatic release cut from bootstrap by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/66
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/67
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/68
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/69
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/70
* feat: ship self-contained SEA binary (no npm/Node) by @mmorales-post in https://github.com/postman-cs/postman-insights-onboarding-action/pull/64
* fix: accept live human Insights sessions by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/71
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/76
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/78
* fix(ci): trigger writeback on dependabot branches by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/79
* fix(ci): pin writeback actions to immutable SHAs by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/80
* fix(ci): address Codex writeback feedback by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/81
* fix(ci): use ESM execSync and update permission test by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/82
* fix(ci): keep gate logs outside the checkout by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/83
* feat: publish as @postman/onboarding-insights with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/87
* fix(release): tolerate npm registry propagation by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/88
* fix(release): recover workflow-bearing aliases by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/89
* fix(deps): migrate automation core scope by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/90
* chore: ignore local plans by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/92
* fix(security): bind trusted runtime and artifact inputs by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/93

## New Contributors
* @mmorales-post made their first contribution in https://github.com/postman-cs/postman-insights-onboarding-action/pull/64

**Full Changelog**: https://github.com/postman-cs/postman-insights-onboarding-action/compare/v2.1.8...v2.5.2
