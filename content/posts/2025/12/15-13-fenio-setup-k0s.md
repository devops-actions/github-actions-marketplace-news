---
title: Setup k0s
date: 2025-12-15 13:17:37 +00:00
tags:
  - fenio
  - GitHub Actions
draft: false
repo: https://github.com/fenio/setup-k0s
marketplace: https://github.com/marketplace/actions/setup-k0s
version: v5.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/fenio/setup-k0s** to version **v5.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-k0s) to find the latest changes.

## Release notes

## What's Changed

- fix: use AWS ECR mirror for busybox to avoid Docker Hub rate limits (b9486c1)
- docs: update README with dns-readiness input and latest version v2 (5d4d22c)
- feat: add dns-readiness input to verify DNS resolution during setup (6e89665)
- fix: wait for CoreDNS before testing DNS resolution (f5b219e)
- remove cleanup (9b6adb4)
- check cleanup (242e22d)
- chore: unify CI and release workflows across setup-* repos (e91453e)
- Add internet connectivity test to CI workflow (02422bb)
- chore: bump actions/checkout to v6 (3bdc971)
- chore: further unify coding style with other setup-* actions (e2d6551)
- chore: unify coding style with other setup-* actions (e541c2a)
**Full Changelog**: https://github.com/fenio/setup-k0s/compare/v5...v5.0.1

