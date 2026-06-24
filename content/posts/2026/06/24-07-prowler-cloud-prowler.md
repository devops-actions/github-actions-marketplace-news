---
title: Prowler Security Scan
date: 2026-06-24 07:09:54 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.31.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.31.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com


## 🗓️ Flexible Scan Scheduling

> [!NOTE]
> Available exclusively in **Prowler Cloud**. Prowler App self-hosted supports daily scans only.

<img width="1655" height="664" alt="schedule_1" src="https://github.com/user-attachments/assets/6a8e1ffc-3115-4621-aa98-179715e8ae5d" />

You can now set a per-provider scan schedule from the Providers page. Pick a **scan time** and a **repeat cadence**: Daily, Every 48 hours, Weekly (with a day-of-week selector), or Monthly. Schedules can be edited or removed at any time, and a new scan never interrupts access to existing data.

<img width="689" height="519" alt="schedule_2" src="https://github.com/user-attachments/assets/f0a4ae5a-1c12-4696-975f-fe834bca0fae" />

All schedules are listed in one place under the **Scheduled** tab in **Scan Jobs**, showing each provider's cadence, next scan, and last scan at a glance.

<img width="1411" height="606" alt="schedule_3" src="https://github.com/user-attachments/assets/6e63bb9f-0ce9-44d5-8fb5-0f07eb9ad06f" />

## 📚 DORA — Expanded Provider Coverage

Prowler extends [**DORA**](https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en) (Digital Operational Resilience Act, Regulation (EU) 2022/2554) coverage to **Azure**, **GCP**, **Cloudflare**, and **Alibaba Cloud**, mapping each provider's existing checks across the five DORA pillars.

<img width="1577" height="975" alt="dora_alibaba" src="https://github.com/user-attachments/assets/6fe05416-ee68-4830-8891-e01eab24444c" />

> [!NOTE]
> The framework follows the `<name>_<version>` naming convention as `DORA_2022_2554`.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## 🚀 Guided Onboarding

> [!NOTE]
> Available exclusively in **Prowler Cloud**.

New accounts now get a guided first-run experience. The Overview greets you with an **"Add your first provider"** prompt: connect a provider so Prowler has something to scan and assess, then get started in one click (or skip for now).

<img width="1657" height="994" alt="onboarding_1" src="https://github.com/user-attachments/assets/147a6404-6a2c-4ea4-90d2-8575b67c2399" />

From there, contextual empty states across the product point you to the next action rather than leaving you stuck. Attack Paths, for example, explains that you need a completed scan before it can build a graph and links straight to **Scan Jobs**, with a **"See how it works"** affordance for first-timers.

<img width="1408" height="215" alt="onboarding_2" src="https://github.com/user-attachments/assets/63e4cc04-8745-4d6b-a27b-a6b07d0518aa" />

## 🔐 Optional SAML SSO `userType`

The SAML `userType` attribute is now optional. If your IdP does not send it, or sends it blank, Prowler keeps the user's existing roles unchanged instead of replacing them with a fallback role.

When `userType` is provided, Prowler still maps the user to the matching role. If that role does not exist yet, Prowler creates it with read-only access: visibility over all providers, with no management permissions.

Read more in our [SAML SSO documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-sso)

## 🏢 New Provider — Linode

