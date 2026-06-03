---
title: vxcloud Deploy
date: 2026-06-03 15:39:41 +00:00
tags:
  - prodxcloud
  - GitHub Actions
draft: false
repo: https://github.com/prodxcloud/vxcloud-deploy-action
marketplace: https://github.com/marketplace/actions/vxcloud-deploy
version: v1.0.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/prodxcloud/vxcloud-deploy-action** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vxcloud-deploy) to find the latest changes.

## What's Changed

### Bug Fixes

- **Guard fix**: `v1` floating tag now correctly points to `v1.0.2`, the guarded and stable version of the action.
- **Auth patch**: Resolved an issue where API-key authentication was failing on workflow re-runs when using `@v1`.

### Details

Users pinning `prodxcloud/vxcloud-deploy-action@v1` will automatically receive this fix. Workflows that previously returned a `failure` result on re-run due to the auth guard will now resolve correctly.

### Upgrade

No changes required to your workflow files. Simply re-run any failing workflow — `@v1` now resolves to this patched release.
