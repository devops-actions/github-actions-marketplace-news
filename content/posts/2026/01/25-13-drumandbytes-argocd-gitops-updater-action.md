---
title: Container & Helm Version Updater
date: 2026-01-25 13:41:31 +00:00
tags:
  - drumandbytes
  - GitHub Actions
draft: false
repo: https://github.com/drumandbytes/argocd-gitops-updater-action
marketplace: https://github.com/marketplace/actions/container-helm-version-updater
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/drumandbytes/argocd-gitops-updater-action** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-helm-version-updater) to find the latest changes.

## Action Summary

The ArgoCD GitOps Updater Action automates the detection and updating of Helm chart and Docker image versions within GitOps repositories. It solves the problem of manually tracking and updating dependencies by creating pull requests for updates, preserving image variants, and supporting semantic versioning. Additionally, it offers capabilities such as auto-discovery, multi-registry support, notifications, and integration with ArgoCD and Kustomize workflows.

## Release notes

## v2.0.0 - Async Refactoring & Performance Improvements

### 🚨 BREAKING CHANGES
- **Removed `cache` input parameter** - caching system removed as async provides sufficient performance
- If you were using `cache: true`, simply remove this line from your workflow

### ✨ New Features
- Async/await refactoring for concurrent API requests
- Pre-compiled regex patterns for better performance
- O(1) ignore rule lookups
- Improved error messages showing exception types

### 🐛 Bug Fixes
- Fixed versionPattern filtering for Docker images
- Fixed variant matching (no-variant vs with-variant)
- Fixed major version showing in reports when filtered by versionPattern

### ⚡ Performance
- ~40-60s typical runtime for 10-15 resources
- Reduced Helm concurrency (10→5) for better stability
- Smart per-registry rate limiting

### 📚 Documentation
- Updated all docs to reflect async-only implementation
- Removed outdated cache documentation
- Realistic performance expectations

### 🔧 Technical
- Upgraded to Python 3.14
- Dependencies: aiohttp, aiofiles, pyyaml, packaging
- Removed: aiohttp-client-cache, aiosqlite

