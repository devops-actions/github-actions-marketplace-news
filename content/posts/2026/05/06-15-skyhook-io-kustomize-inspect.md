---
title: Skyhook Kustomize Inspect
date: 2026-05-06 15:04:24 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/kustomize-inspect
marketplace: https://github.com/marketplace/actions/skyhook-kustomize-inspect
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skyhook-io/kustomize-inspect** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyhook-kustomize-inspect) to find the latest changes.

## Action Summary

The **Kustomize Inspect** GitHub Action is a read-only tool designed to extract structured metadata from Kustomize overlays without making any changes to the files. It automates tasks such as detecting Kubernetes workloads (e.g., Deployments, StatefulSets) and target namespaces, validating successful kustomization builds, and generating JSON outputs for easy integration into CI/CD pipelines. This action is particularly useful for pre-deployment analysis, enabling informed decision-making based on the extracted configuration details.

## What's Changed

# [1.2.0](https://github.com/skyhook-io/kustomize-inspect/compare/v1.1.2...v1.2.0) (2026-05-06)


### Features

* also pass --load-restrictor=LoadRestrictionsNone when helmCharts present ([89a71ed](https://github.com/skyhook-io/kustomize-inspect/commit/89a71ede8e1b67561ccb0757258c6a46daae5c31))
* auto-detect helmCharts and pass --enable-helm ([7d0d07b](https://github.com/skyhook-io/kustomize-inspect/commit/7d0d07b342a50861c45d7b89e96ed3a0a04ad4c0))




