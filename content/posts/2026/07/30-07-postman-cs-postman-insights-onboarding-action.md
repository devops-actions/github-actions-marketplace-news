---
title: Postman Onboarding Insights Linking
date: 2026-07-30 07:00:03 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-insights-onboarding-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-insights-linking
version: v2.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The action automates the linking of discovered services from Postman Insights to a Postman workspace and Git repository. It solves the problem of ensuring that every service discovered by Insights is properly linked in the catalog with a collection, repo link, and live telemetry. The key capabilities include:
  
  1. Linking discovered services to a Postman workspace.
  2. Creating a new collection for each linked service.
  3. Providing a repo link to the Git repository where the service code can be found.
  
  This action does not deploy or manage any components beyond linking existing insights data, focusing solely on catalog management and service discovery.
---


Version updated for **https://github.com/postman-cs/postman-insights-onboarding-action** to version **v2.4.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-insights-linking) to find the latest changes.

## Action Summary

The action automates the linking of discovered services from Postman Insights to a Postman workspace and Git repository. It solves the problem of ensuring that every service discovered by Insights is properly linked in the catalog with a collection, repo link, and live telemetry. The key capabilities include:

1. Linking discovered services to a Postman workspace.
2. Creating a new collection for each linked service.
3. Providing a repo link to the Git repository where the service code can be found.

This action does not deploy or manage any components beyond linking existing insights data, focusing solely on catalog management and service discovery.

## What's Changed

## What's Changed
* ci(release): port automatic release cut from bootstrap by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/66
* fix(release): recover unpublished immutable tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/67
* chore(deps): take patched transitive versions from npm audit by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/68
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/69
* fix(release): reconcile incomplete cuts before new tags by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/70
* feat: ship self-contained SEA binary (no npm/Node) by @mmorales-post in https://github.com/postman-cs/postman-insights-onboarding-action/pull/64
* fix: accept live human Insights sessions by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/71

## New Contributors
* @mmorales-post made their first contribution in https://github.com/postman-cs/postman-insights-onboarding-action/pull/64

**Full Changelog**: https://github.com/postman-cs/postman-insights-onboarding-action/compare/v2.1.8...v2.4.0
