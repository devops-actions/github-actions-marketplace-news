---
title: Prowler Security Scan
date: 2026-05-26 22:52:27 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.28.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.28.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform designed to automate security assessments and compliance monitoring across any cloud environment. It offers hundreds of pre-built security checks, compliance frameworks, and remediation guidance, enabling organizations to quickly identify and address security risks while ensuring compliance. Its AI-driven, customizable capabilities provide scalable and cost-effective solutions for maintaining robust cloud security.

## What's Changed

## UI


### 🐞 Fixed
                

- Large scan report ZIP downloads now stream through a Next.js Route Handler instead of buffering the full file in a Server Action [(#11330)](https://github.com/prowler-cloud/prowler/pull/11330)
- Compliance requirement findings table now respects the page size selector [(#11365)](https://github.com/prowler-cloud/prowler/pull/11365)



## API


### 🐞 Fixed

- `finding-groups` slow response with finding-level filters such as `region`; check title and description are now read from the daily summaries, which drops sorting by `check_title` [(#11326)](https://github.com/prowler-cloud/prowler/pull/11326)



## SDK


### 🐞 Fixed

- `compute_project_os_login_enabled` and `compute_project_os_login_2fa_enabled` checks for GCP provider no longer false-FAIL on projects where the `enable-oslogin` / `enable-oslogin-2fa` metadata is not set explicitly but is inherited automatically from the `constraints/compute.requireOsLogin` org policy. The policy controller writes the inherited value in lowercase (`"true"`), but the service-layer parser compared it to the uppercase string literal `"TRUE"`. Comparison is now case-insensitive [(#11341)](https://github.com/prowler-cloud/prowler/pull/11341)
- `storage_smb_channel_encryption_with_secure_algorithm` check for Azure provider no longer passes when a storage account allows a weak SMB channel encryption algorithm (e.g. `AES-128-CCM`/`AES-128-GCM`) alongside `AES-256-GCM`; it now requires every enabled algorithm to be in the recommended list, configurable via `azure.recommended_smb_channel_encryption_algorithms` (defaults to `AES-256-GCM` only, as required by CIS) [(#11327)](https://github.com/prowler-cloud/prowler/pull/11327)
- Azure and M365 providers crashing with `RuntimeError: There is no current event loop` on Python 3.12 when called from threads without an active event loop (e.g. Celery workers) [(#11360)](https://github.com/prowler-cloud/prowler/pull/11360)



## MCP


### 🐞 Fixed

- Preserve authorization header in HTTP mode [(#11366)](https://github.com/prowler-cloud/prowler/pull/11366)

