---
title: recul by CRBroughton
date: 2026-05-04 22:22:39 +00:00
tags:
  - CRBroughton
  - GitHub Actions
draft: false
repo: https://github.com/CRBroughton/recul
marketplace: https://github.com/marketplace/actions/recul-by-crbroughton
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/CRBroughton/recul** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/recul-by-crbroughton) to find the latest changes.

## Action Summary

Recul is a GitHub Action and CLI tool designed to help teams manage their npm dependencies by staying a specified number of versions behind the latest published release. It aims to reduce the risk of supply chain attacks by introducing a buffer period, allowing time to detect and address potential issues in newly released versions. Recul automates dependency versioning in CI pipelines, enforces an auditable policy, and provides configurable options for managing lag, pre-release filtering, and package-specific behaviors.

## What's Changed

Fix `catalog:` singular shorthand not being recognised. Projects using the top-level `catalog:` key (instead of `catalogs.default:`) now correctly get catalog edit suggestions and `--fix` support.
