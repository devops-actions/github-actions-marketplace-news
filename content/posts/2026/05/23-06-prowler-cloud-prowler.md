---
title: Prowler Security Scan
date: 2026-05-23 06:14:32 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.28.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.28.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform that automates security and compliance checks across any cloud environment. It provides hundreds of pre-built security checks, compliance frameworks, and remediation guidance, enabling organizations to monitor and secure their cloud environments in real time. With AI-driven capabilities and customization options, it simplifies cloud security, making it scalable and cost-effective for organizations of all sizes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🆔 Okta - Prowler App

Okta lands in **Prowler App**. 

Authenticate with read-only OAuth credentials and scan your Okta tenant from the App in minutes.

The `signon` service also grows from 1 to 5 checks. Four new medium-severity checks cover the rest of the **DISA STIG Okta IDaaS V1R2** Global Session Policy and sign-in banner controls:

- `signon_global_session_lifetime_18h` — V-273203 / OKTA-APP-001665. Global session maximum lifetime must be 18 hours or less.
- `signon_global_session_cookies_not_persistent` — V-273206 / OKTA-APP-001710. Global session cookies must not be persistent across browser restarts.
- `signon_global_session_policy_network_zone_enforced` — V-279691 / OKTA-APP-003242. Global Session Policy rules must enforce a network zone constraint.
- `signon_dod_warning_banner_configured` — V-273192 / OKTA-APP-000200. The customized sign-in page must display the DoD-mandated warning banner.

> [!NOTE]
> The banner check requires reading Okta brands and customized sign-in pages, so `okta.brands.read` is now part of `DEFAULT_SCOPES`. Existing Okta service apps must grant it before upgrading.