Prowler now scans [**Linode**](https://www.linode.com/) (Akamai Cloud), covering its administration, compute, and networking services. Thanks to @varunmamillapalli for their 1st provider in Prowler!

> [!NOTE]                                                                                                                                                                 
> Linode is not officially supported. For more information, [contact us](https://prowler.com/contact).

Read more in our [Linode documentation](https://docs.prowler.com/user-guide/providers/linode/getting-started-linode).

Explore all Linode checks at [Prowler Hub](https://hub.prowler.com/check?provider=linode).

## 🔍 Checks

### AWS

**Post-Quantum Cryptography readiness** — get ahead of the migration to quantum-resistant cryptography:

- `cloudfront_distributions_pqc_tls_enabled` — CloudFront distributions enforce a post-quantum TLS 1.3 security policy.
- `apigateway_domain_name_pqc_tls_enabled` — API Gateway custom domain names use a post-quantum TLS security policy.
- `transfer_server_pqc_ssh_kex_enabled` — Transfer Family servers use a post-quantum hybrid SSH key exchange.
- `acmpca_certificate_authority_pqc_key_algorithm` — Private CA authorities use a post-quantum (ML-DSA) key algorithm (new `acmpca` service).
- `rolesanywhere_trust_anchor_pqc_pki` — IAM Roles Anywhere trust anchors are backed by a post-quantum (ML-DSA) PKI (new `rolesanywhere` service).

**Organization-wide governance:**

- `securityhub_delegated_admin_enabled_all_regions` — Security Hub has a delegated administrator, active in all opted-in regions, with organization auto-enable on. Thanks to @ernestprovo23!
- `config_delegated_admin_and_org_aggregator_all_regions` — AWS Config has a delegated administrator and an organization aggregator covering all regions. Thanks to @ernestprovo23!

**Machine learning:**

- `sagemaker_clarify_exists` — verifies at least one SageMaker Clarify processing job exists per scanned region, so bias-detection and model-explainability controls are in place. Thanks to @AlexanderSanin!

Read more in our [AWS documentation](https://docs.prowler.com/user-guide/providers/aws/getting-started-aws).

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

### Azure

A large batch of new Azure checks spanning data, compute, identity, and networking:

- **Cosmos DB** — automatic failover, continuous backup policy, minimum TLS 1.2, and public network access disabled.
- **MySQL & PostgreSQL Flexible Servers** — geo-redundant backup and high availability.
- **AKS** — auto-upgrade, Azure Monitor (Container Insights), local accounts disabled, and Microsoft Defender enabled.
- **Databricks** — public network access disabled and secure cluster connectivity (no public IP).
- **Defender** — CSPM on the Standard tier.
- **Networking** — NSG association on subnets and DDoS Network Protection on VNets.
- **Entra ID** — app registration credential expiry, users with recent sign-in and strong authentication enforcement.
- **Recovery Services** — vaults with at least one protected backup item and vaults with adequate backup policy.

Thanks to @s1ns3nz0 for all these contributions!

Read more in our [Azure documentation](https://docs.prowler.com/user-guide/providers/azure/getting-started-azure).

Explore all Azure checks at [Prowler Hub](https://hub.prowler.com/check?provider=azure).

### GCP

New coverage for high availability and public-exposure detection:

- `cloudsql_instance_high_availability_enabled` — Cloud SQL primary instances use `REGIONAL` availability for automatic zone failover.
- `cloudfunction_function_inside_vpc` — Cloud Functions use a Serverless VPC Access connector for private egress.
- `cloudfunction_function_not_publicly_accessible` — detects `allUsers` / `allAuthenticatedUsers` IAM invocation bindings.
- `secretmanager_secret_not_publicly_accessible` — detects Secret Manager secrets with public IAM bindings.
- `secretmanager_secret_rotation_enabled` — verifies Secret Manager secrets have automatic rotation configured with a period of 90 days or less and no missed rotation.

Thanks to @s1ns3nz0 for all these contributions!

Read more in our [GCP documentation](https://docs.prowler.com/user-guide/providers/gcp/getting-started-gcp).

Explore all GCP checks at [Prowler Hub](https://hub.prowler.com/check?provider=gcp).

### Kubernetes

New core checks for container resource governance and reliability: CPU limits, CPU requests, memory limits, memory requests, fixed image tags, liveness probes, and readiness probes. Thanks to @Nikhilkumar2311 for all these contributions!

Read more in our [Kubernetes documentation](https://docs.prowler.com/user-guide/providers/kubernetes/getting-started-k8s).

Explore all Kubernetes checks at [Prowler Hub](https://hub.prowler.com/check?provider=kubernetes).

### Microsoft 365 

- `entra_directory_sync_object_takeover_blocked` — hybrid Entra tenants block cloud object takeover through soft-match and hard-match directory synchronization. Thanks to @PrettyFox0 and @omobolajiadeyan!
- `entra_conditional_access_policy_no_deleted_object_references` — flags Conditional Access policies that reference user, group, or role objects that no longer resolve in the directory. Thanks to @ernestprovo23!

Read more in our [Microsoft 365 documentation](https://docs.prowler.com/user-guide/providers/microsoft365/getting-started-m365).

Explore all Microsoft 365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

### Oracle Cloud Infrastructure (OCI)

- `identity_storage_service_level_admins_scoped` — CIS 3.1 control 1.15, ensuring storage service-level administrators exclude delete permissions.

Read more in our [Oracle Cloud Infrastructure documentation](https://docs.prowler.com/user-guide/providers/oci/getting-started-oci).

Explore all Oracle Cloud Infrastructure checks at [Prowler Hub](https://hub.prowler.com/check?provider=oci).

## 🐍 Python 3.13 Support

The Prowler SDK now supports **Python 3.13**. Thanks to @branchv!

## 🔐 Security Updates

- **SDK** — `pytest` 8.3.5 → 9.0.3, `black` 25.1.0 → 26.3.1, `microsoft-kiota-*` → 1.9.9, and `aiohttp` → 3.14.0, patching known CVEs.
- **API** — `aiohttp` → 3.14.0 and `idna` → 3.15, patching known CVEs.
- **UI** — bumped vulnerable `Next.js`, React, AI SDK, `postcss`, `hono`, `qs`, `esbuild`, and Alpine OpenSSL packages; `dompurify` 3.4.2 → 3.4.10, patching XSS sanitization bypass advisories.
- **Containers** — base image bumped to `python:3.12.13-slim-bookworm` (patches `libgnutls30` CVE-2026-33845 and CVE-2026-42010) and `trivy` to 0.71.0 (patches embedded `golang.org/x/crypto` and Go stdlib CVEs).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @varunmamillapalli — New Linode provider: administration, compute, and networking services [(#11633)](https://github.com/prowler-cloud/prowler/pull/11633)
- @s1ns3nz0 — 20+ Azure & GCP checks across Cosmos DB, AKS, Databricks, Flexible Servers, Entra, networking, and GCP public-exposure
- @Nikhilkumar2311 — Kubernetes resource limits, requests, image tag, and probe checks [(#11373)](https://github.com/prowler-cloud/prowler/pull/11373)
- @ernestprovo23 — AWS Security Hub/Config org-wide delegated admin checks [(#11259)](https://github.com/prowler-cloud/prowler/pull/11259) and M365 conditional access check [(#11236)](https://github.com/prowler-cloud/prowler/pull/11236)
- @AlexanderSanin — `sagemaker_clarify_exists` check [(#11211)](https://github.com/prowler-cloud/prowler/pull/11211)
- @PrettyFox0 with @omobolajiadeyan as co-author — M365 directory sync object takeover check [(#11098)](https://github.com/prowler-cloud/prowler/pull/11098)
- @branchv — Python 3.13 support [(#9293)](https://github.com/prowler-cloud/prowler/pull/9293)
- @alinealfa — GCP audit-filtered aggregated sinks fix [(#11575)](https://github.com/prowler-cloud/prowler/pull/11575)
- @b-abderrahmane — Configurable Celery worker concurrency [(#11075)](https://github.com/prowler-cloud/prowler/pull/11075)

---

## UI

### 🚀 Added

- Controlled `402` and `403` Server Action error messages for alert seed and mutation flows [(#11629)](https://github.com/prowler-cloud/prowler/pull/11629)

### 🐞 Fixed

- Attack Paths now shows distinct messages while a scan is queued, running, or building its graph — plus a separate "couldn't load scans" error — instead of always showing "No scans available" [(#11512)](https://github.com/prowler-cloud/prowler/pull/11512)
- Radio button no longer shifts vertically when selected [(#11608)](https://github.com/prowler-cloud/prowler/pull/11608)
- Handle rename DORA to DORA_2022_2554 to follow the naming <name>_<version> in compliance frameworks [(#11551)](https://github.com/prowler-cloud/prowler/pull/11551)

### 🔐 Security

- Bump vulnerable `Next.js`, React, AI SDK, `postcss`, `hono`, `qs`, `esbuild`, and Alpine OpenSSL packages (`libcrypto3` and `libssl3`) [(#11581)](https://github.com/prowler-cloud/prowler/pull/11581)
- Bump transitive `dompurify` from 3.4.2 to 3.4.10, patching XSS sanitization bypass advisories [(#11636)](https://github.com/prowler-cloud/prowler/pull/11636)

## API

### 🚀 Added

- Provider group filters for API endpoints that support cloud provider filtering, including exact and `__in` variants [(#11573)](https://github.com/prowler-cloud/prowler/pull/11573)
- Provider filters for `GET /api/v1/compliance-overviews`, `/metadata`, and `/requirements`, using latest completed scans per matching provider [(#11587)](https://github.com/prowler-cloud/prowler/pull/11587)
- Server-Sent Events (SSE) infrastructure for the API: a base viewset, a tenant-aware channel manager, and channel-name helpers backed by `django-eventstream` over Valkey Pub/Sub and served through the Gunicorn ASGI worker, so feature endpoints can stream events to clients over a single long-lived connection [(#11556)](https://github.com/prowler-cloud/prowler/pull/11556)
- `DJANGO_CELERY_WORKER_CONCURRENCY` to configure Celery workers concurrency. Unset for default behaviour [(#11075)](https://github.com/prowler-cloud/prowler/pull/11075)

### 🔄 Changed

- Gunicorn worker timeout raised from the 30s default to 120s, so long-running requests are no longer killed prematurely [(#11631)](https://github.com/prowler-cloud/prowler/pull/11631)
- Sentry now drops ASGI's `RequestAborted` errors from health-check probe disconnects on `/health/live` [(#11632)](https://github.com/prowler-cloud/prowler/pull/11632)
- Gunicorn keep-alive timeout now exceeds the load balancer idle timeout, stopping 502s from reused connections [(#11647)](https://github.com/prowler-cloud/prowler/pull/11647)
- API runs under the Uvicorn worker so keep-alive outlives the load balancer idle timeout, fixing Gunicorn's intermittent 502s [(#11663)](https://github.com/prowler-cloud/prowler/pull/11663)

### 🐞 Fixed

- Database connections no longer leak under the ASGI worker, which previously exhausted the read replica's connection slots and caused 500s on read endpoints [(#11640)](https://github.com/prowler-cloud/prowler/pull/11640)

### 🔐 Security

- `aiohttp` to 3.14.0 and `idna` to 3.15, patching known CVEs [(#11596)](https://github.com/prowler-cloud/prowler/pull/11596)
- Container base image to `python:3.12.13-slim-bookworm` and `trivy` to 0.71.0, patching OS and Go module CVEs [(#11596)](https://github.com/prowler-cloud/prowler/pull/11596)
- `trivy` binary bumped to 0.71.0 patching embedded `golang.org/x/crypto`, `golang.org/x/net`, and Go `stdlib` CVEs [(#11592)](https://github.com/prowler-cloud/prowler/pull/11592)


## SDK

### 🚀 Added

- Support for Python 3.13 [(#9293)](https://github.com/prowler-cloud/prowler/pull/9293)
- `securityhub_delegated_admin_enabled_all_regions` check for AWS provider, verifying that Security Hub has a delegated administrator, is active in all opted-in regions, and has organization auto-enable on [(#11259)](https://github.com/prowler-cloud/prowler/pull/11259)
- `config_delegated_admin_and_org_aggregator_all_regions` check for AWS provider, verifying that AWS Config has a delegated administrator and an organization aggregator covering all AWS regions [(#11259)](https://github.com/prowler-cloud/prowler/pull/11259)
- `sagemaker_clarify_exists` check for AWS provider [(#11211)](https://github.com/prowler-cloud/prowler/pull/11211)
- `cloudsql_instance_high_availability_enabled` check for GCP provider, verifying Cloud SQL primary instances use `REGIONAL` availability for automatic zone failover [(#11024)](https://github.com/prowler-cloud/prowler/pull/11024)
- `cloudfunction_function_inside_vpc` check for GCP provider, verifying Cloud Functions have a Serverless VPC Access connector for private egress [(#11021)](https://github.com/prowler-cloud/prowler/pull/11021)
- `cloudfunction_function_not_publicly_accessible` check for GCP provider, detecting Cloud Functions with `allUsers` or `allAuthenticatedUsers` IAM invocation bindings [(#11022)](https://github.com/prowler-cloud/prowler/pull/11022)
- `secretmanager_secret_not_publicly_accessible` check for GCP provider, detecting Secret Manager secrets with public IAM bindings [(#11025)](https://github.com/prowler-cloud/prowler/pull/11025)
- `secretmanager_secret_rotation_enabled` check for GCP provider, verifying Secret Manager secrets have automatic rotation configured within 90 days [(#11026)](https://github.com/prowler-cloud/prowler/pull/11026)
- `identity_storage_service_level_admins_scoped` check for OCI provider CIS 3.1 control 1.15, ensuring storage service-level administrators exclude delete permissions [(#11523)](https://github.com/prowler-cloud/prowler/pull/11523)
- `cosmosdb_account_automatic_failover_enabled` check for Azure provider [(#11031)](https://github.com/prowler-cloud/prowler/pull/11031)
- `cosmosdb_account_backup_policy_continuous` check for Azure provider [(#11032)](https://github.com/prowler-cloud/prowler/pull/11032)
- `cosmosdb_account_minimum_tls_version` check for Azure provider, verifying Cosmos DB accounts enforce TLS 1.2 or higher for client connections [(#11033)](https://github.com/prowler-cloud/prowler/pull/11033)
- `cosmosdb_account_public_network_access_disabled` check for Azure provider, verifying Cosmos DB accounts have public network access disabled so connectivity is restricted to private endpoints or VNet service endpoints [(#11034)](https://github.com/prowler-cloud/prowler/pull/11034)
- `databricks_workspace_public_network_access_disabled` check for Azure provider, verifying Databricks workspaces have public network access disabled so connectivity is restricted to Azure Private Link private endpoints [(#11035)](https://github.com/prowler-cloud/prowler/pull/11035)
- `databricks_workspace_no_public_ip_enabled` check for Azure provider, verifying Databricks workspaces use secure cluster connectivity (no public IP) so compute nodes are not assigned public IP addresses [(#11036)](https://github.com/prowler-cloud/prowler/pull/11036)
- `defender_ensure_defender_cspm_is_on` check for Azure provider, verifying Microsoft Defender Cloud Security Posture Management (CSPM) is enabled on the Standard tier [(#11037)](https://github.com/prowler-cloud/prowler/pull/11037)
- `mysql_flexible_server_geo_redundant_backup_enabled` check for Azure provider, verifying MySQL Flexible Servers have geo-redundant backup enabled so backups are replicated to the paired region [(#11041)](https://github.com/prowler-cloud/prowler/pull/11041)
- `mysql_flexible_server_high_availability_enabled` check for Azure provider, verifying MySQL Flexible Servers have high availability enabled for automatic failover to a standby replica [(#11042)](https://github.com/prowler-cloud/prowler/pull/11042)
- `postgresql_flexible_server_geo_redundant_backup_enabled` check for Azure provider, verifying PostgreSQL Flexible Servers have geo-redundant backup enabled so backups are replicated to the paired region [(#11045)](https://github.com/prowler-cloud/prowler/pull/11045)
- `postgresql_flexible_server_high_availability_enabled` check for Azure provider, verifying PostgreSQL Flexible Servers have high availability enabled for automatic failover to a standby replica [(#11046)](https://github.com/prowler-cloud/prowler/pull/11046)
- `aks_cluster_azure_monitor_enabled` check for Azure provider, verifying AKS clusters have Azure Monitor (Container Insights) enabled for metrics, logs, and alerting [(#11029)](https://github.com/prowler-cloud/prowler/pull/11029)
- `aks_cluster_local_accounts_disabled` check for Azure provider, verifying AKS clusters have local accounts disabled so authentication is forced through Microsoft Entra ID [(#11030)](https://github.com/prowler-cloud/prowler/pull/11030)
- `network_subnet_nsg_associated` check for Azure provider, verifying virtual network subnets have a network security group associated to enforce traffic filtering [(#11043)](https://github.com/prowler-cloud/prowler/pull/11043)
- `network_vnet_ddos_protection_enabled` check for Azure provider, verifying virtual networks have Azure DDoS Network Protection enabled [(#11044)](https://github.com/prowler-cloud/prowler/pull/11044)
- `entra_app_registration_credential_not_expired` check for Azure provider, verifying Entra ID app registration secrets and certificates are not expired, expiring within 30 days, or without an expiration date [(#11038)](https://github.com/prowler-cloud/prowler/pull/11038)
- `entra_authentication_methods_policy_strong_auth_enforced` check for Azure provider, verifying the Entra ID authentication methods policy enforces MFA registration and enables at least one strong method (Microsoft Authenticator, FIDO2, or X.509 certificate) [(#11039)](https://github.com/prowler-cloud/prowler/pull/11039)
- `entra_user_with_recent_sign_in` check for Azure provider, detecting stale enabled accounts that have not signed in within the last 90 days (requires Entra ID P1/P2 licensing for sign-in activity) [(#11040)](https://github.com/prowler-cloud/prowler/pull/11040)
- `aks_cluster_auto_upgrade_enabled` check for Azure provider [(#11027)](https://github.com/prowler-cloud/prowler/pull/11027)
- Public `Provider.get_class()` method that resolves a provider class by name for both built-in and external (entry-point) providers [(#11398)](https://github.com/prowler-cloud/prowler/pull/11398)
- Jira timeout preventing the calls from hanging indefinitely when the Jira endpoint is unreachable or slow [(#11602)](https://github.com/prowler-cloud/prowler/pull/11602)
- TLS certificate verification in the `codepipeline_project_repo_private` check, which previously used an unverified SSL context, leaving the repository-visibility probe open to MITM tampering [(#11603)](https://github.com/prowler-cloud/prowler/pull/11603)
- Support for Linode cloud provider, with compute, networking and administration services [(#11633)](https://github.com/prowler-cloud/prowler/pull/11633)
- DORA (Digital Operational Resilience Act, Regulation (EU) 2022/2554) compliance coverage for the Azure provider, mapping existing Azure checks across the five DORA pillars [(#11551)](https://github.com/prowler-cloud/prowler/pull/11551)
- Rename DORA to DORA_2022_2554 to follow the naming <name>_<version> in compliance frameworks [(#11551)](https://github.com/prowler-cloud/prowler/pull/11551)
- `entra_directory_sync_object_takeover_blocked` check for the M365 provider, verifying that hybrid Entra tenants block cloud object takeover through both soft-match and hard-match directory synchronization [(#11098)](https://github.com/prowler-cloud/prowler/pull/11098)
- `entra_conditional_access_policy_no_deleted_object_references` check for M365 provider [(#11236)](https://github.com/prowler-cloud/prowler/pull/11236)
- `aks_cluster_defender_enabled` check for Azure provider, verifying that AKS clusters have Microsoft Defender security monitoring enabled [(#11028)](https://github.com/prowler-cloud/prowler/pull/11028)
- `recovery_vault_has_protected_items` check for Azure provider, verifying that Recovery Services vaults have at least one protected backup item [(#11048)](https://github.com/prowler-cloud/prowler/pull/11048)
- DORA (Digital Operational Resilience Act, Regulation (EU) 2022/2554) compliance coverage for the GCP provider, mapping existing GCP checks across the five DORA pillars [(#11642)](https://github.com/prowler-cloud/prowler/pull/11642)
- DORA (Digital Operational Resilience Act, Regulation (EU) 2022/2554) compliance coverage for the Cloudflare provider, mapping existing Cloudflare edge/network checks across the applicable DORA pillars [(#11645)](https://github.com/prowler-cloud/prowler/pull/11645)
- DORA (Digital Operational Resilience Act, Regulation (EU) 2022/2554) compliance coverage for the AlibabaCloud provider, mapping existing AlibabaCloud checks across the applicable DORA pillars [(#11646)](https://github.com/prowler-cloud/prowler/pull/11646)
- `cloudfront_distributions_pqc_tls_enabled` check for AWS provider to verify CloudFront distributions enforce a post-quantum TLS 1.3 security policy [(#11317)](https://github.com/prowler-cloud/prowler/pull/11317)
- `apigateway_domain_name_pqc_tls_enabled` check for AWS provider to verify API Gateway custom domain names use a post-quantum TLS security policy [(#11316)](https://github.com/prowler-cloud/prowler/pull/11316)
- `transfer_server_pqc_ssh_kex_enabled` check for AWS provider to verify Transfer Family servers use a post-quantum hybrid SSH key exchange security policy [(#11315)](https://github.com/prowler-cloud/prowler/pull/11315)
- `acmpca_certificate_authority_pqc_key_algorithm` check and new `acmpca` service for AWS provider to verify AWS Private CA certificate authorities use a post-quantum (ML-DSA) key algorithm [(#11318)](https://github.com/prowler-cloud/prowler/pull/11318)
- `rolesanywhere_trust_anchor_pqc_pki` check and new `rolesanywhere` service for AWS provider to verify IAM Roles Anywhere trust anchors are backed by a post-quantum (ML-DSA) PKI [(#11319)](https://github.com/prowler-cloud/prowler/pull/11319)
- Kubernetes core checks for container CPU limits, CPU requests, memory limits, memory requests, fixed image tags, liveness probes, and readiness probes [(#11373)](https://github.com/prowler-cloud/prowler/pull/11373)
- `recovery_vault_backup_policy_retention_adequate` check for Azure provider, verifying Recovery Services backup policies retain daily backups for at least 30 days [(#11047)](https://github.com/prowler-cloud/prowler/pull/11047)

### 🔄 Changed

- Replaced the unmaintained `awsipranges` dependency with a small standard-library helper for the `route53_dangling_ip_subdomain_takeover` check [(#9293)](https://github.com/prowler-cloud/prowler/pull/9293)

### 🐞 Fixed

- Azure PostgreSQL flexible server inventory no longer aborts the whole subscription when the `connection_throttle.enable` parameter is missing (e.g. PostgreSQL v18), and logs the expected "Entra ID authentication not enabled" case as a warning instead of an error, so servers are still scanned [(#11045)](https://github.com/prowler-cloud/prowler/pull/11045)
- `iam_policy_allows_privilege_escalation` now includes the `privilege-escalation` category [(#11648)](https://github.com/prowler-cloud/prowler/pull/11648)

### 🔐 Security

- `pytest` from 8.3.5 to 9.0.3, patching a known vulnerability in the SDK test dependency [(#11291)](https://github.com/prowler-cloud/prowler/pull/11291)
- `black` from 25.1.0 to 26.3.1, patching a known vulnerability in the SDK formatter dependency [(#11290)](https://github.com/prowler-cloud/prowler/pull/11290)
- `microsoft-kiota-*` to 1.9.9 and `aiohttp` to 3.14.0, patching known CVEs [(#11596)](https://github.com/prowler-cloud/prowler/pull/11596)
- Container base image bumped to `python:3.12.13-slim-bookworm` (patches `libgnutls30` CVE-2026-33845 and CVE-2026-42010) and `trivy` bumped to 0.71.0 (patches embedded `golang.org/x/crypto` and Go stdlib CVEs); `.trivyignore` documents remaining bookworm criticals with no-fix or not-affected rationale [(#11592)](https://github.com/prowler-cloud/prowler/pull/11592)
