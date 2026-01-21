---
title: Container & Helm Version Updater
date: 2026-01-21 05:56:52 +00:00
tags:
  - drumandbytes
  - GitHub Actions
draft: false
repo: https://github.com/drumandbytes/argocd-gitops-updater-action
marketplace: https://github.com/marketplace/actions/container-helm-version-updater
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/drumandbytes/argocd-gitops-updater-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-helm-version-updater) to find the latest changes.

## Action Summary

The ArgoCD GitOps Updater Action automates the process of updating Helm chart and Docker image versions in GitOps repositories. It detects new semantic versions, updates configuration files, creates pull requests, and integrates with ArgoCD and Kustomize, ensuring GitOps workflows stay current. Additionally, it supports auto-discovery, multi-registry compatibility, and team notifications, streamlining dependency management and improving operational efficiency.

## Release notes

Fixing the caching logic for it to actually work.
Adding sorting to the auto-discovery script to keep the order consistent between multiple discovery runs.
