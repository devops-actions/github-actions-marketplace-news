---
title: KubeAtlas Dependency Graph
date: 2026-08-09 22:10:43 +00:00
tags:
  - lithastra
  - GitHub Actions
draft: false
repo: https://github.com/lithastra/kubeatlas-action
marketplace: https://github.com/marketplace/actions/kubeatlas-dependency-graph
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The KubeAtlas GitHub Action automates the rendering of a KubeAtlas dependency graph from a Kubernetes cluster's configuration. It reads a kubeconfig, targets specific scopes (like clusters or namespaces), and outputs an SVG file that can be used to visualize dependencies within the cluster. The action supports uploading the SVG as a workflow artifact and optionally running additional checks using `kubeatlas diagnose` to identify policy violations.
---


Version updated for **https://github.com/lithastra/kubeatlas-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kubeatlas-dependency-graph) to find the latest changes.

## Action Summary

The KubeAtlas GitHub Action automates the rendering of a KubeAtlas dependency graph from a Kubernetes cluster's configuration. It reads a kubeconfig, targets specific scopes (like clusters or namespaces), and outputs an SVG file that can be used to visualize dependencies within the cluster. The action supports uploading the SVG as a workflow artifact and optionally running additional checks using `kubeatlas diagnose` to identify policy violations.

## What's Changed

KubeAtlas Action v1.0.1 strengthens policy-report execution and release safety.

- Fixes temporary-directory cleanup for downloaded CLI artifacts.
- Adds policy-report output for pull-request workflows.
- Verifies real release download, checksum, extraction, execution, and cleanup in Kind smoke tests.
- Documents compatibility with KubeAtlas v1.5.
- Requires an explicit verified promotion before the moving v1 tag is updated.

Pin v1.0.1 for immutable behavior. The moving v1 tag is promoted only after exact-tag validation passes.
