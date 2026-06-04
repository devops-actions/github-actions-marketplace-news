---
title: Prowler Security Scan
date: 2026-06-04 07:14:32 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.29.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.29.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI

### 🔄 Changed

- Account and provider-type selector triggers now show the provider icon, with a non-deduped icon stack [(#11424)](https://github.com/prowler-cloud/prowler/pull/11424)

### 🐞 Fixed

- Add Provider modal now closes without reloading the providers page [(#11424)](https://github.com/prowler-cloud/prowler/pull/11424)
- Users page now shows the "Delete User" action only on the current user's row, matching the backend rule that a user can only delete their own account [(#11447)](https://github.com/prowler-cloud/prowler/pull/11447)

### 🔐 Security

- Vitest toolchain upgraded `4.0.18` → `4.1.8` to clear two critical `pnpm audit` advisories [(#11424)](https://github.com/prowler-cloud/prowler/pull/11424)
