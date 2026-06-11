---
title: Deploy Knative Service
date: 2026-06-11 23:37:53 +00:00
tags:
  - theorigamicorporation
  - GitHub Actions
draft: false
repo: https://github.com/theorigamicorporation/knative-release
marketplace: https://github.com/marketplace/actions/deploy-knative-service
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/theorigamicorporation/knative-release** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-knative-service) to find the latest changes.

## What's Changed

## Changes

- `RSO_CLUSTER_ID` env var now overrides the target cluster (defaults to `toc-cluster-prod-o4`, unchanged) (#41)
- `annotations` input is now actually applied — to the revision template metadata, so `autoscaling.knative.dev/*` annotations take effect (#41)
- `labels` input is now actually applied to the service metadata (#41)
- README corrected to the real env vars (`RSO_DEV_ACCESS_TOKEN`, `RSO_CLOUD_TENANT`, `RSO_API_URL`) and documents the `volumes`/`volume_mounts` inputs (#41)
- CI test-action job now passes the correct env var names (#41)

Note: workflows consuming `...@v1` still resolve to the old `v1` tag — pin `@v1.2.0` (or move the rolling `v1` tag) to pick this up.
