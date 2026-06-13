---
title: Setup Nix S3 Cache
date: 2026-06-13 14:47:57 +00:00
tags:
  - lemmih
  - GitHub Actions
draft: false
repo: https://github.com/lemmih/nix-s3-cache-action
marketplace: https://github.com/marketplace/actions/setup-nix-s3-cache
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lemmih/nix-s3-cache-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nix-s3-cache) to find the latest changes.

## What's Changed

### Fixed

- Harden cache hook setup by storing cache signing keys, AWS credentials, and generated hook files with restrictive root-owned permissions, moving AWS environment exports to `/etc/nix/s3-cache.env`, warning instead of failing builds on transient post-build `nix copy` upload errors, and preventing duplicate managed Nix config entries across repeated action runs ([#21](https://github.com/lemmih/nix-s3-cache-action/pull/21)).
