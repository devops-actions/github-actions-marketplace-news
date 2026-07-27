---
title: Postman Onboarding GCP Spec Discovery
date: 2026-07-27 15:02:26 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-gcp-spec-discovery-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-gcp-spec-discovery
version: v1.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the discovery and export of OpenAPI specifications from Google Cloud services, such as GCP APIs and Apigee proxies. It supports various authentication methods, including Application Default Credentials (ADC) or Workload Identity Federation, and offers options to resolve an API by service name, repository association, known configuration IDs, or export all possible configurations. The action also includes a pattern for discovering and exporting specifications in a per-repo workflow using labels and IAM permissions.
---


Version updated for **https://github.com/postman-cs/postman-gcp-spec-discovery-action** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-gcp-spec-discovery) to find the latest changes.

## Action Summary

This GitHub Action automates the discovery and export of OpenAPI specifications from Google Cloud services, such as GCP APIs and Apigee proxies. It supports various authentication methods, including Application Default Credentials (ADC) or Workload Identity Federation, and offers options to resolve an API by service name, repository association, known configuration IDs, or export all possible configurations. The action also includes a pattern for discovering and exporting specifications in a per-repo workflow using labels and IAM permissions.

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


**Full Changelog**: https://github.com/postman-cs/postman-gcp-spec-discovery-action/compare/v1.1.8...v1.2.0
