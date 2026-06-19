---
title: Prowler Security Scan
date: 2026-06-19 22:20:12 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.30.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.30.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## API

### 🔐 Security

- SAML logins now link to an existing account only when the asserted email domain matches the ACS endpoint and the user is already a member of that domain's tenant, fixing a cross-tenant account takeover [(GHSA-h8m9-jgf8-vwvp)](https://github.com/prowler-cloud/prowler/security/advisories/GHSA-h8m9-jgf8-vwvp) [bf3b5c2ba713e533014927141b64948c82c8f32e](https://github.com/prowler-cloud/prowler/commit/bf3b5c2ba713e533014927141b64948c82c8f32e)

## SDK

### 🐞 Fixed

- CLI compliance summary tables no longer undercount findings mapped to multiple sections nor double-count a single finding mapped to several requirements within the same group/split, and the Provider column no longer leaks a value from another framework [(#11567)](https://github.com/prowler-cloud/prowler/pull/11567)
