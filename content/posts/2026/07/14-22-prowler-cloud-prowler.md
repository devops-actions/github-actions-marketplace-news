---
title: Prowler Security Scan
date: 2026-07-14 22:48:27 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.33.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Prowler is an open-source tool designed to automate security and compliance checks in any cloud environment. It offers a wide range of security checks, remediation guidance, and compliance frameworks to help organizations stay secure and compliant with various regulations and standards.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.33.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source tool designed to automate security and compliance checks in any cloud environment. It offers a wide range of security checks, remediation guidance, and compliance frameworks to help organizations stay secure and compliant with various regulations and standards.

## What's Changed

## API


### 🐞 Fixed

- Attack Paths graph mutations now retry transient Neptune concurrency and deadline failures, while Neo4j mutations use managed transaction retries [(#11968)](https://github.com/prowler-cloud/prowler/pull/11968)
- Attack Paths scans now use bounded child node identifiers for normalized list values in Neo4j and Neptune, preventing Neo4j RANGE index key size failures [(#11969)](https://github.com/prowler-cloud/prowler/pull/11969)
- `scan-summary` aggregation now upserts summaries in deterministic conflict-key order, preventing PostgreSQL deadlocks during concurrent reaggregation [(#11971)](https://github.com/prowler-cloud/prowler/pull/11971)



## SDK


### 🐞 Fixed

- EC2 AMI loading now targets Amazon-owned AMIs used by audited instances, reducing AWS API calls during EC2 scans [(#11958)](https://github.com/prowler-cloud/prowler/pull/11958)
- `ec2_instance_account_imdsv2_enabled` findings now use regional resource ARNs, preventing findings from different AWS Regions from collapsing into one resource [(#11966)](https://github.com/prowler-cloud/prowler/pull/11966)




