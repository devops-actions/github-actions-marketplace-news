---
title: Prowler Security Scan
date: 2026-05-20 07:00:57 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.27.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.27.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform designed to automate security assessments and compliance monitoring across any cloud environment. It provides hundreds of pre-built security checks, compliance frameworks, and remediation guidance, offering AI-driven, real-time, and customizable capabilities to simplify and scale cloud security management. This action helps organizations proactively identify and address security risks, ensuring compliance and enhanced cloud security posture.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🆔 New Provider: Okta (CLI-Only)

Prowler now scans **Okta** as a first-class provider. Authenticate with OAuth read-only credentials using an application and start auditing your Okta tenant in minutes.

```bash
export OKTA_ORG_DOMAIN="your-tenant.okta.com"
export OKTA_CLIENT_ID="0oa1234567890abcdef"
export OKTA_PRIVATE_KEY_FILE="/path/to/prowler-okta.pem"

prowler okta
```

The release ships with the `signon` service and one DISA STIG-mapped check:

- `signon_global_session_idle_timeout_15min` — maps to **[DISA STIG](https://public.cyber.mil/stigs/) V-273186 / OKTA-APP-000020**: the Default Policy must have a Priority 1 rule (not the built-in Default Rule) that sets Maximum Okta global session idle time to 15 minutes or less.

More services, checks, the STIG v1 Okta compliance framework, and full Prowler API / UI integration are coming in follow-up releases.

Read more in our [Okta provider documentation](https://docs.prowler.com/user-guide/providers/okta/getting-started-okta).

Explore all Okta checks at [Prowler Hub](https://hub.prowler.com/check?provider=okta).

## 📧 Google Workspace — Chat service

The Google Workspace provider grows again with the new **Chat** service and 6 CIS-mapped checks landing via the Cloud Identity Policy API:

- `chat_apps_installation_disabled` — verifies third-party Chat apps cannot be installed by users, blocking unsanctioned access to email, conversation content, and organizational data.
- `chat_external_file_sharing_disabled` — verifies users cannot share files with people outside the organization via Chat conversations.
- `chat_external_messaging_restricted` — verifies messaging with users outside the organization is either disabled or restricted to allowlisted domains.
- `chat_external_spaces_restricted` — verifies external Chat spaces are either disabled or restricted to allowlisted domains.
- `chat_incoming_webhooks_disabled` — verifies incoming webhooks are disabled so external applications cannot post into Chat spaces.
- `chat_internal_file_sharing_disabled` — verifies file sharing between internal users in Chat is disabled, for organizations that need to audit all internal file flows.

Read more in our [Google Workspace provider documentation](https://docs.prowler.com/user-guide/providers/googleworkspace/getting-started-googleworkspace).

Explore all Google Workspace checks at [Prowler Hub](https://hub.prowler.com/check?provider=googleworkspace).

## 🕸️ Attack Paths — Redesigned Graph

<img width="1303" height="646" alt="attack-paths-1" src="https://github.com/user-attachments/assets/476c5035-a81f-45af-8de5-31a24c46fd83" />

The Attack Paths graph in the Prowler App has been **rewritten on [React Flow](https://reactflow.dev/)**, replacing the previous D3 + Dagre implementation. The new graph ships with:

- Improved layout and node clustering
- Smoother pan, zoom, and selection interactions
- Image export
- A minimap for orientation on dense graphs

<img width="1305" height="672" alt="attack-paths-2" src="https://github.com/user-attachments/assets/66dc7e95-1d48-4963-ac20-c55e5232f46e" />

## ☁️ AWS — "View in AWS Console"

AWS findings and resource details in the Prowler App now expose a one-click **"View in AWS Console"** link that opens the resource directly in the AWS Console. Jumping from a finding straight to the offending resource in the source-of-truth console is one click away.

<img width="819" height="368" alt="aws-resource" src="https://github.com/user-attachments/assets/fecac9c5-47b0-4ed5-9a39-e30dc780f4ce" />

## ☁️ AWS — IAM checks focus on attached customer-managed policies

AWS IAM customer-managed policy checks now scan only **attached** policies by default. Unattached customer-managed policies no longer emit a `FAIL`. They're inert, they're not in any principal's effective permissions, and they were generating findings on accounts that legitimately keep policies around for staged rollouts or break-glass scenarios. To keep auditing unattached policies (and other unused-service surfaces), opt in with `--scan-unused-services`, matching the existing semantics for the rest of the unused-services scope.

## 🤖 Lighthouse AI — Finding Groups MCP tools

Lighthouse AI can now reason about **Finding Groups** end to end. The new Finding Groups MCP tools let Lighthouse AI list, filter and inspect grouped findings, the same lens analysts use to triage at scale, instead of being limited to individual findings.

Read more about it in our [Lighthouse AI documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-lighthouse)

## 📄 PDF Compliance Reports — Performance Improvements

We've introduce two important changes to the Compliance Reports in PDF:

- **Only failed findings in the PDF.** PDFs now focus on what needs action. `PASS` findings are no longer written into the report. The CSV and JSON exports remain complete and unfiltered for anyone who needs the full picture.
- **Per-check detail tables capped at 100 failed findings.** Each check's detail table shows up to 100 failed findings, with an in-PDF banner reading *"Showing first 100 of N failed findings"* pointing readers to the CSV / JSON exports for the rest.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## 🌊 New Provider: Scaleway (Unofficial, CLI-Only)

Prowler now scans **Scaleway** as a new provider. Point Prowler at your Scaleway organization with a secret key and start auditing IAM:

```bash
prowler scaleway
```

The release ships with the `iam` service and one check:

- `iam_api_keys_no_root_owned` — flags Scaleway API keys bound to the **account root user**. Root-owned API keys bypass IAM policies and grant unrestricted access to every project, resource and billing setting in the organization; rotating them disrupts every automation that depended on root credentials, so they should be replaced with IAM-application-scoped keys.

Read more in our [Scaleway provider documentation](https://docs.prowler.com/user-guide/providers/scaleway/getting-started-scaleway)

## ⚙️ `poetry` → `uv` migration

Both the **Prowler API** and the **Prowler SDK** are now on [`uv`](https://github.com/astral-sh/uv) as their package manager. Contributors get faster, deterministic installs and a single tool to work across the codebase.

Thank you to @AOrps for the contribution to migrate it in the API!

## 🆕 New Checks

### AWS
- `cloudtrail_bedrock_logging_enabled` — verifies at least one actively logging CloudTrail trail records Amazon Bedrock API activity for generative-AI auditability.
- `iam_user_access_not_stale_to_sagemaker` — flags IAM users whose last SageMaker access exceeds the configured threshold (default **90 days**, tunable via `max_unused_sagemaker_access_days`) or who have never accessed SageMaker.
- `sagemaker_domain_sso_configured` — verifies SageMaker Domains use IAM Identity Center (SSO) authentication instead of IAM users, so user access is centrally managed. Thanks to @kimjune01!

### M365
- `entra_service_principal_no_secrets_for_permanent_tier0_roles` — flags service principals that hold credentials for **permanent** Tier-0 role assignments (Global Admin, Privileged Role Admin, etc.), where any leaked secret is a tenant-wide compromise.

## 🔐 Security Updates

- **UI**: `npm` dependencies updated to patched versions for Next.js, Vite, LangChain, XML parsing, lodash, and related transitive packages.
- **API**: 4 HIGH severity dependency vulnerabilities resolved on `api/uv.lock` — `lxml` 5.3.2 → 6.1.0 (GHSA-vfmq-68hx-4jfw, XXE), `urllib3` 2.6.3 → 2.7.0 (GHSA-mf9v-mfxr-j63j, GHSA-qccp-gfcp-xxvc), `microsoft-kiota-*` 1.9.2 → 1.9.9 (GHSA-7j59-v9qr-6fq9, via `override-dependencies` since the SDK hard-pins `kiota-abstractions`), and `xmlsec` 1.3.14 → 1.3.17 for libxml2 compatibility with lxml 6.x ([#11192](https://github.com/prowler-cloud/prowler/pull/11192)).
- **MCP Server**: `cryptography` 46.0.1 → 47.0.0 (transitive) for CVE-2026-39892, CVE-2026-26007 and CVE-2026-34073.
- **Supply chain tooling** — `safety` replaced with `osv-scanner`, which now also scans the **UI** workspace in addition to the SDK; `npm` supply-chain hardening landed in the UI workspace; SDK root transitive dependencies pinned to prevent silent drift.

## 🙌 External Contributors

Thank you to our community contributors for this release!

* [@AOrps](https://github.com/AOrps) — Replace `poetry` with `uv` as the Prowler API package manager in [#10775](https://github.com/prowler-cloud/prowler/pull/10775)
* [@b-abderrahmane](https://github.com/b-abderrahmane) — Surface M365 `AuditLog.Read.All` permission errors as preventive per-user FAILs instead of mass false positives in [#10907](https://github.com/prowler-cloud/prowler/pull/10907)
* [@kimjune01](https://github.com/kimjune01) — Add `sagemaker_domain_sso_configured` check for AWS provider in [#11094](https://github.com/prowler-cloud/prowler/pull/11094)

---

## UI

### 🚀 Added

- Health endpoint at `GET /api/health` for Docker Compose liveness checks [(#11145)](https://github.com/prowler-cloud/prowler/pull/11145)
- AWS findings and resource details now expose a "View in AWS Console" link that opens the resource directly in the AWS Console via the universal `/go/view` ARN resolver [(#9172)](https://github.com/prowler-cloud/prowler/pull/9172)
- Lighthouse AI: Prowler App Finding Groups MCP tools [(#11140)](https://github.com/prowler-cloud/prowler/pull/11140)

### 🔄 Changed

- Trimmed unused `npm` dependencies [(#11115)](https://github.com/prowler-cloud/prowler/pull/11115)
- Faster, stricter pre-commit: prek lints and formats only staged UI files (husky removed), with Prettier and ESLint (`--max-warnings 40`, stale-disable detection) now covering the full UI workspace, including `public/` assets [(#11118)](https://github.com/prowler-cloud/prowler/pull/11118)
- Attack Paths graph now uses React Flow with improved layout, interactions, export, minimap, and browser test coverage [(#10686)](https://github.com/prowler-cloud/prowler/pull/10686)
- SAML ACS URL is only shown if the email domain is configured [(#11144)](https://github.com/prowler-cloud/prowler/pull/11144)
- "View Resource" action in the finding resource detail drawer is now an icon-only link rendered next to the resource name (instead of a text button in the UID row), keeping the "View in AWS Console" link unchanged [(#11193)](https://github.com/prowler-cloud/prowler/pull/11193)

### 🐞 Fixed

- Mute Findings modal now enforces the 100-character limit on the rule name input with a live counter and inline error, matching the existing reason field behaviour [(#11158)](https://github.com/prowler-cloud/prowler/pull/11158)
- Finding drawer no longer renders literal backticks around inline code in Risk, Description and Remediation sections [(#11142)](https://github.com/prowler-cloud/prowler/pull/11142)
- Launch Scan first-provider wizard continues after provider creation instead of resetting the Scans page [(#11136)](https://github.com/prowler-cloud/prowler/pull/11136)
- Attack Paths graph nodes now wrap long resource and finding labels, indicate truncated values with `…`, and show the full value in an immediate tooltip [(#11197)](https://github.com/prowler-cloud/prowler/pull/11197)

### 🔐 Security

- `npm` dependencies updated to patched versions for Next.js, Vite, LangChain, XML parsing, lodash, and related transitive packages [(#11173)](https://github.com/prowler-cloud/prowler/pull/11173)
- Hardened `npm` supply chain controls [(#11157)](https://github.com/prowler-cloud/prowler/pull/11157)

## API

### 🚀 Added

- GIN index on `findings(categories, resource_services, resource_regions, resource_types)` to speed up `/api/v1/finding-groups` array filters [(#11001)](https://github.com/prowler-cloud/prowler/pull/11001)
- `GET /health/live` and `GET /health/ready` Kubernetes-style probe endpoints following the IETF Health Check Response Format (`application/health+json`). Readiness verifies PostgreSQL, Valkey and Neo4j connectivity and returns 503 with per-dependency detail when any is unreachable [(#11200)](https://github.com/prowler-cloud/prowler/pull/11200)

### 🔄 Changed

- Replace `poetry` with `uv` as package manager [(#10775)](https://github.com/prowler-cloud/prowler/pull/10775)
- Remove orphaned `gin_resources_search_idx` declaration from `Resource.Meta.indexes` (DB index dropped in `0072_drop_unused_indexes`) [(#11001)](https://github.com/prowler-cloud/prowler/pull/11001)
- PDF compliance reports cap detail tables at 100 failed findings per check (configurable via `DJANGO_PDF_MAX_FINDINGS_PER_CHECK`) to bound worker memory on large scans [(#11160)](https://github.com/prowler-cloud/prowler/pull/11160)

### 🐞 Fixed

- `perform_scan_task` and `perform_scheduled_scan_task` now short-circuit with a warning and `return None` when the target provider no longer exists, instead of letting `handle_provider_deletion` raise `ProviderDeletedException`. `perform_scheduled_scan_task` also removes any orphan `PeriodicTask` it finds so beat stops re-firing scans for deleted providers. Prevents queued messages for deleted providers from being recorded as `FAILURE` [(#11185)](https://github.com/prowler-cloud/prowler/pull/11185)
- Attack Paths: `BEDROCK-001` and `BEDROCK-002` now target roles trusting `bedrock-agentcore.amazonaws.com` instead of `bedrock.amazonaws.com`, eliminating false positives against regular Bedrock service roles (Agents, Knowledge Bases, model invocation) [(#11141)](https://github.com/prowler-cloud/prowler/pull/11141)

## SDK

### 🚀 Added

- 6 Chat file sharing, external messaging, spaces, and apps access checks for Google Workspace provider using the Cloud Identity Policy API [(#11126)](https://github.com/prowler-cloud/prowler/pull/11126)
- `entra_service_principal_no_secrets_for_permanent_tier0_roles` check for M365 provider [(#10788)](https://github.com/prowler-cloud/prowler/pull/10788)
- `iam_user_access_not_stale_to_sagemaker` check for AWS provider with configurable `max_unused_sagemaker_access_days` (default 90) [(#11000)](https://github.com/prowler-cloud/prowler/pull/11000)
- `cloudtrail_bedrock_logging_enabled` check for AWS provider [(#10858)](https://github.com/prowler-cloud/prowler/pull/10858)
- Okta provider with OAuth 2.0 authentication and `signon_global_session_idle_timeout_15min` check [(#11079)](https://github.com/prowler-cloud/prowler/pull/11079)
- `sagemaker_domain_sso_configured` check for AWS provider [(#11094)](https://github.com/prowler-cloud/prowler/pull/11094)
- Scaleway provider with `iam_api_keys_no_root_owned` check [(#11166)](https://github.com/prowler-cloud/prowler/pull/11166)

### 🔄 Changed

- `entra_emergency_access_exclusion` check for M365 provider now scopes the exclusion requirement to enabled Conditional Access policies with a `Block` grant control instead of every enabled policy, focusing on the lockout-relevant policy set [(#10849)](https://github.com/prowler-cloud/prowler/pull/10849)
- AWS IAM customer-managed policy checks no longer emit `FAIL` on unattached policies unless `--scan-unused-services` is enabled [(#11150)](https://github.com/prowler-cloud/prowler/pull/11150)
- Replace `poetry` with `uv` as package manager [(#11162)](https://github.com/prowler-cloud/prowler/pull/11162)
- Replace `safety` with `osv-scanner` for dependency vulnerability scanning in SDK CI and pre-commit [(#11167)](https://github.com/prowler-cloud/prowler/pull/11167)

### 🐞 Fixed

- Google Workspace Directory checks sharing a single resource row, causing the service field to be overwritten by the last check executed [(#11176)](https://github.com/prowler-cloud/prowler/pull/11176)
- Google Workspace Calendar and Drive services sharing a single resource row, causing the service field to be overwritten by the last check executed [(#11161)](https://github.com/prowler-cloud/prowler/pull/11161)
- `zone_waf_enabled` check for Cloudflare provider now appends a plan-aware hint to the FAIL `status_extended`: a possible-false-positive note on paid plans (Pro, Business, Enterprise) where the legacy `waf` zone setting can read `off` even though WAF managed rulesets are deployed via the dashboard, and a "not available on the Cloudflare Free plan" note on Free zones [(#9896)](https://github.com/prowler-cloud/prowler/pull/9896)
- Google Workspace Gmail checks sharing a single resource row, causing the service field to be overwritten by the last check executed [(#11169)](https://github.com/prowler-cloud/prowler/pull/11169)
- Google Workspace Drive and Calendar services missing server-side policy filters [(#11195)](https://github.com/prowler-cloud/prowler/pull/11195)
- `entra_users_mfa_capable` and `entra_break_glass_account_fido2_security_key_registered` report a preventive FAIL per affected user (with the missing permission named) when the M365 service principal lacks `AuditLog.Read.All`, instead of mass false positives [(#10907)](https://github.com/prowler-cloud/prowler/pull/10907)
- Duplicated GCP CIS requirements IDs [(#11180)](https://github.com/prowler-cloud/prowler/pull/11180)
- `VercelSession.token` is now excluded from serialization and representation to prevent the Vercel API token from leaking through `.dict()`, `.json()` or logs [(#11198)](https://github.com/prowler-cloud/prowler/pull/11198)

## MCP

### 🚀 Added

- Finding Groups tools [(#11140)](https://github.com/prowler-cloud/prowler/pull/11140)

### 🔐 Security

- `cryptography` from 46.0.1 to 47.0.0 (transitive) for CVE-2026-39892 and CVE-2026-26007 / CVE-2026-34073 [(#10978)](https://github.com/prowler-cloud/prowler/pull/10978)

