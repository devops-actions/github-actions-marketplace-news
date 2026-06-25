---
title: Prowler Security Scan
date: 2026-06-25 15:17:29 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.31.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.31.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI

### 🔄 Changed

- Schedule Scans provider table and launch flows now use provider schedule fields, restore OSS daily scheduling, default to the next local scan hour, and clarify provider selection in launch scan [(#11684)](https://github.com/prowler-cloud/prowler/pull/11684)

## API

### 🐞 Fixed

- API key auth no longer mutates `TenantAPIKey.objects` during admin DB lookups [(#11686)](https://github.com/prowler-cloud/prowler/pull/11686)

## SDK

### 🐞 Fixed

- Alibaba Cloud `ram_password_policy_number` and `cs_kubernetes_cluster_check_weekly` checks not being loaded due to missing implementation and package files [(#11683)](https://github.com/prowler-cloud/prowler/pull/11683)
