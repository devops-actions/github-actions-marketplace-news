---
title: Helm OCI Push
date: 2026-04-21 14:26:28 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-oci-push-action
marketplace: https://github.com/marketplace/actions/helm-oci-push
version: v1.0.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/somaz94/helm-oci-push-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-oci-push) to find the latest changes.

## Action Summary

The **helm-oci-push-action** is a GitHub Action designed to automate the packaging and pushing of Helm charts to OCI-compliant registries, such as GHCR, ECR, GAR, Harbor, and more. It simplifies workflows by supporting multiple input modes (e.g., tarballs, chart paths, or directory scans), providing features like dry-run validation, idempotent releases by skipping existing versions, and built-in Helm registry authentication. This action streamlines Helm chart management, making it efficient for CI/CD pipelines and registry publishing tasks.

## What's Changed


### Documentation

- Update changelog (c70f442)
- Update CONTRIBUTORS.md (ed80ee2)
- Fix license reference (MIT, matches LICENSE file) (a64097b)

### Refactoring

- Install latest helm at build time, drop hardcoded v3.16.4 pin (0a6ab94)

**Full Changelog**: https://github.com/somaz94/helm-oci-push-action/compare/v1.0.0...v1.0.1

