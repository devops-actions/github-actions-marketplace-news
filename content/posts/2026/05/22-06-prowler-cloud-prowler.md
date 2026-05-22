---
title: Prowler Security Scan
date: 2026-05-22 06:31:18 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.27.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.27.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform designed to automate security and compliance monitoring across any cloud environment. It provides hundreds of pre-built security checks, compliance frameworks, and remediation guidance, enabling organizations to streamline cloud security management. Key features include AI-driven insights, real-time monitoring, and extensive customization to enhance scalability and efficiency.

## What's Changed

## SDK


### 🐞 Fixed

- `s3_bucket_shadow_resource_vulnerability` no longer emits a tautological `PASS` finding for every bucket; a finding is now produced only when the bucket name matches one of the predictable service patterns (Glue, SageMaker, EMR, CodeStar) [(#11220)](https://github.com/prowler-cloud/prowler/pull/11220)
- `sqlserver_tde_encrypted_with_cmk` check for Azure provider no longer reports a false `FAIL` for SQL Servers whose user databases are correctly encrypted with a customer-managed key, by excluding the system `master` database (always reports TDE `Disabled` and is not customer-controllable) from the TDE evaluation [(#11233)](https://github.com/prowler-cloud/prowler/pull/11233)




