---
title: Prowler Security Scan
date: 2026-07-06 23:02:25 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.32.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.32.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI


### 🐞 Fixed

- Invitation callback paths are now preserved when invited users continue with Google, GitHub, or SAML authentication [(#11752)](https://github.com/prowler-cloud/prowler/pull/11752)



## API


### 🐞 Fixed

- Attack Paths: Scan rows now have database defaults for `is_migrated` and `sink_backend` so `scan-perform-scheduled` inserts survive deploy skew [(#11826)](https://github.com/prowler-cloud/prowler/pull/11826)
- Invited users now keep their invitation context when completing authentication with Google, GitHub, or SAML, so the invitation is accepted during login [(#11752)](https://github.com/prowler-cloud/prowler/pull/11752)

### 🔐 Security

- User profile updates now allow users to update their own account while requiring user-management permissions to update other users in the same tenant [(#11792)](https://github.com/prowler-cloud/prowler/pull/11792)



## SDK


### 🐞 Fixed

- `KeyError: 'MANUAL'` crash while rendering the compliance summary table (e.g. CIS Microsoft 365) when a framework has manual, checks-less requirements with a Level 1/Level 2 profile; `MANUAL` findings are now skipped in the PASS/FAIL section tally instead of raising [(#11822)](https://github.com/prowler-cloud/prowler/issues/11822)




