---
title: Build and Push to Ryvn Registry
date: 2026-07-31 06:40:16 +00:00
tags:
  - ryvn-technologies
  - GitHub Actions
draft: false
repo: https://github.com/ryvn-technologies/ryvn-build-action
marketplace: https://github.com/marketplace/actions/build-and-push-to-ryvn-registry
version: v1.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of building and publishing Docker images or Helm charts to the Ryvn Registry. It supports automatic Nixpacks detection when services are configured with `buildpack: "nixpack"`, simplifying builds without needing a Dockerfile. The action is useful for continuous integration/continuous deployment (CI/CD) workflows in repositories that manage Ryvn services.
---


Version updated for **https://github.com/ryvn-technologies/ryvn-build-action** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-and-push-to-ryvn-registry) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building and publishing Docker images or Helm charts to the Ryvn Registry. It supports automatic Nixpacks detection when services are configured with `buildpack: "nixpack"`, simplifying builds without needing a Dockerfile. The action is useful for continuous integration/continuous deployment (CI/CD) workflows in repositories that manage Ryvn services.

## What's Changed

- fix(service-spec-migration): use definition.image (0cac4f2)
- feat: emit build_artifacts output with image metadata (fc4f81c)
- chore: sync release workflow from ryvn monorepo (0af8841)
- Merge pull request #4 from ryvn-technologies/sp/buildkit-secret-mounts (b23a4f1)
- save (9519be6)
- fix (1f029f1)
- save (ed19e31)
- chore: sync release workflow from ryvn monorepo (196c65c)
- chore: sync release workflow from ryvn monorepo (7da59d1)
- chore: sync release workflow from ryvn monorepo (1b7ef2d)
