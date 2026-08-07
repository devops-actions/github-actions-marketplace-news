---
title: Helm OCI Push
date: 2026-08-07 14:31:22 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/helm-oci-push-action
marketplace: https://github.com/marketplace/actions/helm-oci-push
version: v1.1.0
dependentsNumber: "1"
actionType: Docker
actionSummary: |
  The GitHub Action `helm-oci-push-action` automates the process of pushing Helm charts to various OCI registries, including Google Container Registry (GHCR), Amazon Elastic Container Registry (ECR), and more. It supports different input modes such as pre-packaged tarball globs, comma-separated chart paths, and directory scans, making it versatile for both development and deployment workflows. The action provides features like dry-run mode for PR validation, skipping existing versions to ensure idempotent releases, and handling authentication via either provider-specific actions or directly with the registry URL if already authenticated.
---


Version updated for **https://github.com/somaz94/helm-oci-push-action** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/helm-oci-push) to find the latest changes.

## Action Summary

The GitHub Action `helm-oci-push-action` automates the process of pushing Helm charts to various OCI registries, including Google Container Registry (GHCR), Amazon Elastic Container Registry (ECR), and more. It supports different input modes such as pre-packaged tarball globs, comma-separated chart paths, and directory scans, making it versatile for both development and deployment workflows. The action provides features like dry-run mode for PR validation, skipping existing versions to ensure idempotent releases, and handling authentication via either provider-specific actions or directly with the registry URL if already authenticated.

## What's Changed


### Bug Fixes

- Resolve helm latest via get.helm.sh to avoid GitHub API rate limit (438970a)
- Fetch helm on the build platform so the arm64 image builds without emulation (6163690)

### CI/CD

- Add DCO check via shared reusable workflow (7d8e394)
- Pin Helm version and authenticate setup-helm to reduce CI flakes (f2a4b02)
- Add PR welcome workflow stub (531af39)
- Add ok-to-test workflow stub (53bf7d8)
- Use reusable contributors workflow (9a37e8c)
- Use reusable dependabot-auto-merge workflow (fad8371)
- Use reusable issue-greeting workflow (02c310d)
- Use reusable stale-issues workflow (9d5d1bd)
- Adopt semantic-pr, labels, lock-threads, PR size, and auto-assign reusables (1423e52)
- Remove DCO workflow (89fb70c)

### Documentation

- Update changelog (a8629b2)
- Update changelog (02d1b35)
- Update changelog (d63df31)

### Miscellaneous

- Bump alpine from 3.23 to 3.24 in the docker-minor group (#2) (3e7ad91)
- Bump actions/checkout from 6 to 7 (#3) (e6bb891)

### Performance

- Ship a prebuilt multi-arch image instead of building per run (3d5364a)

**Full Changelog**: https://github.com/somaz94/helm-oci-push-action/compare/v1.0.2...v1.1.0

