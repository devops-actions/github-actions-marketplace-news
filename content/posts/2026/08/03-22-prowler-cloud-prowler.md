---
title: Prowler Security Scan
date: 2026-08-03 22:46:57 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.37.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates Prowler scans to detect vulnerabilities in your AWS resources, helping you maintain security and compliance in any cloud environment. It offers real-time monitoring and seamless integrations with popular tools like Slack, making it easy to integrate into CI/CD pipelines or on-premises environments.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.37.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

This GitHub Action automates Prowler scans to detect vulnerabilities in your AWS resources, helping you maintain security and compliance in any cloud environment. It offers real-time monitoring and seamless integrations with popular tools like Slack, making it easy to integrate into CI/CD pipelines or on-premises environments.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 💬 Lighthouse AI — Context-Aware Chat and a Bigger Toolbox

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Lighthouse AI is now aware of your working context when in Prowler Cloud. Messages carry page-aware context — the page you are on, the finding or resource open in the side panel, and its metadata — so "explain this" just works, and each page offers concise contextual suggestions to start from.

<img width="1920" height="1080" alt="side-panel-context-aware" src="https://github.com/user-attachments/assets/7c87300e-dde7-401f-a475-0d51bbe68e0a" />

Lighthouse also gained access to every tool family the Prowler MCP server advertises: scan configurations, scan scheduling, finding triage, alert rules and recipients, integrations, users, and roles. Every action remains gated by RBAC: Lighthouse AI can only do what the user asking could do themselves.

Read more in the [Lighthouse AI documentation](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse).

## 🔌 Prowler MCP — Integrations, Users, and Roles

Prowler MCP gained three tool families, available on both the Cloud and the self-hosted Local MCP Server:

