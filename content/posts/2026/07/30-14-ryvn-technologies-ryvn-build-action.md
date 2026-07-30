---
title: Build and Push to Ryvn Registry
date: 2026-07-30 14:45:28 +00:00
tags:
  - ryvn-technologies
  - GitHub Actions
draft: false
repo: https://github.com/ryvn-technologies/ryvn-build-action
marketplace: https://github.com/marketplace/actions/build-and-push-to-ryvn-registry
version: v2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `ryvn-build-action` automates the process of building and pushing Docker images or Helm charts to the Ryvn Registry. It supports both traditional Dockerfiles and Nixpacks-based builds, automatically detects Nixpacks when configured, and provides options to build only or use specific arguments for Docker builds. The action simplifies the deployment workflow by handling image and chart publishing through a single GitHub Action.
---


Version updated for **https://github.com/ryvn-technologies/ryvn-build-action** to version **v2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-and-push-to-ryvn-registry) to find the latest changes.

## Action Summary

The GitHub Action `ryvn-build-action` automates the process of building and pushing Docker images or Helm charts to the Ryvn Registry. It supports both traditional Dockerfiles and Nixpacks-based builds, automatically detects Nixpacks when configured, and provides options to build only or use specific arguments for Docker builds. The action simplifies the deployment workflow by handling image and chart publishing through a single GitHub Action.

## What's Changed

- chore: sync ryvn-build-action files from monorepo (5eb762d)
- fix(service-spec-migration): use definition.image (0cac4f2)
- feat: emit build_artifacts output with image metadata (fc4f81c)
- chore: sync release workflow from ryvn monorepo (0af8841)
- Merge pull request #4 from ryvn-technologies/sp/buildkit-secret-mounts (b23a4f1)
- save (9519be6)
- fix (1f029f1)
- save (ed19e31)
- chore: sync release workflow from ryvn monorepo (196c65c)
- chore: sync release workflow from ryvn monorepo (7da59d1)