Read more in our [Okta provider documentation](https://docs.prowler.com/user-guide/providers/okta/getting-started-okta).

Explore all Okta checks at [Prowler Hub](https://hub.prowler.com/check?provider=okta).

## 🧾 Finding Evidence

The finding detail drawer in the Prowler App now exposes a dedicated **"Resource Metadata / Evidence"** tab, backed by a new `resource.metadata` attribute on `/api/v1/findings?include=resources`.

The tab surfaces the raw resource attributes Prowler captured at scan time, the evidence behind every `PASS` / `FAIL`, in one click from the finding. No more jumping out to the source-of-truth console just to confirm what the scanner saw.

<img width="816" height="982" alt="Screenshot 2026-05-22 at 12 27 30" src="https://github.com/user-attachments/assets/52fb24ea-55d9-4d58-a2c6-075632225598" />

## 🤖 Prowler for Claude Code

Prowler ships a **[Claude Code](https://www.claude.com/product/claude-code) plugin and marketplace** so Claude can drive end-to-end cloud security and compliance assessments through the Prowler MCP server, against a Prowler Cloud-connected account.

Install it from inside Claude Code:

```text
/plugin marketplace add prowler-cloud/prowler
/plugin install prowler@prowler-plugins
```

From there, Claude can walk an provider through a chosen security or industry framework and remediate findings until the framework is compliant.

> [!NOTE]
> The plugin is in **preview** and under active development. Please report issues on [GitHub](https://github.com/prowler-cloud/prowler/issues) or join the [Slack community](https://goto.prowler.com/slack) for feedback.

Read more in our [Prowler for Claude Code documentation](https://docs.prowler.com/getting-started/products/prowler-claude-code-plugin).

## 📧 Google Workspace — Sites, Marketplace, Additional services, Groups

The Google Workspace provider gains **four new services and six new checks** through the Cloud Identity Policy API:

- **Sites** — `sites_service_disabled`: verifies legacy Google Sites is disabled for the organization so users cannot publish unmanaged Sites pages.
- **Additional services** — `additionalservices_external_groups_disabled`: verifies the Additional Google services > Google Groups toggle is disabled, blocking users from accessing external groups from their corporate account.
- **Marketplace** — `marketplace_apps_access_restricted`: verifies third-party Marketplace apps are restricted (admin-approved only or fully blocked) instead of letting any user install arbitrary apps.
- **Groups** — 3 new checks for Google Groups for Business:
 - `groups_creation_restricted` — verifies group creation is restricted to admins, preventing user-created groups that bypass access reviews.
 - `groups_external_access_restricted` — verifies groups cannot be made accessible to users outside the organization.
 - `groups_view_conversations_restricted` — verifies non-members cannot view group conversations.

Read more in our [Google Workspace provider documentation](https://docs.prowler.com/user-guide/providers/googleworkspace/getting-started-googleworkspace).

Explore all Google Workspace checks at [Prowler Hub](https://hub.prowler.com/check?provider=googleworkspace).

## 🆕 New Checks

### AWS

- `ses_identity_dkim_enabled` — verifies DKIM signing is enabled on every SES identity (domain or email) so outbound email is cryptographically signed and resistant to spoofing. Thanks to @mohamedsolaiman!
- `sagemaker_models_registry_in_use` — verifies at least one SageMaker Model Package Group has an approved model package, enforcing ML governance workflows through the SageMaker Model Registry. Thanks to @cascioli!

### M365

- `entra_app_registration_client_secret_unused` — flags Entra ID app registration client secrets that have never been used or have not been used for a configurable amount of days, so dormant credentials can be revoked before they leak. Thanks to @AlexanderSanin and @PrettyFox0!

### GCP

- `cloudsql_instance_cmek_encryption_enabled` — verifies Cloud SQL instances are encrypted with a customer-managed encryption key (CMEK) instead of Google-managed defaults. Thanks to @s1ns3nz0!

## 🔐 Security Updates

- **MCP Server** — `fastmcp` 2.14.0 → 3.2.4 for **GHSA-5h2m-4q8j-pqpj**, **GHSA-rww4-4w9c-7733** and **GHSA-vv7q-7jx5-f767**. The bump also pulls fixed `jaraco.context`, `python-multipart` and `starlette`, and drops the vulnerable `lupa` and `urllib3` transitive dependencies.

## 🙌 External Contributors

Thank you to our community contributors for this release!

* @mohamedsolaiman — Add `ses_identity_dkim_enabled` check for AWS provider in [#10923](https://github.com/prowler-cloud/prowler/pull/10923)
* @cascioli — Add `sagemaker_models_registry_in_use` check for AWS provider in [#11196](https://github.com/prowler-cloud/prowler/pull/11196)
* @s1ns3nz0 — Add `cloudsql_instance_cmek_encryption_enabled` check for GCP provider in [#11023](https://github.com/prowler-cloud/prowler/pull/11023)
* @Ker102 — Fix OCI Audit service configuration lookup to use the tenancy home region in [#10347](https://github.com/prowler-cloud/prowler/pull/10347)
* @sandiyochristan — Use PowerShell best practices for quoting credential variables in the M365 provider in [#9997](https://github.com/prowler-cloud/prowler/pull/9997)
* @AlexanderSanin and @PrettyFox0 — Add `entra_app_registration_client_secret_unused` check for M365 provider in [#11232](https://github.com/prowler-cloud/prowler/pull/11232)

---

## UI

### 🚀 Added

- `okta` provider support with OAuth 2.0 private-key JWT credentials form (client ID + PEM private key) [(#11213)](https://github.com/prowler-cloud/prowler/pull/11213)
- "Resource Metadata / Evidence" tab in the finding detail drawer [(#11187)](https://github.com/prowler-cloud/prowler/pull/11187)

### 🐞 Fixed

- Resource detail panels: metadata editor now scrolls internally with the minimal scrollbar across the finding drawer and `/resources/:id`, tab labels truncate with tooltips on narrow widths, and "View in AWS Console" moved from the resource UID row to the resource actions menu [(#11325)](https://github.com/prowler-cloud/prowler/pull/11325)

## API

### 🚀 Added

- `okta` provider support [(#11184)](https://github.com/prowler-cloud/prowler/pull/11184)
- `resource.metadata` attribute included in `/api/v1/findings?include=resources` [(#11187)](https://github.com/prowler-cloud/prowler/pull/11187)

## SDK

### 🚀 Added

- Sites, Additional Google services, and Marketplace checks for Google Workspace provider using the Cloud Identity Policy API [(#11281)](https://github.com/prowler-cloud/prowler/pull/11281)
- `entra_app_registration_client_secret_unused` check for M365 provider [(#11232)](https://github.com/prowler-cloud/prowler/pull/11232)
- `cloudsql_instance_cmek_encryption_enabled` check for GCP provider [(#11023)](https://github.com/prowler-cloud/prowler/pull/11023)
- Google Workspace Groups service with 3 new checks [(#11186)](https://github.com/prowler-cloud/prowler/pull/11186)
- `ses_identity_dkim_enabled` check for AWS provider [(#10923)](https://github.com/prowler-cloud/prowler/pull/10923)
- `sagemaker_models_registry_in_use` check for AWS provider, verifying that at least one SageMaker Model Package Group has an approved model package to enforce ML governance workflows [(#11196)](https://github.com/prowler-cloud/prowler/pull/11196)
- `signon_dod_warning_banner_configured`, `signon_global_session_lifetime_18h`, `signon_global_session_cookies_not_persistent` and `signon_global_session_policy_network_zone_enforced` checks for Okta provider [(#11224)](https://github.com/prowler-cloud/prowler/pull/11224)

### 🔄 Changed

- `OktaProvider.test_connection` accepts an optional `provider_id` (org domain) and raises `OktaInvalidProviderIdError` (14007) when it doesn't match the authenticated org — guards against stored UID drifting from the credentials' org [(#11184)](https://github.com/prowler-cloud/prowler/pull/11184)
- Use single-quoted strings for credential variables in the M365 provider PowerShell session, following PowerShell best practices for literal values [(#9997)](https://github.com/prowler-cloud/prowler/pull/9997)

### 🐞 Fixed

- OCI Audit service configuration lookup when the configured region differs from the tenancy home region [(#10347)](https://github.com/prowler-cloud/prowler/pull/10347)
- Container image now uses an absolute `ENTRYPOINT` (`/home/prowler/.venv/bin/prowler`) so it works under any runtime `--workdir`. The relative entrypoint was breaking the official GitHub Action (`prowler-cloud/prowler@v5.27.0`) and any `docker run` with a custom `-w` [(#11313)](https://github.com/prowler-cloud/prowler/pull/11313)

## MCP

### 🔐 Security

- `fastmcp` from 2.14.0 to 3.2.4 for GHSA-5h2m-4q8j-pqpj, GHSA-rww4-4w9c-7733, and GHSA-vv7q-7jx5-f767, which also pulls fixed `jaraco.context`, `python-multipart`, `starlette`, and drops the vulnerable `lupa`/`urllib3` transitive deps [(#11284)](https://github.com/prowler-cloud/prowler/pull/11284)
