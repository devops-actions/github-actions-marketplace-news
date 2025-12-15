---
title: Setup microk8s
date: 2025-12-15 13:17:29 +00:00
tags:
  - fenio
  - GitHub Actions
draft: false
repo: https://github.com/fenio/setup-microk8s
marketplace: https://github.com/marketplace/actions/setup-microk8s
version: v5.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/fenio/setup-microk8s** to version **v5.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-microk8s) to find the latest changes.

## Release notes

## What's Changed

- fix: use AWS ECR mirror for busybox to avoid Docker Hub rate limits (fd90624)
- docs: update README with dns-readiness input and fix timeout default to 300 (ce4cb44)
- feat: add dns-readiness input to verify DNS resolution during setup (93c34ec)
- ci: add CoreDNS readiness check before DNS tests (ab6b831)
- chore: unify CI and release workflows across setup-* repos (e49e0c3)
- Add internet connectivity test to CI workflow (37e4df1)
**Full Changelog**: https://github.com/fenio/setup-microk8s/compare/v5...v5.0.1