- **[Integrations](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#integrations-management)** — manage where Prowler sends its results, with the full lifecycle for Amazon S3, AWS Security Hub, and Jira: create them, update credentials, configuration and attached providers, re-check connections, and delete them — plus turning findings into Jira work items directly from a conversation.
- **[Users](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#user-management)** — read-only tools to list the tenant users with their emails and identify the authenticated user.
- **[Roles](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#role-management)** — browse the RBAC roles defined in the tenant, inspect the capabilities each one grants, and set the role a user holds.

Read more in the [Prowler MCP tools reference](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#prowler-tools).

## ☁️ Prowler MCP — Cloud-Only Tools

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing). These tools are exposed only by the Cloud MCP Server at `https://mcp.prowler.com/mcp`; the self-hosted Local MCP Server **does not** include them.

 A new `prowler_cloud_*` namespace adds 32 tools so your AI assistant can run Prowler Cloud workflows end to end instead of only reading from them:

- **[Alerts](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#alerts)** — create and manage alert rules and email recipients, and browse the fired-alert history. Rule conditions can be dry-run before saving, so you can see what a rule would match without persisting anything.
- **[Findings Triage](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#findings-triage)** — set a finding's triage status and attach notes documenting the decision. Unlike muting, the finding stays visible.
- **[Scan Scheduling](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#scan-scheduling)** — configure daily, interval, weekly, or monthly recurring scans, one provider at a time or applied across many at once.
- **[Scan Configurations](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#scan-configurations)** — build reusable scan configuration and attach them to providers.

Read more in the [Prowler Cloud MCP tools reference](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#prowler-cloud-tools).

## 🧭 Compliance — Grouped by provider of the same type

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

One framework, every provider, a single answer. Building on the cross-provider-type roll-up, the Compliance section now groups compliance for all providers of the same type: a **single-provider framework** — CIS AWS, CIS GCP, ENS for Azure — is aggregated across the latest completed scan of every provider of that type. Each framework card rolls up into a consolidated posture with a per-provider breakdown, a findings drill-down, and a combined executive PDF report. Requirement status follows the same strict precedence (FAIL over PASS over MANUAL), so one failing provider flags the requirement for the whole estate.

<img width="1920" height="1080" alt="prowler-app-across-providers-expanded" src="https://github.com/user-attachments/assets/d15a1d62-4e2f-4309-ae42-52e7c826c5e9" />

The Compliance tabs were also renamed to say what they aggregate: "Per Scan" is now **Single Scan**, "Cross-Provider" is now **Multiple Scans**, and Compliance lands on Multiple Scans by default.

<img width="1920" height="1080" alt="prowler-app-across-providers-detail" src="https://github.com/user-attachments/assets/3d3f8578-c875-4b87-b090-6de61c47ef39" />

Read more in the [Cross-Provider Compliance documentation](https://docs.prowler.com/user-guide/compliance/tutorials/cross-provider-compliance).

## ☁️ GCP Organization Onboarding

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Onboarding an entire Google Cloud organization is now a single guided flow. Provide an organization-level credential and Prowler discovers the full hierarchy, every folder and project. Pick the folders and projects to onboard from a selection tree, set custom aliases, test the connection, and launch: each selected project is registered as a provider, with no need to add them one by one. Post-onboarding management is covered too, including credential replacement and organization-wide deletion.

Read more in the [GCP Organizations documentation](https://docs.prowler.com/user-guide/tutorials/prowler-cloud-gcp-organizations).

## 🕸️ Attack Paths — More Privilege Escalation Queries

Attack Paths adds four AWS privilege-escalation detection queries from [pathfinding.cloud](https://pathfinding.cloud). Thanks to @paramanandmallik!

- **[STS-002](https://hub.prowler.com/attack-paths/aws-sts-privesc-cross-account-trust)** — cross-account role trust
- **[STS-003](https://hub.prowler.com/attack-paths/aws-sts-privesc-wildcard-trust)** — wildcard role trust
- **[IAM-022](https://hub.prowler.com/attack-paths/aws-iam-privesc-delete-user-permissions-boundary)** — user permissions-boundary removal
- **[SSO-001](https://hub.prowler.com/attack-paths/aws-sso-privesc-permission-set-escalation)** — IAM Identity Center permission-set escalation

The query info panel now links every query to its page on [Prowler Hub](https://hub.prowler.com), and the IAM privilege-escalation queries were reworked to run efficiently on accounts with many IAM roles, users, or groups, fixing runtime errors and timeouts on large graphs.

Read more in the [Attack Paths documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-attack-paths).

## 🛡️ AWS Confidential Computing — Nitro Enclaves Checks

Prowler adds the first CSPM coverage for confidential computing workloads on AWS, with **11 new checks** for [Nitro Enclaves](https://aws.amazon.com/ec2/nitro/nitro-enclaves/), developed together with [Guillermo Ruiz](https://www.linkedin.com/in/gruizesteban/) from AWS.

- **Workload host environment (EC2)** — five `ec2_confidential_workload_host_*` checks for the parent instance: IMDSv2 not enforced, public IP exposure, unrestricted ingress, exposed vsock proxy ports, and hosts not running.
- **KMS attestation policy** — six `kms_key_enclave_*` checks for the key policies gating enclave secrets: attestation not enforced or bypassable, missing deployment binding, debug-mode attestations, PCR mismatches, and unknown enclave images.

All checks are fully passive, using AWS APIs and CloudTrail with no instance access or SSM agent required, and are mapped across 23 compliance frameworks, including NIST 800-53 Rev 5, PCI-DSS v4.0, ISO 27001:2022, SOC 2, HIPAA, and MITRE ATT&CK.

Read more about it this [blog post](https://prowler.com/blog/your-llm-runs-in-a-nitro-enclave-who-is-checking-the-enclave).

Try them out now at [cloud.prowler.com](https://cloud.prowler.com/sign-up)!

## 🏢 New Provider — Huawei Cloud

Prowler now scans [**Huawei Cloud**](https://www.huaweicloud.com/), with **25 checks** across ten services: CTS, ECS, ELB, EVS, IAM, KMS, OBS, RDS, VPC, and WAF, plus the CIS Huawei Cloud Foundations Benchmark 1.0 compliance framework. Thanks to @tomitobio for their 1st provider in Prowler!

To scan a Huawei Cloud account, export the IAM user's access key credentials and run Prowler CLI:

```bash
export HUAWEICLOUD_ACCESS_KEY_ID="your-access-key-id"
export HUAWEICLOUD_SECRET_ACCESS_KEY="your-secret-access-key"

prowler huaweicloud
```

Read more in the [Huawei Cloud documentation](https://docs.prowler.com/user-guide/providers/huaweicloud/getting-started-huaweicloud). Explore all Huawei Cloud checks at [Prowler Hub](https://hub.prowler.com/check?provider=huaweicloud).

## 🔍 Checks

### AWS

- `codecommit_repository_no_secrets`, alongside the new `codecommit` service, scans files tracked at the tip of each repository's default branch for hardcoded secrets. Thanks to @Sid-0602!
- `glue_catalog_connection_no_secrets` detects secrets in Glue Data Catalog connection properties. Thanks to @l46983284-cpu, @Rishi943, and @UTKARSH698!
- `ec2_instance_stopped_older_than_specific_days` detects EC2 instances stopped longer than a configurable number of days (default 30). Thanks to @Nithin078!
- `sagemaker_endpoint_config_kms_encryption_enabled` verifies SageMaker endpoint configurations use a KMS key for storage volume encryption. Thanks to @Nithin078 and @l46983284-cpu!

Read more in the [AWS documentation](https://docs.prowler.com/user-guide/providers/aws/getting-started-aws). 

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

## 📤 OCSF Output — MITRE ATT&CK Enrichment

OCSF detection finding output now populates `finding_info.analytic` with the Prowler check rule and `finding_info.attacks` with MITRE ATT&CK technique and tactic objects for findings with MITRE ATT&CK compliance metadata. Thanks to @AlexanderSanin!

## 🐞 Fixed

- AWS Security Hub integrations now persist successful recovery checks during finding delivery, keeping connection status and the last-checked time accurate.
- Social sign-up now creates authentication, tenant, and membership records in a single transaction, fully rolling back failed provisioning to prevent incomplete accounts.
- The SAML configuration form keeps the ACS URL field stable while generating the callback URL and exposes the copy action only after a valid URL is available.
- SAML users without a `userType` attribute and without an existing role now receive a least-privilege `read_only` fallback role, so role-dependent operations continue to work without granting management permissions.

## 🔐 Security

- Provider deletion, connection checks, scan creation, provider secrets, provider groups, and daily schedules now respect role provider-group visibility.
- HTML reports escape provider-originated finding fields, preventing stored cross-site scripting through malicious cloud resource tags. https://github.com/prowler-cloud/prowler/security/advisories/GHSA-c2jg-2778-ggm4
- Authentication with an API key whose owning user was deleted now returns `401`, and user deletion revokes the user's API keys across all their tenants.

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @tomitobio: Huawei Cloud provider with CIS 1.0 benchmark ([#11950](https://github.com/prowler-cloud/prowler/pull/11950))
- @paramanandmallik: four AWS privilege-escalation Attack Paths queries ([#11460](https://github.com/prowler-cloud/prowler/pull/11460))
- @Sid-0602: AWS `codecommit` service and `codecommit_repository_no_secrets` check ([#11846](https://github.com/prowler-cloud/prowler/pull/11846))
- @l46983284-cpu, @Rishi943, and @UTKARSH698: AWS `glue_catalog_connection_no_secrets` check ([#11963](https://github.com/prowler-cloud/prowler/pull/11963))
- @Nithin078: AWS `ec2_instance_stopped_older_than_specific_days` ([#12076](https://github.com/prowler-cloud/prowler/pull/12076)) and `sagemaker_endpoint_config_kms_encryption_enabled` ([#12118](https://github.com/prowler-cloud/prowler/pull/12118), co-authored with @l46983284-cpu) checks
- @AlexanderSanin: MITRE ATT&CK enrichment in OCSF detection finding output ([#11492](https://github.com/prowler-cloud/prowler/pull/11492))
- @stefanobaldo: GCP gen2 Cloud Functions IAM policy retrieval is now thread-safe ([#12107](https://github.com/prowler-cloud/prowler/pull/12107))
- @rayair250-droid: GCP SSH and RDP firewall checks now detect exposed ports in any position within multi-port rules ([#12115](https://github.com/prowler-cloud/prowler/pull/12115))
- @jbchief-dev: secret ignore patterns now use Kingfisher-compatible LF line indexing ([#12141](https://github.com/prowler-cloud/prowler/pull/12141))
- @bmbferreira: Helm chart improvements — immutable chart versions on release ([#12056](https://github.com/prowler-cloud/prowler/pull/12056)) and capped Celery worker concurrency ([#12054](https://github.com/prowler-cloud/prowler/pull/12054))

---

## UI

### 🚀 Added

- Lighthouse AI contextual messages with page-aware prompts, focused side-panel details, selected-resource metadata, and retry-safe historical badges [(#12069)](https://github.com/prowler-cloud/prowler/pull/12069)
- Cross-account compliance view in the Multiple Scans tab: an "Across providers" section listing single-provider frameworks aggregatable across every account of the same provider type, with a per-account detail, findings drill-down and combined PDF report (Prowler Cloud only) [(#12086)](https://github.com/prowler-cloud/prowler/pull/12086)
- In Prowler Cloud, authenticated users can send product feedback through a persistent widget backed by a PostHog headless survey, rendered with native Prowler components and editable from the PostHog dashboard [(#12116)](https://github.com/prowler-cloud/prowler/pull/12116)
- Attack Paths query info panel now links every query to its page on Prowler Hub [(#12145)](https://github.com/prowler-cloud/prowler/pull/12145)
- Warning before replacing an organization credential or deleting an organization, listing the providers affected [(#12255)](https://github.com/prowler-cloud/prowler/pull/12255)
- GCP organization onboarding in the provider wizard: add every project of an organization at once, choosing which discovered projects to include (Prowler Cloud only) [(#12255)](https://github.com/prowler-cloud/prowler/pull/12255)
- Sign-up campaign attribution preserves `promo_code` and `utm_*` params across auth redirects, sign-in/sign-up links, Google/GitHub OAuth callbacks, and `POST /users` [(#12269)](https://github.com/prowler-cloud/prowler/pull/12269)

### 🔄 Changed

- `/compliance` now lands on the Multiple Scans tab; links carrying a `scanId` keep opening Single Scan [(#12086)](https://github.com/prowler-cloud/prowler/pull/12086)
- Compliance tab naming: "Per Scan" is now "Single Scan" and "Cross-Provider" is now "Multiple Scans", with matching "Across provider types" and "Across providers" section headers explaining each aggregation axis [(#12086)](https://github.com/prowler-cloud/prowler/pull/12086)
- Lighthouse contextual suggestions now show concise actions while preserving detailed prompts for chat [(#12219)](https://github.com/prowler-cloud/prowler/pull/12219)
- Providers page groups GCP projects under their organization and folders [(#12255)](https://github.com/prowler-cloud/prowler/pull/12255)

### 🐞 Fixed

- Attack Paths now classify cloud-provider finding resources separately from Prowler findings [(#11244)](https://github.com/prowler-cloud/prowler/pull/11244)
- Finding delta colors and integration update button labels restored [(#12160)](https://github.com/prowler-cloud/prowler/pull/12160)
- Long unbroken messages in Lighthouse chat no longer overflow their message bubble [(#12215)](https://github.com/prowler-cloud/prowler/pull/12215)
- SAML ACS URL field remains visible while generating the callback URL from the email domain [(#12236)](https://github.com/prowler-cloud/prowler/pull/12236)

## API

### 🚀 Added

- Attack Paths: four AWS privilege-escalation detection queries from pathfinding.cloud: cross-account role trust (STS-002), wildcard role trust (STS-003), user permissions-boundary removal (IAM-022), and IAM Identity Center permission-set escalation (SSO-001) [(#11460)](https://github.com/prowler-cloud/prowler/pull/11460)

### 🐞 Fixed

- Attack Paths IAM privilege-escalation queries no longer build an all-nodes × all-resource-items cartesian product, fixing runtime errors and timeouts on accounts with many IAM roles, users, or groups [(#12136)](https://github.com/prowler-cloud/prowler/pull/12136)
- `task_args` serialization no longer returns HTTP 500 errors when Celery truncates stored task keyword arguments [(#12165)](https://github.com/prowler-cloud/prowler/pull/12165)
- Attack Paths predefined queries on migrated graphs are now scoped with the provider label, letting the graph database seed from its label index instead of a global label scan and preventing query timeouts on Neptune [(#12167)](https://github.com/prowler-cloud/prowler/pull/12167)
- Authentication with an API key whose owning user was deleted now returns `401` instead of an unhandled `AttributeError`, and user deletion now revokes the user's API keys across all their tenants [(#12210)](https://github.com/prowler-cloud/prowler/pull/12210)
- AWS Security Hub integrations now persist successful connection checks during finding delivery so their connection status and last checked timestamp stay current [(#12212)](https://github.com/prowler-cloud/prowler/pull/12212)
- SAML users without a `userType` attribute and without an existing role in the SAML tenant now receive a least-privilege `read_only` fallback role; a numeric suffix is used when that name belongs to a role with different permissions [(#12223)](https://github.com/prowler-cloud/prowler/pull/12223)
- Social signups create users and authentication records in one database transaction, preventing incomplete accounts when provisioning fails [(#12245)](https://github.com/prowler-cloud/prowler/pull/12245)
- Requesting integrations with a sparse fieldset that leaves out `configuration` no longer returns HTTP 500 errors when the tenant has a Jira integration [(#12261)](https://github.com/prowler-cloud/prowler/pull/12261)

### 🔐 Security

- Provider deletion and connection checks, scan creation, provider secrets, provider groups, and daily schedules now respect role provider-group visibility [(#12216)](https://github.com/prowler-cloud/prowler/pull/12216)

## SDK

### 🚀 Added

- OCSF detection finding output now populates `finding_info.analytic` as the Prowler check rule and `finding_info.attacks` as MITRE ATT&CK technique and tactic objects for findings with MITRE-ATTACK compliance metadata [(#11492)](https://github.com/prowler-cloud/prowler/pull/11492)
- `codecommit` service and `codecommit_repository_no_secrets` check for AWS provider, scanning files tracked at the tip of each repository's default branch for hardcoded secrets [(#11846)](https://github.com/prowler-cloud/prowler/pull/11846)
- Huawei Cloud provider, with CTS, ECS, ELB, EVS, IAM, KMS, OBS, RDS, VPC and WAF services and a CIS 1.0 compliance benchmark [(#11950)](https://github.com/prowler-cloud/prowler/pull/11950)
- `glue_catalog_connection_no_secrets` check to detect secrets in Glue Data Catalog connection properties [(#11963)](https://github.com/prowler-cloud/prowler/pull/11963)
- `ec2_instance_stopped_older_than_specific_days` check for AWS provider, detecting EC2 instances stopped longer than a configurable number of days (default 30) [(#12076)](https://github.com/prowler-cloud/prowler/pull/12076)
- `sagemaker_endpoint_config_kms_encryption_enabled` check verifying SageMaker endpoint configurations use a KMS key for storage volume encryption [(#12118)](https://github.com/prowler-cloud/prowler/pull/12118)
- 11 AWS Nitro Enclaves security checks providing the first CSPM coverage for confidential computing workloads, covering both host environment (`ec2_confidential_workload_host_*`) and KMS attestation policy (`kms_key_enclave_*`), fully passive via boto3 and CloudTrail LookupEvents [(#12283)](https://github.com/prowler-cloud/prowler/pull/12283)

### 🐞 Fixed

- Scan configuration schema no longer exposes SDK/CLI-only providers such as `e2enetworks`; the aggregated schema served by `/scan-configurations/schema` now includes only app providers (`sdk_only = False`) [(#12094)](https://github.com/prowler-cloud/prowler/pull/12094)
- GCP Cloud Functions gen2 IAM policy retrieval now uses a per-request HTTP client, preventing a process crash from concurrent thread-unsafe `httplib2` access when a project has several gen2 functions [(#12107)](https://github.com/prowler-cloud/prowler/pull/12107)
- GCP firewall SSH and RDP checks now detect exposed target ports in any position within multi-port rules [(#12115)](https://github.com/prowler-cloud/prowler/pull/12115)
- Secret ignore patterns now use Kingfisher-compatible LF line indexing for scanned content containing ASCII control characters [(#12141)](https://github.com/prowler-cloud/prowler/pull/12141)
- Jira descriptions with inline code nested in bold or italic Markdown now render as valid ADF [(#12158)](https://github.com/prowler-cloud/prowler/pull/12158)

### 🔐 Security

- HTML reports escape provider-originated finding fields to prevent stored cross-site scripting through malicious cloud resource tags [(#12221)](https://github.com/prowler-cloud/prowler/pull/12221)

## MCP

### 🚀 Added

- Read-only user management tools `prowler_list_users`, `prowler_get_user`, and `prowler_get_current_user` for listing tenant users with their emails and identifying the authenticated user [(#12088)](https://github.com/prowler-cloud/prowler/pull/12088)
- RBAC role tools `prowler_list_roles`, `prowler_get_role`, `prowler_get_user_roles`, and `prowler_set_user_role` for browsing roles and setting the role a user holds [(#12088)](https://github.com/prowler-cloud/prowler/pull/12088)
- Integrations tools to manage Amazon S3, AWS Security Hub and Jira integrations, and to send findings to Jira [(#12138)](https://github.com/prowler-cloud/prowler/pull/12138)

### 🔄 Changed

- README now documents the Cloud-only `prowler_cloud_*` tools available on the hosted Prowler MCP (alerts, findings triage, scan scheduling, scan configurations), and corrects the Prowler Hub check count and the scan orchestration capabilities [(#12266)](https://github.com/prowler-cloud/prowler/pull/12266)

### 🐞 Fixed

- Memory leak in HTTP mode caused by streamable-HTTP sessions being retained for the process lifetime when clients never sent `DELETE /mcp`; the server now runs stateless [(#12235)](https://github.com/prowler-cloud/prowler/pull/12235)
- `prowler_list_integrations` failing with a 500 error on tenants with a Jira integration, caused by the request leaving `configuration` out of the sparse fieldset [(#12259)](https://github.com/prowler-cloud/prowler/pull/12259)
