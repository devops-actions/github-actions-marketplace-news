---
title: Skyhook Kustomize Smart Deploy
date: 2026-05-06 15:04:34 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/kustomize-deploy
marketplace: https://github.com/marketplace/actions/skyhook-kustomize-smart-deploy
version: v1.12.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skyhook-io/kustomize-deploy** to version **v1.12.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyhook-kustomize-smart-deploy) to find the latest changes.

## Action Summary

This GitHub Action, **Kustomize Deploy**, automates Kubernetes application deployments by supporting both GitOps workflows (e.g., ArgoCD) and direct `kubectl` commands, with automatic mode detection. It simplifies deployment processes by managing kustomize overlays, updating manifests with image tags, labels, and environment variables, creating namespaces if needed, and monitoring deployment rollouts. Its dual-mode functionality and flexible image update methods address common challenges in managing containerized deployments, making it suitable for CI/CD pipelines.

## What's Changed

# [1.12.0](https://github.com/skyhook-io/kustomize-deploy/compare/v1.11.0...v1.12.0) (2026-05-06)


### Features

* also pass --load-restrictor=LoadRestrictionsNone when helmCharts present ([5869e7c](https://github.com/skyhook-io/kustomize-deploy/commit/5869e7c8760f13500d40b3208c33db714a59c86c))
* auto-detect helmCharts and pass --enable-helm ([7c03da4](https://github.com/skyhook-io/kustomize-deploy/commit/7c03da4cc612f614420d7cdd72adefa915f0adb8))




