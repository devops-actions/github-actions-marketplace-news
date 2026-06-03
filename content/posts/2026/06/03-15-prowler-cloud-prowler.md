---
title: Prowler Security Scan
date: 2026-06-03 15:39:07 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.29.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.29.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## API

### 🐞 Fixed

- `GET /api/v1/findings` N+1 query loading `resources__tags` when listing findings [(#11420)](https://github.com/prowler-cloud/prowler/pull/11420)
- Clean up the scan tmp output directory when `scan-report` fails so partial files do not accumulate and fill the worker disk (`No space left on device`) [(#11421)](https://github.com/prowler-cloud/prowler/pull/11421)

## SDK

### 🐞 Fixed

- OCSF output writer now re-raises I/O errors (e.g. `ENOSPC`) instead of logging them per finding and leaving a truncated file [(#11421)](https://github.com/prowler-cloud/prowler/pull/11421)
