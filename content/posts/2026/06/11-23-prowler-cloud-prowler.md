---
title: Prowler Security Scan
date: 2026-06-11 23:42:17 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.30.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.30.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🪪 Okta - Complete DISA STIG Support

Okta now supports [DISA STIG](https://public.cyber.mil/stigs/) completely, shipping the **DISA Okta Identity as a Service (IDaaS) STIG V1R2** framework.

<img width="1393" height="822" alt="Okta" src="https://github.com/user-attachments/assets/05067f57-b7bf-416d-9441-e3bc05f662a4" />

The provider now covers the entire **DISA STIG** control set for Okta identity security end to end. This release adds six new services and their checks:

**`user`**

- `user_inactivity_automation_35d_enabled` - disable accounts after 35 days of inactivity

**`authenticator`** - password policy and MFA hardening:

- `authenticator_password_minimum_length_15` - enforce a 15-character minimum
- `authenticator_password_history_5` - block reuse of the last 5 passwords
- `authenticator_password_lockout_threshold_3` - lock accounts after 3 failed attempts
- `authenticator_password_minimum_age_24h` / `authenticator_password_maximum_age_60d` - password age bounds
- `authenticator_password_complexity_uppercase` / `_lowercase` / `_number` / `_symbol` - complexity requirements
- `authenticator_password_common_password_check` - reject common passwords
- `authenticator_okta_verify_fips_compliant` - require FIPS-compliant Okta Verify
- `authenticator_smart_card_active` - smart card authenticator enabled

**`idp`**

- `idp_smart_card_dod_approved_ca` - smart card IdP uses a DoD-approved CA

**`network`**

- `network_zone_block_anonymized_proxies` - block anonymizing proxies

**`apitoken`**

- `apitoken_not_super_admin` - API tokens are not bound to a super admin
- `apitoken_restricted_to_network_zone` - API tokens are restricted to a network zone

**`systemlog`**

- `systemlog_streaming_enabled` - stream system logs to an external destination

Read more in our [Okta documentation](https://docs.prowler.com/user-guide/providers/okta/getting-started-okta).

Explore all Okta checks at [Prowler Hub](https://hub.prowler.com/check?provider=okta).

## 📚 Compliance: DORA - our first universal compliance framework

> [!NOTE]
> DORA is only available for the AWS provider. More providers will be included in the upcoming versions.

The [Digital Operational Resilience Act](https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en) lands as the first **universal compliance framework** in Prowler.

A universal framework is defined once, independent of any single provider. Instead of a separate framework file per cloud, one definition maps each requirement to checks across multiple providers: every requirement carries a provider-keyed list of checks, and the framework declares its own attribute schema (for DORA, the five pillars and the underlying articles) that drives the report columns. Add another provider's checks to the same requirements and the coverage grows without a new framework file.

DORA currently maps AWS checks to its requirements for financial-sector operational resilience, with the structure ready to extend to other providers.

<img width="1406" height="987" alt="DORA" src="https://github.com/user-attachments/assets/e58da0d4-959e-47cf-8ce6-c857ba3ccfd2" />

Universal frameworks can be downloaded in the [OCSF Compliance Finding](https://schema.ocsf.io/classes/compliance_finding) format, so your compliance results plug straight into any SIEM or data platform that speaks OCSF.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## 🔍 New Checks

### AWS

- `sagemaker_models_monitor_enabled` - verifies SageMaker model monitoring is enabled - thanks to @RishiWig3!
- `elbv2_alb_drop_invalid_header_fields_enabled` - checks ALBs drop invalid HTTP header fields (FSBP ELB.4) - thanks to @potato-20!
- `bedrock_agent_role_least_privilege` - verifies Bedrock Agents run with least privilege role - thanks to @ARYAN03B!

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

### Microsoft 365

- `entra_service_principal_privileged_role_no_owners` - flags privileged service principals with no assigned owners - thanks to @asraym!
- `exchange_mailbox_primary_smtp_custom_domain` - verifies mailbox primary SMTP addresses use a custom domain - thanks to @J-man-2408!

Explore all M365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

### GCP

- `kms_key_rotation_enabled` was split into two focused checks: one for rotation being enabled and one enforcing a maximum 90-day rotation period.

Explore all GCP checks at [Prowler Hub](https://hub.prowler.com/check?provider=gcp).

### StackIT

A new `objectstorage` service lands for StackIT, focused on data durability and credential hygiene - thanks to @johannes-engler-mw!

- `objectstorage_bucket_object_lock_enabled` - verifies buckets enable Object Lock for write-once-read-many (WORM) protection against deletion and ransomware
- `objectstorage_bucket_retention_policy` - checks buckets enforce a default retention period so objects cannot be deleted or overwritten too early
- `objectstorage_access_key_expiration` - flags access keys with no expiration date, forcing rotation and limiting credential blast radius

Explore all StackIT checks at [Prowler Hub](https://hub.prowler.com/check?provider=stackit).

## 🧱 Self-Healing Background Tasks

When a worker crashes or restarts mid-deploy, the work it was running no longer gets stuck. Prowler now picks up the pieces automatically: safe-to-retry work like report summaries and cleanups resumes on its own, while one-off operations like scans are never blindly repeated.

The result is fewer stuck jobs and less manual cleanup after a restart.

Recovery is opt-in and off by default for now. Upcoming releases will make it the default once the behavior is battle-tested.

## 🔐 Security

- Bumped `dulwich` to 1.2.5 for `GHSA-897w-fcg9-f6xj`
- Bumped `pyjwt` to 2.13.0 for `PYSEC-2026-179`

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @RishiWig3 ([#11278](https://github.com/prowler-cloud/prowler/pull/11278)) - AWS `sagemaker_models_monitor_enabled` check
- @potato-20 ([#11471](https://github.com/prowler-cloud/prowler/pull/11471)) - AWS `elbv2_alb_drop_invalid_header_fields_enabled` check (FSBP ELB.4)
- @asraym ([#11189](https://github.com/prowler-cloud/prowler/pull/11189)) - M365 `entra_service_principal_privileged_role_no_owners` check
- @J-man-2408 ([#11215](https://github.com/prowler-cloud/prowler/pull/11215)) - M365 `exchange_mailbox_primary_smtp_custom_domain` check
- @ARYAN03B ([#11335](https://github.com/prowler-cloud/prowler/pull/11335)) - AWS `bedrock_agent_role_least_privilege` check
- @johannes-engler-mw ([#11397](https://github.com/prowler-cloud/prowler/pull/11397)) — StackIT ObjectStorage checks
- @sahil-sols ([#11345](https://github.com/prowler-cloud/prowler/pull/11345)) — order-independent CloudWatch metric filter pattern matching

---

## UI


### 🚀 Added

- DISA Okta IDaaS STIG V1R2 compliance framework support with its dedicated mapper, details panel, and icon [(#11428)](https://github.com/prowler-cloud/prowler/pull/11428)
- DORA compliance framework support [(#11131)](https://github.com/prowler-cloud/prowler/pull/11131)

### 🔄 Changed

- Renamed "Customer Support" to "Support Desk" in the side menu, showing it only in Prowler Cloud/Enterprise, while "Community Support" now shows only in Prowler OSS [(#11508)](https://github.com/prowler-cloud/prowler/pull/11508)
- Compliance detail page now shows a "still loading" retry state while the API warms its compliance catalog, instead of rendering an empty page [(#4554)](https://github.com/prowler-cloud/prowler-cloud/pull/4554)

### 🐞 Fixed

- Risk Pipeline Sankey chart now adapts height and node spacing for dense provider datasets, keeping provider and severity labels readable [(#11527)](https://github.com/prowler-cloud/prowler/pull/11527)



## API


### 🚀 Added

- Opt-in automatic recovery of allowlisted idempotent background tasks whose worker died during a deploy or crash: when enabled via `DJANGO_TASK_RECOVERY_ENABLED` (off by default), stuck summary and deletion tasks are detected and re-run instead of staying pending forever (scan and Jira tasks are excluded), with a `reconcile_orphan_tasks` management command for on-demand recovery [(#11416)](https://github.com/prowler-cloud/prowler/pull/11416)
- DORA compliance framework support [(#11131)](https://github.com/prowler-cloud/prowler/pull/11131)
- Label Postgres connections with `application_name="<component>:<alias>"` (component injected per process via `DJANGO_APP_COMPONENT`) so connections are attributable by component in `pg_stat_activity` [(#11494)](https://github.com/prowler-cloud/prowler/pull/11494)
- DISA Okta IDaaS STIG V1R2 compliance framework export support for the Okta provider [(#11428)](https://github.com/prowler-cloud/prowler/pull/11428)

### 🔄 Changed

- Allowlisted idempotent background tasks are no longer lost when a worker is stopped or crashes mid-task; tasks with external side effects are marked terminal instead of blindly re-running [(#11416)](https://github.com/prowler-cloud/prowler/pull/11416)

### 🐞 Fixed

- Workers now shut down gracefully on deploy or restart, finishing or re-queueing in-flight tasks instead of being force-killed and leaving them stuck [(#11416)](https://github.com/prowler-cloud/prowler/pull/11416)
- Resource `name` is now stored and refreshed on every scan, so resources no longer keep an empty name [(#11476)](https://github.com/prowler-cloud/prowler/pull/11476)
- Compliance catalog now warms in background during startup. `compliance-overviews/attributes` returns `503` while warming, so the first request after a deploy no longer trips the API timeout [(#4554)](https://github.com/prowler-cloud/prowler-cloud/pull/4554)

### 🔐 Security

- `dulwich` from 0.23.0 to 1.2.5 and `pyjwt` from 2.12.1 to 2.13.0, patching `GHSA-897w-fcg9-f6xj` (arbitrary file write) and `PYSEC-2026-179` (HMAC/JWK key confusion) [(#11499)](https://github.com/prowler-cloud/prowler/pull/11499)



## SDK


### 🚀 Added

- DISA Okta IDaaS STIG V1R2 compliance framework for the Okta provider, with a dedicated CSV output formatter and terminal summary table [(#11428)](https://github.com/prowler-cloud/prowler/pull/11428)
- `sagemaker_models_monitor_enabled` check for AWS provider, verifying that each SageMaker monitoring schedule is in the `Scheduled` state so data and model drift is actively detected [(#11278)](https://github.com/prowler-cloud/prowler/pull/11278)
- DORA (Digital Operational Resilience Act, Regulation (EU) 2022/2554) universal compliance framework with AWS provider coverage across the five DORA pillars [(#11131)](https://github.com/prowler-cloud/prowler/pull/11131)
- Okta authenticator and password policy checks for STIG-aligned hardening requirements [(#11465)](https://github.com/prowler-cloud/prowler/pull/11465)
- Okta network zone check to detect whether anonymized proxy traffic is blocked [(#11463)](https://github.com/prowler-cloud/prowler/pull/11463)
- Okta API token checks for super admin ownership and network zone restrictions [(#11464)](https://github.com/prowler-cloud/prowler/pull/11464)
- Support for external/custom providers, checks, and compliance frameworks without modifying core code [(#10700)](https://github.com/prowler-cloud/prowler/pull/10700)
- `elbv2_alb_drop_invalid_header_fields_enabled` check for AWS provider, verifying Application Load Balancers have `routing.http.drop_invalid_header_fields.enabled` set to `true` to mitigate HTTP desync attacks (AWS FSBP ELB.4) [(#11471)](https://github.com/prowler-cloud/prowler/pull/11471)
- `user`, `systemlog` and `idp` service for Okta provider with `user_inactivity_automation_35d_enabled`, `systemlog_streaming_enabled` and `idp_smart_card_dod_approved_ca` checks [(#11496)](https://github.com/prowler-cloud/prowler/pull/11496)
- External multi-provider compliance frameworks can be registered via the `prowler.compliance.universal` entry point group [(#11490)](https://github.com/prowler-cloud/prowler/pull/11490)
- AWS AI Security Framework support in the CLI dashboard [(#11475)](https://github.com/prowler-cloud/prowler/pull/11475)
- `entra_service_principal_privileged_role_no_owners` check for M365 provider, failing when a service principal with a permanent Tier 0 directory role has owners on the service principal or its parent app registration [(#11070)](https://github.com/prowler-cloud/prowler/issues/11070)
- `kms_key_rotation_max_90_days` check for GCP provider, verifying KMS customer-managed keys are rotated every 90 days or less in line with the CIS Benchmark [(#11516)](https://github.com/prowler-cloud/prowler/pull/11516)
- `exchange_mailbox_primary_smtp_uses_custom_domain` check for M365 provider [(#11215)](https://github.com/prowler-cloud/prowler/pull/11215)
- `bedrock_agent_role_least_privilege` check for AWS provider, flagging Bedrock Agent execution roles with full-access managed policies, broad `Resource:*` inline statements, or missing permissions boundaries [(#11335)](https://github.com/prowler-cloud/prowler/pull/11335)
- STACKIT ObjectStorage service with Object Lock, default retention policy, and access key expiration checks [(#11397)](https://github.com/prowler-cloud/prowler/pull/11397)

### 🐞 Fixed

- `load_and_validate_config_file` now unwraps namespaced config for every built-in and external provider, and no longer leaks the full file as the provider's config when the file is namespaced [(#10700)](https://github.com/prowler-cloud/prowler/pull/10700)
- `entra_users_mfa_capable` no longer flags pre-provisioned users with future `employeeHireDate`; future-hire date comparisons now tolerate naive datetimes [(#11511)](https://github.com/prowler-cloud/prowler/pull/11511)
- M365 Admin Center group enumeration now follows Microsoft Graph pagination so group-scoped checks include groups beyond the first page [(#11510)](https://github.com/prowler-cloud/prowler/pull/11510)
- GCP `kms_key_rotation_enabled` check now only verifies that automatic key rotation is enabled (any interval) instead of enforcing a 90-day period, resolving the mismatch between the check and its documentation; the CIS, Prowler ThreatScore, and CCC requirements that mandate a 90-day maximum were remapped to the new `kms_key_rotation_max_90_days` check [(#11516)](https://github.com/prowler-cloud/prowler/pull/11516)
- AWS CloudWatch log metric filter checks now validate `filterPattern` clauses regardless of order [(#11345)](https://github.com/prowler-cloud/prowler/pull/11345)
- AWS `bedrock_api_key_no_long_term_credentials` now applies severity per finding (never-expires keys correctly flag as critical, no leak across findings) and aligns title and wording with AWS guidance to prefer short-term Bedrock API keys [(#11526)](https://github.com/prowler-cloud/prowler/pull/11526)

### 🔐 Security

- `dulwich` from 0.23.0 to 1.2.5 and `pyjwt` from 2.12.1 to 2.13.0, patching `GHSA-897w-fcg9-f6xj` (arbitrary file write) and `PYSEC-2026-179` (HMAC/JWK key confusion) [(#11499)](https://github.com/prowler-cloud/prowler/pull/11499)




