---
title: Prowler Security Scan
date: 2026-07-02 22:18:11 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.32.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.32.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🔎 Findings Triage

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Enterprise** with a [subscription](https://prowler.com/pricing).

Triage findings straight from the Findings view. Each finding gets a triage status you can move through its lifecycle:

**Open → Under Review → Remediating → Risk Accepted → False Positive → Resolved** 

Add a triage note to record the decision, mute a finding, all from the row's actions menu. The current status shows inline on every finding row, so you keep track of what has been reviewed and stop re-checking the same issues scan after scan.

<img width="1380" height="159" alt="Triage 1" src="https://github.com/user-attachments/assets/f5268766-76ac-4c7f-a745-a3f013c18c23" />

The status also follows the finding automatically across scans: when a finding flips from `FAIL` to `PASS` on the next scan it moves to **Resolved**, and when it flips from `PASS` back to `FAIL` it moves to **Reopened**. You always know whether an issue is genuinely fixed or has regressed, without touching it by hand.

<img width="1382" height="496" alt="Triage 2" src="https://github.com/user-attachments/assets/258b5302-79f0-4995-a27e-b9b07c1ded57" />

Read more in our [Findings Triage documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-findings-triage).

## ⚙️ Scan Configuration

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Enterprise** with a [subscription](https://prowler.com/pricing).

Create named, reusable scan configurations from a dedicated **Scans / Configuration** page. Each configuration is YAML that follows the structure of [`prowler/config/config.yaml`](https://github.com/prowler-cloud/prowler/blob/master/prowler/config/config.yaml), so you only include the keys you want to override; the rest fall back to the built-in defaults. Values are validated on save against a per-provider, type-safe configuration schema that range-checks each field and rejects unknown keys, so a malformed config is caught before it ever reaches a scan. Attach a configuration to one or more providers so it applies on their next scan, or save it now and attach providers later.

<img width="1420" height="899" alt="Config 1" src="https://github.com/user-attachments/assets/8065313c-8be5-4613-bdc4-3b255d14ed07" />

From the Providers view you can pick which configuration a provider uses (`Default` or any of your saved ones) without leaving the page. No more passing config files around by hand.

<img width="1425" height="660" alt="Config 2" src="https://github.com/user-attachments/assets/183f15ea-49dd-4025-a284-a5c664139146" />

Read more in our [Scan Configuration documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-scan-configuration).

## ✅ Per-Requirement Configuration Validation

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Enterprise** with a [subscription](https://prowler.com/pricing).

Compliance frameworks can now declare `ConfigRequirements` on a requirement, so it's reported as **FAIL** when its mapped checks ran under a configuration too loose to satisfy it. Even if every individual finding PASSed. This applies across all compliance outputs: CSV, OCSF, and console tables, and is the engine behind Scan Configuration's "marked as FAIL" behavior described above.

<img width="2838" height="516" alt="compliance 1" src="https://github.com/user-attachments/assets/8992d8c9-7ec1-4ad2-8fc5-639fb5127d35" />

Read more in our [Configuration File documentation](https://docs.prowler.com/user-guide/cli/tutorials/configuration_file).

## ⏱️ Okta — Request Throttling & Retries

Prowler now proactively throttles Okta API requests to stay under rate limits, with reactive retries on HTTP 429 as a safety net. Both are set in the scan configuration (or their equivalent CLI flags):

-  `okta_requests_per_second` (config file) / `--okta-requests-per-second` (CLI) — cap the request rate. Default: 4 req/s.
-  `okta_max_retries` (config file) / `--okta-retries-max-attempts` (CLI) — bound retry attempts. Default: 5.

This makes large Okta scans more reliable and less likely to be rate-limited.

Read more in our [Okta rate limit documentation](https://docs.prowler.com/user-guide/providers/okta/retry-configuration#request-throttling-requests-per-second).

## 📉 AWS — Cap Resources Scanned per Service

Large AWS accounts can now cap how many resources Prowler analyzes for the highest-volume services, keeping scan time and cost under control. Set a global limit with `max_scanned_resources_per_service`, or override it per service:

- EBS snapshots (`max_ebs_snapshots`)
- Backup recovery points (`max_backup_recovery_points`)
- CloudWatch log groups (`max_cloudwatch_log_groups`)
- Lambda functions (`max_lambda_functions`)
- ECS task definitions (`max_ecs_task_definitions`)
- CodeArtifact packages (`max_codeartifact_packages`)

Limits are **disabled by default** (`0` = unlimited); only positive values cap the analyzed resources.

> [!WARNING]
> When a positive limit is set, compliance results reflect only the sampled resources, not every matching resource in the account.

Read more in our [configuration file documentation](https://docs.prowler.com/user-guide/cli/tutorials/configuration_file#supported-aws-resource-limits).

## 🏷️ Azure — Filter by Resource Group

Azure scans can now be scoped to one or more resource groups with the new `--azure-resource-group` / `--azure-resource-groups` option. This lets you run focused assessments against specific environments, teams, or workloads instead of scanning every accessible resource in the subscription.

Prowler validates the requested resource groups across accessible subscriptions and applies the scope across supported Azure services, making targeted Azure scans faster, cleaner, and easier to review.

Examples:

- Single resource group: `prowler azure --az-cli-auth --azure-resource-group rg-prod`
- Multiple resource groups: `prowler azure --az-cli-auth --azure-resource-group rg-prod1 rg-prod2`

Read more in our [Azure Resource Groups documentation](https://docs.prowler.com/user-guide/providers/azure/resource-groups).

Thanks to @Legin-ML for contributing this feature!

## 🧭 Provider Group Filter

Filter the **Overview, Findings, Resources, Scans, and Providers** views by provider group. Scope the whole app to a team, an environment, or a business unit in one click instead of filtering provider by provider.

<img width="1426" height="517" alt="ProviderGroupFilter 1" src="https://github.com/user-attachments/assets/6df4ec5e-f9d9-4828-a674-a392e5fc852b" />

Read more about managing provider groups in our [RBAC documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-rbac).

## 🔬 API — Timestamp Precision in Findings Filters

The `/api/v1/findings` endpoint now accepts full timestamps on the `inserted_at` and `updated_at` filters (`filter[inserted_at__gte]`, `filter[inserted_at__lte]`, and the `updated_at` variants), so you can query narrow time windows instead of whole days. Date-only filtering keeps working, so existing integrations are unaffected.

### Findings inserted within a precise timestamp window
```shell
curl --globoff \
    
'[http://localhost:8080/api/v1/findings?filter[inserted_at__gte]=2026-07-01T06:12:18Z&filter[inserted_at__lte]=2026-07-02T19:25:55Z](http://localhost:8080/api/v1/findings?filter[inserted_at__gte]=2026-07-01T06:12:18Z&filter[inserted_at__lte]=2026-07-02T19:25:55Z)' \    
-H 'Authorization: Bearer <YOUR_TOKEN>' \    
-H 'Accept: application/vnd.api+json'
```

### Combine inserted_at and updated_at windows in a single request
```shell
curl --globoff \
'[http://localhost:8080/api/v1/findings?filter[inserted_at__gte]=2026-07-01T05:12:18Z&filter[inserted_at__lte]=2026-07-02T20:25:55Z&filter[updated_at__gte]=2026-07-01T06:12:18Z&filter[updated_at__lte]=2026-07-02T19:25:55Z](http://localhost:8080/api/v1/findings?filter[inserted_at__gte]=2026-07-01T05:12:18Z&filter[inserted_at__lte]=2026-07-02T20:25:55Z&filter[updated_at__gte]=2026-07-01T06:12:18Z&filter[updated_at__lte]=2026-07-02T19:25:55Z)' \
-H 'Authorization: Bearer <YOUR_TOKEN>' \
-H 'Accept: application/vnd.api+json'
```

## 🕸️ Attack Paths — Neptune as a persistent sink

Attack Paths can now persist its graph in **AWS Neptune** in addition to Neo4j, selectable via `ATTACK_PATHS_SINK_DATABASE=neptune` (default `neo4j`). Cartography's per-scan ingest database stays on Neo4j. The scan task preflights the ingest database and the configured sink before ingestion, and provider graph cleanup now deletes relationships in directed batches before deleting nodes.

This is the groundwork for scale: a managed graph database lets Attack Paths hold much larger graphs, extend coverage to more providers, and link resources across them so an attack path can cross provider boundaries instead of stopping at one cloud's edge.

Read more in the [Attack Paths documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-attack-paths).

## 🔐 New Secret-Scanning Engine — Kingfisher

Prowler's secret-scanning checks now run on [Kingfisher](https://github.com/mongodb/kingfisher) instead of `detect-secrets`. Scans run **fully offline by default**, and obvious placeholder values (e.g. `password123`, `changeme`) are no longer reported, cutting down false positives.

Opt in to **live validation** with the new `--scan-secrets-validate` flag (or the `aws.secrets_validate` config option): Prowler checks discovered secrets against the provider APIs, and any secret confirmed to be **live is reported as critical**, so you can prioritize the credentials that actually work.

> [!NOTE]
> The `detect_secrets_plugins` configuration option has been removed, as it is no longer used by the new engine.

Read more in our [secret detection documentation](https://docs.prowler.com/user-guide/cli/tutorials/pentesting#detect-secrets).

## 🔍 Checks

### AWS
- `stepfunctions_statemachine_encrypted_with_cmk` — Step Functions state machines use a customer-managed KMS key for encryption at rest instead of the default AWS-owned key. Thanks to @Sid-0602!
- `waf_regional_webacl_logging_enabled` — AWS WAF Classic Regional Web ACLs have logging enabled to a Kinesis Data Firehose stream. Thanks to @Sid-0602!
- **IAM privilege escalation** — the privesc checks now cover **AWS Bedrock AgentCore** paths across Runtime, Harness, Code Interpreter, and Custom Browser. Thanks to @MrCloudSec!
- `apigateway_restapi_no_secrets_in_stage_variables` - Scans API Gateway REST API stage variables for hardcoded passwords, API keys, and tokens. Thanks to @chirag1206!
- `awslambda_function_no_secrets_in_code` — This check now supports a `secrets_ignore_files` audit-config option to skip files inside the deployment package by glob pattern (e.g. `*.deps.json`), suppressing .NET dependency-manifest false positives without masking real secrets.
- `s3_bucket_object_public` — spot-checks a configurable sample of object ACLs in each bucket and flags objects granted to the `AllUsers` or `AuthenticatedUsers` groups. Disabled by default; opt in via the `s3_bucket_object_public_enabled` configuration option. Thanks to @Synchx00!

Read more in our [AWS documentation](https://docs.prowler.com/user-guide/providers/aws/getting-started-aws).

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

### Microsoft 365

New **Conditional Access** hardening checks:

- `entra_conditional_access_policy_explicitly_targets_azure_devops` — at least one enabled policy explicitly includes the Azure DevOps cloud application, rather than relying on a broad "All cloud apps" policy. Thanks to @mzl2233!
- `entra_conditional_access_policy_no_exclusion_gaps` — every user, group, role, or application excluded from an enabled policy stays in scope of another enabled policy. Thanks to @UTKARSH698 with @arieleli01212 as co-author!
- `entra_conditional_access_policy_groups_management_restricted` — every security group referenced by an enabled or report-only policy is management-restricted or role-assignable. Thanks to @SAMurai-16!
- `exchange_application_access_policy_restricts_mailbox_apps` — every service principal with Microsoft Graph application-level Exchange mailbox permissions is restricted by an Exchange Online Application Access Policy. Thanks to @VasistAcharya!

Read more in our [Microsoft 365 documentation](https://docs.prowler.com/user-guide/providers/microsoft365/getting-started-m365).

Explore all Microsoft 365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

## Compliance

### 🧩 CIS Benchmark Refresh — Six New Versions

Prowler ships a coordinated refresh of the CIS Benchmarks across six providers:

- **AWS** — CIS Amazon Web Services Foundations Benchmark v7.0.0, adding the new Organizations section (2.1.1-2.1.6), resource policy (2.21), web front-end access logging (4.10), and VPC Endpoints (6.8) recommendations.
- **Azure** — CIS Microsoft Azure Foundations Benchmark v6.0.0.
- **GCP** — CIS Google Cloud Platform Foundation Benchmark v5.0.0.
- **Kubernetes** — CIS Kubernetes Benchmark v2.0.1.
- **GitHub** — CIS GitHub Benchmark v1.2.0.
- **Microsoft 365** — CIS Microsoft 365 Foundations Benchmark v7.0.0.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

Explore the full compliance catalog at [Prowler Hub](https://hub.prowler.com/compliance).

### 🌐 CIS Controls v8.1 — Universal Framework

A new **universal** (cross-provider) compliance framework mapping existing checks across 18 providers — AWS, Azure, GCP, Kubernetes, M365, GitHub, AlibabaCloud, OracleCloud, GoogleWorkspace, Okta, Cloudflare, Vercel, MongoDB Atlas, OpenStack, Linode, StackIT, NHN, and Scaleway — to the 18 CIS Critical Security Controls and their Safeguards. Ships with a dedicated detail view and report mapping in the UI.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

Explore the full compliance catalog at [Prowler Hub](https://hub.prowler.com/compliance).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @chirag1206 — `apigateway_restapi_no_secrets_in_stage_variables` check [(#11188)](https://github.com/prowler-cloud/prowler/pull/11188)
- @MrCloudSec — AWS Bedrock AgentCore privilege escalation paths in the IAM privesc checks [(#11726)](https://github.com/prowler-cloud/prowler/pull/11726)
- @Sid-0602 — `stepfunctions_statemachine_encrypted_with_cmk` [(#11538)](https://github.com/prowler-cloud/prowler/pull/11538) and `waf_regional_webacl_logging_enabled` [(#11539)](https://github.com/prowler-cloud/prowler/pull/11539) checks
- @mzl2233 — `entra_conditional_access_policy_explicitly_targets_azure_devops` check [(#11182)](https://github.com/prowler-cloud/prowler/pull/11182)
- @UTKARSH698 with @arieleli01212 as co-author — `entra_conditional_access_policy_no_exclusion_gaps` check [(#11577)](https://github.com/prowler-cloud/prowler/pull/11577)
- @SAMurai-16 — `entra_conditional_access_policy_groups_management_restricted` check [(#11342)](https://github.com/prowler-cloud/prowler/pull/11342)
- @vahidg — Azure PostgreSQL flexible server collection resilience fix [(#11595)](https://github.com/prowler-cloud/prowler/pull/11595)
- @davletd — Azure `keyvault_logging_enabled` `AuditEvent` category fix [(#11660)](https://github.com/prowler-cloud/prowler/pull/11660)
- @VasistAcharya — `exchange_application_access_policy_restricts_mailbox_apps` [(#11247)](https://github.com/prowler-cloud/prowler/pull/11247)
- @Legin-ML — Filter scans at Resource Group level [(#10657)](https://github.com/prowler-cloud/prowler/pull/10657)
- @Synchx00 — `s3_bucket_object_public` check [(#9517)](https://github.com/prowler-cloud/prowler/pull/9517)

---

## UI

### 🚀 Added

- Filter the Overview, Findings, Resources, Scans, and Providers views by provider group [(#11659)](https://github.com/prowler-cloud/prowler/pull/11659)
- CIS Controls v8.1 compliance support, including its detail view and report mapping [(#11700)](https://github.com/prowler-cloud/prowler/pull/11700)

## API

### 🚀 Added

- Timestamp precision support for `/api/v1/findings` `inserted_at` and `updated_at` filters [(#11754)](https://github.com/prowler-cloud/prowler/pull/11754)

### 🔄 Changed

- Attack Paths: AWS Neptune is now supported as a persistent sink database, selectable via `ATTACK_PATHS_SINK_DATABASE=neptune` (default `neo4j`), Cartography's (bumped to 0.138.1) per-scan ingest database stays on Neo4j [(#11524)](https://github.com/prowler-cloud/prowler/pull/11524)
- Attack Paths: Scan task now checks the ingest Neo4j database and configured graph sink before starting graph ingestion [(#11743)](https://github.com/prowler-cloud/prowler/pull/11743)
- Disable PowerShell telemetry in the API container image [(#11746)](https://github.com/prowler-cloud/prowler/pull/11746)

### 🐞 Fixed

- Attack Paths: Provider graph cleanup now deletes Neo4j and Neptune relationships in directed batches before deleting nodes [(#11755)](https://github.com/prowler-cloud/prowler/pull/11755)
- `scan-perform` no longer reports an error when a provider is deleted during a running scan [(#11696)](https://github.com/prowler-cloud/prowler/pull/11696)

## SDK

### 🚀 Added

- `exchange_application_access_policy_restricts_mailbox_apps` check for M365 provider, verifying every service principal with Microsoft Graph application-level Exchange mailbox permissions is restricted by an Exchange Online Application Access Policy, preventing tenant-wide mailbox access by unscoped applications [(#11247)](https://github.com/prowler-cloud/prowler/pull/11247)
- Per-requirement configuration validation for compliance frameworks via `ConfigRequirements`, so a requirement is reported as FAIL when its configurable checks ran with a configuration too loose to satisfy it (applied across all compliance outputs: CSV, OCSF, and console tables) [(#11669)](https://github.com/prowler-cloud/prowler/pull/11669)
- `entra_conditional_access_policy_explicitly_targets_azure_devops` check for M365 provider, verifying at least one enabled Conditional Access policy explicitly includes the Azure DevOps cloud application instead of relying on a broad "All cloud apps" policy [(#11182)](https://github.com/prowler-cloud/prowler/pull/11182)
- `entra_conditional_access_policy_no_exclusion_gaps` check for M365 provider, verifying every user, group, role, or application excluded from an enabled Conditional Access policy stays in scope of another enabled policy [(#11577)](https://github.com/prowler-cloud/prowler/pull/11577)
- `entra_conditional_access_policy_groups_management_restricted` check for M365 provider, verifying every security group referenced by an enabled or report-only Conditional Access policy is management-restricted or role-assignable [(#11342)](https://github.com/prowler-cloud/prowler/pull/11342)
- `stepfunctions_statemachine_encrypted_with_cmk` check for AWS provider, verifying that each Step Functions state machine uses a customer-managed KMS key for encryption at rest rather than the default AWS-owned key [(#11538)](https://github.com/prowler-cloud/prowler/pull/11538)
- CIS Controls v8.1 universal compliance framework mapping existing checks across 18 providers (AWS, Azure, GCP, Kubernetes, M365, GitHub, AlibabaCloud, OracleCloud, GoogleWorkspace, Okta, Cloudflare, Vercel, MongoDB Atlas, OpenStack, Linode, StackIT, NHN, and Scaleway) to the 18 CIS Critical Security Controls and their Safeguards [(#11700)](https://github.com/prowler-cloud/prowler/pull/11700)
- CIS Microsoft 365 Foundations Benchmark v7.0.0 compliance framework for the M365 provider [(#11699)](https://github.com/prowler-cloud/prowler/pull/11699)
- `waf_regional_webacl_logging_enabled` check for AWS provider, verifying that each AWS WAF Classic Regional Web ACL has logging enabled to a Kinesis Data Firehose stream [(#11539)](https://github.com/prowler-cloud/prowler/pull/11539)
- `sdk_only` provider property (default `true`) and `Provider.get_app_providers()`, so a provider (built-in or external) stays CLI/SDK-only and hidden from the app unless it declares `sdk_only = False` [(#11427)](https://github.com/prowler-cloud/prowler/pull/11427)
- `Provider.get_scan_arguments()`, `Provider.get_connection_arguments()` and `Provider.get_credentials_schema()` contract methods, so a provider persisted as a stored uid plus a secret dict can be constructed and validated programmatically (to be consumed by the API in a later change) [(#11578)](https://github.com/prowler-cloud/prowler/pull/11578)
- Okta API request throttling to proactively stay under rate limits, configurable via `okta_requests_per_second` in the config file and the `--okta-requests-per-second` CLI flag, plus configurable retries via `okta_max_retries` / `--okta-retries-max-attempts` as a safety net [(#11702)](https://github.com/prowler-cloud/prowler/pull/11702)
- CIS Amazon Web Services Foundations Benchmark v7.0.0 compliance framework for the AWS provider, adding the new Organizations section (2.1.1-2.1.6), resource policy (2.21), web front-end access logging (4.10), and VPC Endpoints (6.8) recommendations [(#11707)](https://github.com/prowler-cloud/prowler/pull/11707)
- CIS Microsoft Azure Foundations Benchmark v6.0.0 compliance framework for the Azure provider [(#11708)](https://github.com/prowler-cloud/prowler/pull/11708)
- CIS Google Cloud Platform Foundation Benchmark v5.0.0 compliance framework for the GCP provider [(#11714)](https://github.com/prowler-cloud/prowler/pull/11714)
- CIS Kubernetes Benchmark v2.0.1 compliance framework for the Kubernetes provider [(#11722)](https://github.com/prowler-cloud/prowler/pull/11722)
- CIS GitHub Benchmark v1.2.0 compliance framework for the GitHub provider [(#11719)](https://github.com/prowler-cloud/prowler/pull/11719)
- AWS Bedrock AgentCore privilege escalation paths in the IAM privilege escalation checks, covering Runtime, Harness, Code Interpreter and Custom Browser [(#11726)](https://github.com/prowler-cloud/prowler/pull/11726)
- `--scan-secrets-validate` flag and `aws.secrets_validate` configuration option to optionally validate the secrets discovered by the secret-scanning checks against the provider APIs; secrets confirmed to be live are reported as critical [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- `apigateway_restapi_no_secrets_in_stage_variables` check for AWS provider, scanning API Gateway REST API stage variables for hardcoded secrets such as passwords, API keys, and tokens [(#11188)](https://github.com/prowler-cloud/prowler/pull/11188)
- `s3_bucket_object_public` check for AWS provider, spot-checking a configurable sample of object ACLs in each bucket and flagging objects granted to the AllUsers or AuthenticatedUsers groups; disabled by default and opted into via the `s3_bucket_object_public_enabled` configuration option [(#9517)](https://github.com/prowler-cloud/prowler/pull/9517)
- Azure provider now supports `--azure-resource-group` to scope resource-level checks to specific resource groups across all accessible subscriptions [(#10657)](https://github.com/prowler-cloud/prowler/pull/10657)

### 🔄 Changed

- Replaced the `detect-secrets` library with [Kingfisher](https://github.com/mongodb/kingfisher) as the engine for the secret-scanning checks; scans run fully offline by default and obvious placeholder values are no longer reported as findings [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- Removed the `detect_secrets_plugins` configuration option, which is no longer used by the new secret-scanning engine [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- `awslambda_function_no_secrets_in_code` now supports a `secrets_ignore_files` audit-config option to skip files inside the deployment package by glob pattern (e.g. `*.deps.json`), suppressing .NET dependency-manifest false positives without masking real secrets [(#11222)](https://github.com/prowler-cloud/prowler/pull/11222)
- AWS scans for EBS snapshots, Backup recovery points, CloudWatch log groups, Lambda functions, ECS task definitions, and CodeArtifact packages now support configurable resource analysis limits via `aws.max_scanned_resources_per_service`; limits are disabled by default and only positive values cap analyzed resources [(#11228)](https://github.com/prowler-cloud/prowler/pull/11228)

### 🐞 Fixed

- GitHub `repository_has_codeowners_file` check no longer flags archived repositories, since they are read-only and cannot be updated without first being unarchived, making the finding not actionable [(#11735)](https://github.com/prowler-cloud/prowler/pull/11735)
- Report secret-scanning checks as `MANUAL` instead of `PASS` when the scanner fails (non-zero exit, timeout, unparseable output or missing binary), so a scanner failure is no longer indistinguishable from "no secrets found" [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- Avoid a false `FAIL` in `cloudwatch_log_group_no_secrets_in_logs` when a multiline event's secrets are all removed by `secrets_ignore_patterns` during the rescan [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- Key the `cloudwatch_log_group_no_secrets_in_logs` secret scan by log group ARN instead of name, so same-named log groups and streams in different regions no longer collide and reuse each other's findings [(#11694)](https://github.com/prowler-cloud/prowler/pull/11694)
- Compliance frameworks contributed by several external packages under the same provider are now merged instead of overwritten, so every entry-point directory a provider contributes is discovered [(#11578)](https://github.com/prowler-cloud/prowler/pull/11578)
- Azure PostgreSQL flexible server collection no longer drops the remaining servers in a subscription when one server fails to collect; the `connection_throttle.enable` parameter (removed in PostgreSQL 16+) is treated as absent only when the Azure SDK reports it as not found, so unexpected lookup failures are not silently reported as throttling disabled [(#11595)](https://github.com/prowler-cloud/prowler/pull/11595)
- Azure `keyvault_logging_enabled` now accepts Key Vault diagnostic settings that enable the explicit `AuditEvent` category, avoiding false failures when Azure returns category-based logs without category groups [(#11660)](https://github.com/prowler-cloud/prowler/pull/11660)
- GitHub default branch protection checks now evaluate repository rulesets in addition to classic branch protection, avoiding false positives for repositories that enforce protection through rulesets [(#11723)](https://github.com/prowler-cloud/prowler/pull/11723)
- Okta, Alibaba Cloud and OpenStack scan-config sections are now validated against a registered schema instead of being silently accepted, so their configurable thresholds (session/idle timeouts, retention days, image-sharing and secret-scanning settings) log a warning and fall back to the built-in default whenever a value is out of range [(#11725)](https://github.com/prowler-cloud/prowler/pull/11725)
