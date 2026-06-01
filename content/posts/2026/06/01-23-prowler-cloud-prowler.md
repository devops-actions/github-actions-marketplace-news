---
title: Prowler Security Scan
date: 2026-06-01 23:48:18 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.29.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.29.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🧑‍💼 Google Workspace — 20 new checks to complete CIS 1.3

20 new checks built on the [Cloud Identity Policy API](https://docs.cloud.google.com/identity/docs/concepts/overview-policies):

- **Rules service** — 8 checks
- **Security service** — 12 checks

With these checks, Prowler's **automated coverage of the CIS Google Workspace Benchmark 1.3 is now complete**.

Read more in our [Google Workspace documentation](https://docs.prowler.com/user-guide/providers/googleworkspace/getting-started-googleworkspace).

Explore all checks at [Prowler Hub](https://hub.prowler.com/check?provider=googleworkspace).

## 🔑 Okta — Application Service

A new `application` service for Okta with 6 checks covering admin console and dashboard hardening:

- `application_admin_console_session_idle_timeout_15min`
- `application_admin_console_mfa_required`
- `application_admin_console_phishing_resistant_authentication`
- `application_dashboard_mfa_required`
- `application_dashboard_phishing_resistant_authentication`
- `application_authentication_policy_network_zone_enforced`

Read more in our [Okta documentation](https://docs.prowler.com/user-guide/providers/okta/getting-started-okta).

Explore all checks at [Prowler Hub](https://hub.prowler.com/check?provider=okta).

## 🚀 API - Performance

- **Scan ingestion is significantly lighter on the database.** The scan hot loop now bulk-resolves `Resource`/`ResourceTag` rows, replaces per-mapping `SELECT FOR UPDATE` with deferred conflict-tolerant bulk inserts, wraps each micro-batch in a single transaction, and raises the batch size to 1000.
- **Faster `finding-groups/latest` aggregation** on tenants where one recent scan holds most findings.

## 🏢 New Provider: StackIT

Prowler now supports **StackIT**, the German sovereign cloud. Authentication uses a service account key, either as a file path (`--stackit-service-account-key-path` / `STACKIT_SERVICE_ACCOUNT_KEY_PATH`) or inline JSON (`--stackit-service-account-key` / `STACKIT_SERVICE_ACCOUNT_KEY`). 

> [!NOTE]                                                                                                                                                                 
> StackIT is not officially supported. For more information, [contact us](https://prowler.com/contact).

Read more in our [StackIT documentation](https://docs.prowler.com/user-guide/providers/stackit/getting-started-stackit).

Explore all checks at [Prowler Hub](https://hub.prowler.com/check?provider=stackit).

Thanks to @johannes-engler-mw for their 1st provider in Prowler!

## 📋 Scan Jobs — Redesigned View

The Scan Jobs view in the UI is fully restyled around dedicated tabs, each with columns tailored to its context:

- **In Progress** — running and queued scans, auto-refreshing while jobs execute.
- **Completed** — finished scans with quick access to their findings.
- **Scheduled** — upcoming scans with their schedule.

Launching a scan now happens through a dedicated modal where you pick connected cloud accounts and add optional scan notes.

<img width="1648" height="987" alt="Scans" src="https://github.com/user-attachments/assets/dae817c6-46cd-40aa-96ab-0593090d5587" />


## 🌑 Dark Mode — Redesigned

Dark mode has been reworked for clarity and contrast:

- **Pure-black canvas** and **pure-white primary text** for maximum legibility.
- **Brighter border and input tokens** so cards, tables, and inputs separate cleanly instead of blending into the background.

## 📚 Compliance - AWS AI Security Framework

A new [AWS AI Security Framework](https://aws.amazon.com/blogs/security/the-aws-ai-security-framework-securing-ai-with-the-right-controls-at-the-right-layers-at-the-right-phases/) mapping Prowler checks to AI/ML security guidance.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## 🔍 New Checks

### Azure

- `storage_account_public_network_access_disabled` — flags storage accounts that allow public network access

Explore all Azure checks at [Prowler Hub](https://hub.prowler.com/check?provider=azure).

## 🔐 Security Updates

### UI

- `pnpm` upgraded to **11** with supply-chain defaults consolidated in `pnpm-workspace.yaml` and `trustPolicyExclude` entries pinned to exact versions.
- `uuid` pinned to `11.1.1` via `pnpm-workspace.yaml#overrides` to clear `GHSA-w5hq-g745-h8pq` (missing bounds check in `v3`/`v5`/`v6` name-based generators with `buf`) in the transitive tree.

## 🙌 External Contributors

Thank you to our community contributors for this release!

* [@johannes-engler-mw](https://github.com/johannes-engler-mw) — Add the StackIT provider with service-account-key authentication in [#9237](https://github.com/prowler-cloud/prowler/pull/9237)
* [@Br1an67](https://github.com/Br1an67) — Add Azure authentication for sovereign clouds (China / US Government) in [#10284](https://github.com/prowler-cloud/prowler/pull/10284)
* [@OokaToru](https://github.com/OokaToru) — Deprecate the `s3_bucket_default_encryption` check for AWS in [#11230](https://github.com/prowler-cloud/prowler/pull/11230)
* [@juampa](https://github.com/juampa) — Fix the ENS RD 311/2022 VPC compliance mapping for AWS in [#11372](https://github.com/prowler-cloud/prowler/pull/11372)

---

## UI

### 🚀 Added

- Restyle `Scan Jobs` view with specific In Progress, Completed, Scheduled tabs [(#11258)](https://github.com/prowler-cloud/prowler/pull/11258)

### 🔄 Changed

- Dark mode: pure-black canvas, pure-white primary text, and brighter border / input tokens for clearer separation between cards, tables, and inputs [(#11073)](https://github.com/prowler-cloud/prowler/pull/11073)
- CI workflows (`ui-tests.yml`, `ui-e2e-tests-v2.yml`) now read the Node version from `ui/.nvmrc` and the pnpm version from `package.json#packageManager` instead of hardcoded values [(#11225)](https://github.com/prowler-cloud/prowler/pull/11225)

### 🐞 Fixed

- Compliance page now loads the most recent scan when opened from the sidebar instead of showing the "no compliance data available" alert [(#11374)](https://github.com/prowler-cloud/prowler/pull/11374)
- Invitation links now show specific expired, no-longer-valid, and invalid-token messages based on API error responses [(#11376)](https://github.com/prowler-cloud/prowler/pull/11376)

### 🔐 Security

- `pnpm` upgraded to 11 with supply-chain defaults consolidated in `pnpm-workspace.yaml` and `trustPolicyExclude` entries pinned to exact versions [(#11225)](https://github.com/prowler-cloud/prowler/pull/11225)
- `uuid` pinned to `11.1.1` via `pnpm-workspace.yaml#overrides` to clear `GHSA-w5hq-g745-h8pq` (missing bounds check in `v3`/`v5`/`v6` name-based generators with `buf`) in the transitive tree [(#11225)](https://github.com/prowler-cloud/prowler/pull/11225)

## API

### 🔄 Changed

- Scan finding ingestion: bulk-resolve `Resource`/`ResourceTag` rows, replace per-mapping `SELECT FOR UPDATE` with deferred `ResourceTagMapping.bulk_create(ignore_conflicts=True)`, wrap each micro-batch in a single `rls_transaction`, and raise `SCAN_DB_BATCH_SIZE` to 1000 [(#11249)](https://github.com/prowler-cloud/prowler/pull/11249)
- Faster `GET /api/v1/finding-groups/latest` aggregation on tenants where one recent scan holds most findings [(#11380)](https://github.com/prowler-cloud/prowler/pull/11380)

## SDK

### 🚀 Added

- `application` service for Okta provider with `application_admin_console_session_idle_timeout_15min`, `application_admin_console_mfa_required`, `application_admin_console_phishing_resistant_authentication`, `application_dashboard_mfa_required`, `application_dashboard_phishing_resistant_authentication`, and `application_authentication_policy_network_zone_enforced` checks [(#11358)](https://github.com/prowler-cloud/prowler/pull/11358)
- AWS AI Security Framework compliance for AWS provider [(#11353)](https://github.com/prowler-cloud/prowler/pull/11353)
- `storage_account_public_network_access_disabled` check for Azure provider and remapped the Azure CIS "Public Network Access is Disabled" requirements to it [(#11334)](https://github.com/prowler-cloud/prowler/pull/11334)
- StackIT provider now authenticates with a service account key, either as a file path (`--stackit-service-account-key-path` / `STACKIT_SERVICE_ACCOUNT_KEY_PATH`) or as inline JSON content (`--stackit-service-account-key` / `STACKIT_SERVICE_ACCOUNT_KEY`, intended for CI/CD with a secret manager); the StackIT SDK refreshes access tokens internally, replacing the short-lived `STACKIT_API_TOKEN` flow [(#9237)](https://github.com/prowler-cloud/prowler/pull/9237)
- 8 Rules service checks for Google Workspace provider using the Cloud Identity Policy API [(#11379)](https://github.com/prowler-cloud/prowler/pull/11379)
- 12 Security service checks for Google Workspace provider using the Cloud Identity Policy API [(#11356)](https://github.com/prowler-cloud/prowler/pull/11356)

### ⚠️ Deprecated

- `s3_bucket_default_encryption` check for AWS provider since SSE-S3 is automatically applied to all S3 buckets by AWS as of January 5, 2023 and can no longer be disabled [(#11230)](https://github.com/prowler-cloud/prowler/pull/11230)

### 🐞 Fixed

- ENS RD 311/2022 (AWS) compliance mapping: `vpc_different_regions` was uncorrectly mapped under the `mp.com.4` family (Network segregation). That check is now mapped to a new `op.cont.2.aws.vpc.1` requirement under the Continuity of Service control [(#11372)](https://github.com/prowler-cloud/prowler/pull/11372)
- Compliance CSV row count now matches the UI per requirement by sourcing rows from the framework JSON's `requirement.Checks` instead of the stale `finding.compliance` snapshot [(#11370)](https://github.com/prowler-cloud/prowler/pull/11370)
- OpenStack provider exception codes moved from the `10000-10999` range, shared with the AlibabaCloud provider, to the free `17000-17999` range to keep error codes unambiguous [(#11382)](https://github.com/prowler-cloud/prowler/pull/11382)
- Azure provider now supports authentication against sovereign clouds (`AzureChinaCloud`, `AzureUSGovernment`) [(#10284)](https://github.com/prowler-cloud/prowler/pull/10284)
