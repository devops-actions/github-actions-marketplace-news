---
title: Prowler Security Scan
date: 2026-07-10 22:48:11 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.33.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.33.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

## UI


### 🔄 Changed

- RBAC role forms now explain Unlimited Visibility inside the Visibility section and keep the setting visible while group selection is hidden [(#11890)](https://github.com/prowler-cloud/prowler/pull/11890)

### 🐞 Fixed

- CIS Level 1 and Level 2 compliance filters now match profiles prefixed with a license tier (e.g. "E3 Level 1"), so M365 CIS requirements are no longer hidden [(#11924)](https://github.com/prowler-cloud/prowler/pull/11924)
- Jira dispatch polling now reports failed issue creation tasks instead of treating partial failures as successful [(#11925)](https://github.com/prowler-cloud/prowler/pull/11925)



## API


### 🐞 Fixed

- Session tokens are rejected after account password updates [(#11914)](https://github.com/prowler-cloud/prowler/pull/11914)
- Jira dispatch task results now surface user-facing Jira failure messages [(#11925)](https://github.com/prowler-cloud/prowler/pull/11925)
- AWS Attack Paths privilege escalation queries no longer fail on Neo4j with `Aggregation column contains implicit grouping expressions` [(#11939)](https://github.com/prowler-cloud/prowler/pull/11939)

### 🔐 Security

- OpenAI-compatible Lighthouse provider base URLs are restricted before connection checks [(#11940)](https://github.com/prowler-cloud/prowler/pull/11940)
- `LIGHTHOUSE_AI_OPENAI_COMPATIBLE_ALLOWED_HOSTS` environment variable to allow internal hosts as OpenAI-compatible Lighthouse AI base URLs [(#11942)](https://github.com/prowler-cloud/prowler/pull/11942)



## SDK


### 🐞 Fixed

- ECS task definition resource limits now select the latest task definitions by registration date instead of relying on ARN ordering [(#11891)](https://github.com/prowler-cloud/prowler/pull/11891)
- `dlm_ebs_snapshot_lifecycle_policy_exists` no longer initializes the full EC2 inventory just to detect EBS snapshots, avoiding slow scans when checking DLM lifecycle policies [(#11900)](https://github.com/prowler-cloud/prowler/pull/11900)
- `dms_instance_no_public_access` no longer initializes the full EC2 service when there are no DMS replication instances [(#11902)](https://github.com/prowler-cloud/prowler/pull/11902)
- `organizations_scp_check_deny_regions` no longer reports false `FAIL` for AWS Organizations that restrict regions with Allow-based SCPs; the Allow path now checks the statement `Effect` instead of an always-false comparison that made it unreachable [(#11915)](https://github.com/prowler-cloud/prowler/pull/11915)
- Jira issue creation failures now preserve safe structured response details from Jira [(#11925)](https://github.com/prowler-cloud/prowler/pull/11925)
- Azure Function App optional permission failures now log as warnings, and Function App environment variable fields use the correct spelling internally [(#11926)](https://github.com/prowler-cloud/prowler/pull/11926)




