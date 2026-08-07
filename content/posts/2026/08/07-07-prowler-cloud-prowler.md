---
title: Prowler Security Scan
date: 2026-08-07 07:31:33 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.38.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The Prowler action automates the deployment and monitoring of Prowler, an Open Source cloud security platform that provides real-time security checks and integrations for managing cloud environments effectively. It simplifies the process of implementing comprehensive security measures across various cloud services, ensuring compliance with industry standards.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.38.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

The Prowler action automates the deployment and monitoring of Prowler, an Open Source cloud security platform that provides real-time security checks and integrations for managing cloud environments effectively. It simplifies the process of implementing comprehensive security measures across various cloud services, ensuring compliance with industry standards.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com/

## 📌 Compliance Watchlist

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Compliance Watchlist keeps the frameworks an organization tracks in one shared list. Pin frameworks from any compliance view, manage several at once through a searchable catalog, and filter the Compliance section to show only the pinned frameworks.

The Overview page now reports the latest score for every pinned framework, while finding details highlight the watched frameworks associated with each check. Universal frameworks remain a single watchlist entry across provider views, keeping the organization's priorities consistent everywhere.

![Compliance Watchlist editor](https://github.com/prowler-cloud/prowler/blob/master/docs/images/compliance/prowler-app-compliance-watchlist-editor.png)

Read more in the [Compliance Watchlist documentation](https://docs.prowler.com/user-guide/compliance/tutorials/compliance#tracking-frameworks-with-the-compliance-watchlist).

## 🔐 SAML SSO - Multiple Email Domains

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

One SAML configuration can now authorize a primary email domain and up to 19 additional domains through the same Identity Provider. Every domain shares one stable Assertion Consumer Service (ACS) URL based on the primary domain, so subsidiaries, acquired companies, regional domains, and multiple brands no longer require separate tenants or duplicated SAML applications.

Domain ownership remains tenant-bound throughout the authentication flow. During service provider-initiated sign-in, the discovery domain and the domain asserted by the Identity Provider must resolve to the same tenant before provisioning continues.

![SAML configuration with multiple email domains](https://github.com/prowler-cloud/prowler/blob/master/docs/images/prowler-app/saml/saml-multiple-domains.png)

Read more in the [SAML SSO documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-sso#add-multiple-saml-domains).

## 👥 User Sign-In Methods

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

The Users table now shows each account's sign-in methods as tags, including email/password, Google, GitHub, SAML with linked domains, and Partner SSO. Accounts without a reported method display a placeholder.

![Users table showing sign-in method tags](https://github.com/user-attachments/assets/799871c3-94f0-400b-b766-71be8e8ff5eb)

## 🕸️ Attack Paths - Expanded AWS Privilege-Escalation Coverage

Attack Paths adds 20 AWS privilege-escalation queries from [pathfinding.cloud](https://pathfinding.cloud), while `iam_policy_allows_privilege_escalation` gains 22 additional escalation combinations.

The new coverage includes service `iam:PassRole` paths across AWS Batch, Braket, Cognito Identity, ECS, EMR, EMR Serverless, GameLift, Glue, EC2 Image Builder, Kinesis Analytics, HealthOmics, EventBridge Scheduler, Systems Manager, and Step Functions. It also covers existing-resource abuse, permissions-boundary removal, role assumption, and IAM Identity Center permission-set policy injection.

The query catalog now exposes each AWS query's outcome category, distinguishing code execution, privilege escalation, public exposure, and resource inventory.

Explore the full Attack Paths query catalog at [Prowler Hub](https://hub.prowler.com/attack-paths).

Read more in the [Attack Paths documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-attack-paths).

## 🔍 Checks

### Microsoft 365

Twelve new checks expand the coverage of CIS Microsoft 365 Foundations Benchmark v7.0.0:

- **Admin Center:** Shared Bookings is disabled.
- **Defender:** Priority account protection and strict preset security policies are enabled.
- **Entra ID:** Six checks cover device registration restrictions, local administrator behavior, device limits, LAPS, and BitLocker key visibility.
- **Exchange Online:** Personal accounts in Outlook on the web are disabled and Direct Send is rejected.
- **Microsoft Teams:** External access from trial-only tenants is blocked.

Explore all Microsoft 365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

## 🔐 Security

- Prowler API, UI, SDK, and MCP container images now publish per-architecture Software Bills of Materials (SBOMs) and build-provenance attestations. Prowler Cloud production and Prowler Private Cloud images carry the same attestations.
- SDK and API container builds verify the checksums of downloaded PowerShell, Trivy, and zizmor binaries before installation.
- Grype now complements Trivy across the container-image security gates, detecting components and vulnerabilities that manifest-based scanners can miss and blocking fixable high and critical findings.
- `aiohttp` was upgraded to 3.14.3 to address CVE-2026-69244. `cryptography` was upgraded to 50.0.0 to address CVE-2026-69247 and CVE-2026-69249.

---

## UI


### 🚀 Added

- Sign-in method indicators in the Prowler Cloud Users table, including linked SAML domains [(#12268)](https://github.com/prowler-cloud/prowler/pull/12268)
- Compliance watchlist: pin frameworks from any compliance view and filter every view down to the pinned ones, including the overview card and a finding's compliance chips (Prowler Cloud only) [(#12300)](https://github.com/prowler-cloud/prowler/pull/12300)
- Multiple verified email domains in a single SAML configuration for Prowler Cloud [(#12332)](https://github.com/prowler-cloud/prowler/pull/12332)
- Container images now ship an SBOM and build provenance as OCI attestations [(#12352)](https://github.com/prowler-cloud/prowler/pull/12352)

### 🔄 Changed

- `Add Provider` wizard documentation link targeting each provider's credentials section and selected authentication method [(#12218)](https://github.com/prowler-cloud/prowler/pull/12218)

### 🐞 Fixed

- Imported scans now appear on the Scans page even when no provider is connected [(#12025)](https://github.com/prowler-cloud/prowler/pull/12025)
- Feedback widget no longer obscures page and side-panel actions [(#12282)](https://github.com/prowler-cloud/prowler/pull/12282)
- Rows-per-page selector no longer disappears when the chosen page size collapses a table to a single page [(#12299)](https://github.com/prowler-cloud/prowler/pull/12299)
- Overview ThreatScore card no longer leaves unused horizontal space at responsive layout boundaries [(#12317)](https://github.com/prowler-cloud/prowler/pull/12317)
- Overview metric cards stack below the desktop layout threshold and preserve readable widths when aligned [(#12323)](https://github.com/prowler-cloud/prowler/pull/12323)
- Overview metric cards now align horizontally at medium desktop widths [(#12323)](https://github.com/prowler-cloud/prowler/pull/12323)
- AWS and GCP organization onboarding launches all linked provider scans through one bulk operation [(#12350)](https://github.com/prowler-cloud/prowler/pull/12350)
- `/compliance` no longer fails while compliance overview data is still being generated [(#12358)](https://github.com/prowler-cloud/prowler/pull/12358)
- `Client Secret` and `Refresh Token` labels in the GCP organization authentication form [(#12362)](https://github.com/prowler-cloud/prowler/pull/12362)

### 🔐 Security

- Removed the `apk upgrade` from the UI image and moved the base digest forward instead, so the image is reproducible from its pin rather than from whatever Alpine serves at build time [(#12313)](https://github.com/prowler-cloud/prowler/pull/12313)



## API


### 🚀 Added

- Attack Paths adds 20 AWS privilege-escalation detection queries from pathfinding.cloud, covering service PassRole escalations (Batch, Braket, Cognito Identity, ECS, EMR, EMR Serverless, GameLift, Glue, EC2 Image Builder, Kinesis Analytics, HealthOmics, EventBridge Scheduler, SSM, Step Functions), CodeDeploy and Step Functions existing-resource abuse, role permissions-boundary removal with role assumption, and IAM Identity Center permission-set policy injection [(#12237)](https://github.com/prowler-cloud/prowler/pull/12237)
- Attack Paths query metadata now carries an outcome (Code execution, Privilege escalation, Public exposure, or Resource inventory), exposed on the queries endpoint so the graph can show a terminal outcome node [(#12344)](https://github.com/prowler-cloud/prowler/pull/12344)
- Container images now ship an SBOM and build provenance as OCI attestations [(#12352)](https://github.com/prowler-cloud/prowler/pull/12352)

### 🔄 Changed

- Pin the container vulnerability scanner to Trivy v0.72.0, matching prowler-registry and partner-portal [(#12346)](https://github.com/prowler-cloud/prowler/pull/12346)

### 🐞 Fixed

- Compliance report output directory failures are now logged with the exception attached and fingerprinted by `errno` in Sentry, so `ENOSPC`, `ENOENT` and `EACCES` no longer share a single issue [(#12142)](https://github.com/prowler-cloud/prowler/pull/12142)
- Restored the SDK dependency to `@master` now that the dependency bumps have landed there, and regenerated the lock. The API image no longer builds against a temporary integration branch [(#12309)](https://github.com/prowler-cloud/prowler/pull/12309)

### 🔐 Security

- The API container image now verifies the checksum of every third-party binary it downloads (PowerShell, Trivy, zizmor) before installing it [(#12334)](https://github.com/prowler-cloud/prowler/pull/12334)
- Upgrade aiohttp to 3.14.3 to pick up the fix for CVE-2026-69244 [(#12340)](https://github.com/prowler-cloud/prowler/pull/12340)
- Upgrade cryptography to 50.0.0, closing CVE-2026-69247 and CVE-2026-69249 [(#12356)](https://github.com/prowler-cloud/prowler/pull/12356)



## SDK


### 🚀 Added

- `admincenter_shared_bookings_disabled` check for M365 provider, covering CIS Microsoft 365 Foundations Benchmark v7.0.0 control 1.3.9 [(#12147)](https://github.com/prowler-cloud/prowler/pull/12147)
- `defender_priority_account_protection_enabled` and `defender_strict_preset_security_policy_enabled` checks for M365 provider, covering CIS Microsoft 365 Foundations Benchmark v7.0.0 controls 2.4.1 and 2.4.2 [(#12148)](https://github.com/prowler-cloud/prowler/pull/12148)
- `exchange_owa_mailbox_policy_personal_accounts_disabled` and `exchange_organization_reject_direct_send_enabled` checks for M365 provider, covering CIS Microsoft 365 Foundations Benchmark v7.0.0 controls 6.3.2 and 6.5.5 [(#12149)](https://github.com/prowler-cloud/prowler/pull/12149)
- `teams_external_access_trial_tenants_blocked` check for M365 provider, verifying that Teams external access with trial-only tenants is blocked, covering CIS Microsoft 365 Foundations Benchmark v7.0.0 control 8.2.4 [(#12151)](https://github.com/prowler-cloud/prowler/pull/12151)
- `entra_device_registration_join_restricted`, `entra_device_registration_max_devices_per_user_limited`, `entra_device_registration_global_admins_not_local_admins`, `entra_device_registration_registering_user_not_local_admin`, `entra_device_registration_laps_enabled` and `entra_policy_default_user_cannot_read_bitlocker_keys` checks for M365 provider, covering CIS Microsoft 365 Foundations Benchmark v7.0.0 device registration controls (5.1.4.x) [(#12152)](https://github.com/prowler-cloud/prowler/pull/12152)
- The IAM privilege-escalation check now detects 22 additional pathfinding.cloud escalation paths across AWS Batch, Braket, CodeDeploy, Cognito Identity, ECS, EMR, EMR Serverless, GameLift, Glue, EC2 Image Builder, Kinesis Analytics, HealthOmics, EventBridge Scheduler, SSM Automation, Step Functions, IAM permissions boundaries, and IAM Identity Center (SSO) [(#12237)](https://github.com/prowler-cloud/prowler/pull/12237)
- Container images now ship an SBOM and build provenance as OCI attestations [(#12352)](https://github.com/prowler-cloud/prowler/pull/12352)

### 🔄 Changed

- Highlighted key security terms in the Risk description of 8 existing M365 checks [(#12156)](https://github.com/prowler-cloud/prowler/pull/12156)
- Moved the Trivy suppressions from the classic `.trivyignore` to `.trivyignore.yaml`, so each entry is scoped to the package it names instead of suppressing its CVE across the whole image [(#12314)](https://github.com/prowler-cloud/prowler/pull/12314)
- The `securityhub_delegated_admin_enabled_all_regions`, `guardduty_delegated_admin_enabled_all_regions` and `config_delegated_admin_and_org_aggregator_all_regions` checks now report MANUAL instead of FAIL when the delegated administrator status cannot be read and no independent misconfiguration is detected, which happens on member accounts that are not registered as delegated administrators because the API is restricted to the organization management account and to delegated administrator accounts [(#12319)](https://github.com/prowler-cloud/prowler/pull/12319)
- Pin the container vulnerability scanner to Trivy v0.72.0, matching prowler-registry and partner-portal [(#12346)](https://github.com/prowler-cloud/prowler/pull/12346)
- Quote the unquoted shell expansions in the release and build workflows [(#12365)](https://github.com/prowler-cloud/prowler/pull/12365)
- Fix the remaining shellcheck findings in workflows and enable the check [(#12367)](https://github.com/prowler-cloud/prowler/pull/12367)

### 🐞 Fixed

- Spurious error log output from `Get-ApplicationAccessPolicy` on M365 tenants without application access policies [(#12149)](https://github.com/prowler-cloud/prowler/pull/12149)
- Secret checks no longer report credential-free JDBC connection strings as embedded credentials [(#12288)](https://github.com/prowler-cloud/prowler/pull/12288)
- A failed `ListOrganizationAdminAccounts` lookup in one region no longer marks the Security Hub delegated administrator status as undetermined in every other region [(#12319)](https://github.com/prowler-cloud/prowler/pull/12319)
- `securityhub_delegated_admin_enabled_all_regions` no longer reports FAIL with `delegated administrator status could not be determined` on accounts that do have a Security Hub delegated administrator; `ListOrganizationAdminAccounts` responses are now parsed with the `AccountId` and `Status` fields the API actually returns [(#12319)](https://github.com/prowler-cloud/prowler/pull/12319)
- `guardduty_delegated_admin_enabled_all_regions` no longer reports `no delegated administrator configured` when the lookup was denied or failed, which asserted absence where there was only lack of visibility [(#12319)](https://github.com/prowler-cloud/prowler/pull/12319)
- OCI Identity service no longer drops the whole dynamic groups, groups, policies or users listing when the OCI API returns null optional fields such as `matching_rule` [(#12327)](https://github.com/prowler-cloud/prowler/pull/12327)
- Alibaba Cloud STS credential validation retries transient connection failures and reports exhausted attempts as connection errors instead of invalid credentials [(#12353)](https://github.com/prowler-cloud/prowler/pull/12353)

### 🔐 Security

- Bumped the Compose DozerDB image from 5.26.3.0 to 5.26.27.0, which moves it off Debian 11 and onto Debian 13 [(#12320)](https://github.com/prowler-cloud/prowler/pull/12320)
- The SDK container image now verifies the checksum of every third-party binary it downloads (PowerShell, Trivy, zizmor) before installing it [(#12334)](https://github.com/prowler-cloud/prowler/pull/12334)
- Upgrade aiohttp to 3.14.3 to pick up the fix for CVE-2026-69244 [(#12340)](https://github.com/prowler-cloud/prowler/pull/12340)
- Upgrade cryptography to 50.0.0, closing CVE-2026-69247 and CVE-2026-69249 [(#12356)](https://github.com/prowler-cloud/prowler/pull/12356)



## MCP


### 🚀 Added

- Test foundation for the MCP server with shared fixtures, JSON:API builders, mocked HTTP transports and CI coverage reporting [(#12291)](https://github.com/prowler-cloud/prowler/pull/12291)
- Test coverage for the integrations tools and models, pinning the connection-check choreography and the Jira dispatch retry safety [(#12343)](https://github.com/prowler-cloud/prowler/pull/12343)
- Container images now ship an SBOM and build provenance as OCI attestations [(#12352)](https://github.com/prowler-cloud/prowler/pull/12352)

### 🔄 Changed

- `prowler_send_findings_to_jira` now reports `safe_to_retry` on every outcome, true only when Prowler knows no Jira work item was created: a dispatch the API refused is retryable, one that failed on the server or got no answer is not [(#12343)](https://github.com/prowler-cloud/prowler/pull/12343)
- `prowler_list_integrations` no longer requests the `configuration` it discards, now that the API tolerates a sparse fieldset without it [(#12343)](https://github.com/prowler-cloud/prowler/pull/12343)

### 🔐 Security

- Upgrade cryptography to 50.0.0, closing CVE-2026-69247 and CVE-2026-69249 [(#12356)](https://github.com/prowler-cloud/prowler/pull/12356)




