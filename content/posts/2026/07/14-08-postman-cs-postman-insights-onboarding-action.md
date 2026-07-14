---
title: Postman Onboarding Insights Linking
date: 2026-07-14 08:02:21 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-insights-onboarding-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-insights-linking
version: v2.1.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the linking of discovered services from the Postman Insights agent to an existing Postman workspace and git repository after deployment. It solves the problem of ensuring that every service discovered by Insights is properly cataloged, linked with a collection, a repo link, and live telemetry in the API Catalog. The action provides capabilities for setting up prerequisites, specifying inputs such as project name, workspace ID, environment ID, and Postman credentials, and linking services from Insights to the catalog.
  
  The summary highlights that this action does not perform deployment tasks but focuses on linking discovered services with existing infrastructure, integrating insights data into an API Catalog.
---


Version updated for **https://github.com/postman-cs/postman-insights-onboarding-action** to version **v2.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-insights-linking) to find the latest changes.

## Action Summary

This GitHub Action automates the linking of discovered services from the Postman Insights agent to an existing Postman workspace and git repository after deployment. It solves the problem of ensuring that every service discovered by Insights is properly cataloged, linked with a collection, a repo link, and live telemetry in the API Catalog. The action provides capabilities for setting up prerequisites, specifying inputs such as project name, workspace ID, environment ID, and Postman credentials, and linking services from Insights to the catalog.

The summary highlights that this action does not perform deployment tasks but focuses on linking discovered services with existing infrastructure, integrating insights data into an API Catalog.

## What's Changed

## What's Changed
* fix: reconcile insights links safely by @jaredboynton in https://github.com/postman-cs/postman-insights-onboarding-action/pull/44


**Full Changelog**: https://github.com/postman-cs/postman-insights-onboarding-action/compare/v2.1.1...v2.1.2
