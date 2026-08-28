---
title: Prowler Security Scan
date: 2026-08-28 17:52:18 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.40.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Prowler** automates the discovery and assessment of security risks in cloud environments by running predefined checks against various AWS services, helping organizations identify potential vulnerabilities and ensure compliance with industry standards.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.40.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

**Prowler** automates the discovery and assessment of security risks in cloud environments by running predefined checks against various AWS services, helping organizations identify potential vulnerabilities and ensure compliance with industry standards.

## What's Changed

## ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com/

## 💬 Slack Integration — Alert Channel Destinations

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Alerts can now reach Slack. Connect a Slack workspace from the Integrations page, authorize one or several destination channels (the connection check confirms each channel with a one-time message and names any channel Slack refuses), and pick those channels in the alert modal's "Destination channels" selector, next to the "Recipients" selector for email. The alerts list summarizes both in a single "Destinations" column, showing a rule's email recipients and Slack channels at a glance. Disconnecting the workspace and recovering from revoked credentials are handled from the same page.

![Connected Slack workspace on the Integrations page](https://raw.githubusercontent.com/prowler-cloud/prowler/master/docs/images/prowler-app/slack/connected-workspace.png)

![Alert rule with Slack channel destinations](https://raw.githubusercontent.com/prowler-cloud/prowler/master/docs/images/prowler-app/alerts/create-alert-modal.png)

Read more in the [Slack integration documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-slack-integration) and the [Alerts documentation](https://docs.prowler.com/user-guide/tutorials/prowler-alerts).

## 🤖 Lighthouse AI — Answer Feedback

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Every Lighthouse AI answer can now be rated with a 👍 or 👎, with an optional field to describe what worked or what did not. Feedback is collected per answer, directly in the chat, and tells the team where Lighthouse should improve next.

Read more in the [Lighthouse AI documentation](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse).

## 📥 Providers — Imported Findings Indicator

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Providers whose findings were imported with the Prowler CLI now show an "Imported provider" indicator next to their connection status in the providers table. In accounts that mix connected providers with Import Findings uploads, the table now tells them apart at a glance.

<img width="1352" height="86" alt="Provider row with the Imported provider indicator and its tooltip" src="https://github.com/user-attachments/assets/68b130a1-fceb-4352-b6cf-aaa6c9870b1a" />

Read more in the [Import Findings documentation](https://docs.prowler.com/user-guide/tutorials/prowler-import-findings).

## 📚 Compliance — NCSC Cyber Essentials 3.3

Cyber Essentials is the UK National Cyber Security Centre (NCSC) scheme certifying the baseline technical controls an organization must implement, and cloud services are explicitly in scope and cannot be excluded from an assessment. Prowler now includes NCSC Cyber Essentials: Requirements for IT Infrastructure v3.3 (April 2026) as a universal framework, with its 28 requirements organized in the five control themes: Firewalls, Secure Configuration, Security Update Management, User Access Control, and Malware Protection.

Sixteen requirements map to Azure checks covering the controls the applicant organization owns under the shared responsibility model. The remaining twelve apply to end-user devices, on-premises network appliances, or organizational process, which cloud control-plane evidence cannot observe, so they are reported as Manual.

Contributed by @m-khan-97. Thank you!

Read more in the [Compliance documentation](https://docs.prowler.com/user-guide/compliance/tutorials/compliance).

## 🔍 Checks

Fifteen new checks land across seven providers in this release.

### AWS

- `ecr_repository_image_no_secrets` scans the latest image of each ECR repository, both its configuration and its filesystem layers, for hardcoded secrets. Thanks to @esquaredsec!
- Four new Amazon Bedrock checks, thanks to @tamg-aws!
  - `bedrock_guardrail_contextual_grounding_filter_enabled` verifies that guardrails enable both contextual grounding filters, blocking responses that are not supported by the retrieved source or do not answer the question asked.
  - `bedrock_custom_model_encrypted_with_cmk` verifies that custom models are encrypted at rest with a customer-managed KMS key instead of an AWS-owned key the organization cannot audit, rotate, or revoke.
  - `bedrock_knowledge_base_encrypted_with_cmk` verifies that each knowledge-base data source encrypts with a customer-managed KMS key the transient storage used while documents are chunked and embedded.
  - `bedrock_agent_role_not_shared_across_agents` verifies that every agent has a dedicated execution role, so no agent inherits another's permissions.
- `rolesanywhere_profile_restricts_session_permissions` flags IAM Roles Anywhere profiles that reference an administrative role without scoping down the vended session with a session policy or managed policies.

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

### GCP

- `iam_workload_identity_pool_provider_attribute_condition` flags Workload Identity Federation providers that trust a multi-tenant issuer without an attribute condition restricting which external identities can impersonate federated principals.

Explore all GCP checks at [Prowler Hub](https://hub.prowler.com/check?provider=gcp).

### GitHub

Three new checks harden GitHub Actions defaults, all contributed by @Edneam. Thank you!

- `organization_default_workflow_permissions_read_only` and `repository_default_workflow_permissions_read_only` verify that workflows get a read-only default `GITHUB_TOKEN` at the organization and repository level.
- `organization_actions_pull_request_approval_disabled` verifies that organizations prevent GitHub Actions from creating and approving pull requests.

Explore all GitHub checks at [Prowler Hub](https://hub.prowler.com/check?provider=github).

### Microsoft 365

- `defender_domain_dmarc_records_published` checks that every Exchange Online domain publishes a DMARC record with an enforcing policy (`p=quarantine` or `p=reject`). Thanks to @Rishi943!

Explore all Microsoft 365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

### Alibaba Cloud

- `oss_bucket_versioning_enabled` verifies that OSS buckets keep versioning enabled, allowing recovery from accidental or malicious object overwrite and deletion. Thanks to @abidedavana!
- `oss_bucket_server_side_encryption_enabled` verifies that OSS buckets define a default server-side encryption rule, either AES256 or KMS. Thanks to @alexchen-sys!

OSS bucket logging, versioning, default encryption, and ACL configurations are also now read correctly from the Alibaba Cloud SDK, so the checks reading them no longer report every bucket as unconfigured.

Explore all Alibaba Cloud checks at [Prowler Hub](https://hub.prowler.com/check?provider=alibabacloud).

### Huawei Cloud

- `vpc_security_group_open_egress` flags VPC security groups that allow open egress to the internet. Thanks to @tomitobio!

Explore all Huawei Cloud checks at [Prowler Hub](https://hub.prowler.com/check?provider=huaweicloud).

### STACKIT

- `ske_cluster_no_public_endpoint` flags SKE clusters whose Kubernetes API endpoint is reachable from the whole internet, because the ACL extension is disabled or its allowed CIDR list contains `0.0.0.0/0` or `::/0`. Thanks to @johannes-engler-mw!

Explore all STACKIT checks at [Prowler Hub](https://hub.prowler.com/check?provider=stackit).


## 🔐 Security Updates

- The API and SDK container images upgrade OpenSSL to 3.5.7-1~deb13u2, patching ten high CVEs; the UI image upgrades `libcrypto3` and `libssl3` to 3.5.8-r0, patching seven high CVEs; the MCP Server image patches CVE-2026-14456 (OpenSSL), CVE-2026-11822, and CVE-2026-11824 (SQLite).
- `sqlparse` upgraded to 0.6.0 in the API, patching CVE-2026-54284, CVE-2026-59893, and CVE-2026-71491.

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @Edneam: GitHub `organization_default_workflow_permissions_read_only` ([#12122](https://github.com/prowler-cloud/prowler/pull/12122)), `repository_default_workflow_permissions_read_only` ([#12143](https://github.com/prowler-cloud/prowler/pull/12143)), and `organization_actions_pull_request_approval_disabled` ([#12394](https://github.com/prowler-cloud/prowler/pull/12394)) checks
- @tamg-aws: four AWS Bedrock checks covering guardrail grounding, CMK encryption, and agent role isolation ([#12459](https://github.com/prowler-cloud/prowler/pull/12459))
- @esquaredsec: AWS `ecr_repository_image_no_secrets` check ([#12123](https://github.com/prowler-cloud/prowler/pull/12123))
- @Rishi943: Microsoft 365 `defender_domain_dmarc_records_published` check ([#11936](https://github.com/prowler-cloud/prowler/pull/11936))
- @abidedavana: Alibaba Cloud `oss_bucket_versioning_enabled` check ([#11913](https://github.com/prowler-cloud/prowler/pull/11913))
- @alexchen-sys: Alibaba Cloud `oss_bucket_server_side_encryption_enabled` check ([#11981](https://github.com/prowler-cloud/prowler/pull/11981))
- @tomitobio: Huawei Cloud `vpc_security_group_open_egress` check ([#12209](https://github.com/prowler-cloud/prowler/pull/12209))
- @johannes-engler-mw: STACKIT `ske_cluster_no_public_endpoint` check ([#11943](https://github.com/prowler-cloud/prowler/pull/11943))
- @gabrielfrdev: cluster name in Kubernetes compliance report outputs ([#12506](https://github.com/prowler-cloud/prowler/pull/12506))
- @jfgmesquita: AWS FSBP compliance mapping fix for IAM.9 and EKS.1 ([#12372](https://github.com/prowler-cloud/prowler/pull/12372))
- @hackertwinten: `ec2_securitygroup_not_used` no longer flags security groups held only by scaled-down AWS Batch compute environments ([#12458](https://github.com/prowler-cloud/prowler/pull/12458))
- @0xTaoZ: ECS task-definition checks no longer report PASS when `DescribeTaskDefinition` fails, shipped early in v5.39.1 ([#12217](https://github.com/prowler-cloud/prowler/pull/12217))
- @ye11oc4t: `ses_identity_not_publicly_accessible` now evaluates every identity authorization policy, shipped early in v5.39.1 ([#12464](https://github.com/prowler-cloud/prowler/pull/12464))
- @Zuhef: IaC provider raises typed exceptions instead of `sys.exit` when cloning the scanned repository or running Trivy fails ([#12227](https://github.com/prowler-cloud/prowler/pull/12227)), Kubernetes kubelet checks no longer disappear from the scan when a `kubelet-config` ConfigMap is broken ([#12225](https://github.com/prowler-cloud/prowler/pull/12225)), and the CLI `--slack` summary is sent for scans with no findings instead of failing with `ZeroDivisionError` ([#12229](https://github.com/prowler-cloud/prowler/pull/12229))
- @m-khan-97: NCSC Cyber Essentials 3.3 compliance framework with Azure provider coverage across the five Cyber Essentials themes ([#11588](https://github.com/prowler-cloud/prowler/pull/11588))

---

## UI

### 🚀 Added

- NCSC Cyber Essentials 3.3 compliance support with its dedicated mapper, details panel, and icon [(#11588)](https://github.com/prowler-cloud/prowler/pull/11588)
- Thumbs-up and thumbs-down feedback form for Lighthouse assistant answers with optional details [(#12419)](https://github.com/prowler-cloud/prowler/pull/12419)
- Display the default one-scan free trial and trial expiration in the existing sidebar banner [(#12420)](https://github.com/prowler-cloud/prowler/pull/12420)
- Slack integration: connect a Slack workspace from the Integrations page (Prowler Cloud only) [(#12435)](https://github.com/prowler-cloud/prowler/pull/12435)
- Prowler Cloud indicator for providers created via Import Findings alongside every connection status [(#12447)](https://github.com/prowler-cloud/prowler/pull/12447)
- Slack integration: authorize several destination channels at once — the connection check confirms each authorized channel with a one-time message and names the one Slack refuses [(#12491)](https://github.com/prowler-cloud/prowler/pull/12491)
- Slack channels confirmed on the Slack integration as alert rule destinations, selectable in the alert modal alongside email recipients [(#12492)](https://github.com/prowler-cloud/prowler/pull/12492)
- Cancelled-subscription variant in the sidebar trial banner (Prowler Cloud only) [(#12538)](https://github.com/prowler-cloud/prowler/pull/12538)

### 🔄 Changed

- Alerts list Recipients column becomes Destinations, summarizing a rule's email recipients and Slack channels at a glance [(#12493)](https://github.com/prowler-cloud/prowler/pull/12493)

### 🐞 Fixed

- Scan auto-refresh no longer overlaps slow client refreshes and now signals when scan execution settles [(#12455)](https://github.com/prowler-cloud/prowler/pull/12455)
- The compliance "Across providers" section builds its framework list from the API catalog instead of a hardcoded set of ids, so a universal framework registered by an installed package renders like a shipped one [(#12536)](https://github.com/prowler-cloud/prowler/pull/12536)
- The compliance "Across providers" section reports a failed catalog request instead of rendering the "no data yet" empty state [(#12536)](https://github.com/prowler-cloud/prowler/pull/12536)
- Returning from Slack after approving the install now reliably lands on the Slack integration page instead of getting stuck on the callback screen (Prowler Cloud only) [(#12572)](https://github.com/prowler-cloud/prowler/pull/12572)

### 🔐 Security

- `libcrypto3` and `libssl3` upgraded to 3.5.8-r0 in the UI container image, patching seven high OpenSSL CVEs [(#12549)](https://github.com/prowler-cloud/prowler/pull/12549)

## API

### 🐞 Fixed

- `FINDINGS_TABLE_PARTITION_MAX_AGE_MONTHS` is now applied in months instead of days, and negative values are rejected [(#12580)](https://github.com/prowler-cloud/prowler/pull/12580)

### 🔐 Security

- `sqlparse` upgraded to 0.6.0, patching CVE-2026-54284, CVE-2026-59893, and CVE-2026-71491 [(#12509)](https://github.com/prowler-cloud/prowler/pull/12509)
- `openssl`, `libssl3t64` and `openssl-provider-legacy` upgraded to 3.5.7-1~deb13u2 in the API container image, patching ten high OpenSSL CVEs [(#12549)](https://github.com/prowler-cloud/prowler/pull/12549)

## SDK

### 🚀 Added

- NCSC Cyber Essentials 3.3 compliance framework with Azure provider coverage across the five Cyber Essentials themes [(#11588)](https://github.com/prowler-cloud/prowler/pull/11588)
- `oss_bucket_versioning_enabled` check for Alibaba Cloud provider, verifying that OSS buckets have versioning enabled to allow recovery from accidental or malicious object overwrite and deletion [(#11913)](https://github.com/prowler-cloud/prowler/pull/11913)
- `defender_domain_dmarc_records_published` checks that every Exchange Online domain publishes a DMARC record with an enforcing policy (`p=quarantine` or `p=reject`) [(#11936)](https://github.com/prowler-cloud/prowler/pull/11936)
- `ske_cluster_no_public_endpoint` check for STACKIT provider, flagging SKE clusters whose Kubernetes API endpoint is reachable from the whole internet because the ACL extension is disabled or its allowed CIDR list contains `0.0.0.0/0` or `::/0` [(#11943)](https://github.com/prowler-cloud/prowler/pull/11943)
- `oss_bucket_server_side_encryption_enabled` check for Alibaba Cloud provider, verifying that OSS buckets have a default server-side encryption rule (AES256 or KMS) [(#11981)](https://github.com/prowler-cloud/prowler/pull/11981)
- `organization_default_workflow_permissions_read_only` check for GitHub provider, verifying that organizations grant GitHub Actions workflows a read-only default `GITHUB_TOKEN` [(#12122)](https://github.com/prowler-cloud/prowler/pull/12122)
- `ecr_repository_image_no_secrets` check for AWS provider, scanning the latest ECR repository image's configuration and filesystem layers for hardcoded secrets [(#12123)](https://github.com/prowler-cloud/prowler/pull/12123)
- `repository_default_workflow_permissions_read_only` check for GitHub provider, verifying that repositories grant GitHub Actions workflows a read-only default `GITHUB_TOKEN` [(#12143)](https://github.com/prowler-cloud/prowler/pull/12143)
- `vpc_security_group_open_egress` check for Huawei Cloud provider: VPC security groups do not allow open egress to the internet [(#12209)](https://github.com/prowler-cloud/prowler/pull/12209)
- `organization_actions_pull_request_approval_disabled` check for GitHub provider, verifying that organizations prevent GitHub Actions from creating and approving pull requests [(#12394)](https://github.com/prowler-cloud/prowler/pull/12394)
- Add the `iam_workload_identity_pool_provider_attribute_condition` check to flag GCP Workload Identity Federation providers that trust a multi-tenant issuer without an attribute condition restricting which external identities can impersonate federated principals [(#12416)](https://github.com/prowler-cloud/prowler/pull/12416)
- Add the `rolesanywhere_profile_restricts_session_permissions` check to flag AWS IAM Roles Anywhere profiles that reference an administrative role without scoping down the vended session with a session policy or managed policies [(#12416)](https://github.com/prowler-cloud/prowler/pull/12416)
- `bedrock_guardrail_contextual_grounding_filter_enabled`, `bedrock_custom_model_encrypted_with_cmk`, `bedrock_knowledge_base_encrypted_with_cmk` and `bedrock_agent_role_not_shared_across_agents` are four new AWS Bedrock checks covering guardrail contextual grounding, custom model encryption, knowledge-base data-source encryption, and non-shared agent execution roles. [(#12459)](https://github.com/prowler-cloud/prowler/pull/12459)
- `Cluster` column in Kubernetes CIS, ISO27001, Prowler ThreatScore, and universal compliance outputs, populated with the resolved cluster name so multi-cluster scans can be told apart in the output [(#12506)](https://github.com/prowler-cloud/prowler/pull/12506)

### 🐞 Fixed

- Kubernetes `kubelet` checks no longer disappear from the scan with `TypeError: 'NoneType' object is not iterable` when a `kubelet-config` ConfigMap is broken: one with malformed YAML is logged and skipped while the valid ones are still evaluated, one without kubelet data is evaluated with an empty configuration instead of crashing the checks, and the `apiserver`, `controllermanager`, `etcd` and `scheduler` pod gatherers now always return a list [(#12225)](https://github.com/prowler-cloud/prowler/pull/12225)
- IaC provider now raises typed `IacBaseException` errors (repository clone, Trivy missing, scan and output processing failures) instead of calling `sys.exit(1)`; the CLI still stops with the logged message, and API scans fail as regular task errors instead of a `SystemExit` escaping the worker [(#12227)](https://github.com/prowler-cloud/prowler/pull/12227)
- CLI Slack integration (`--slack`) no longer fails when a scan produces no findings: the pass and fail percentages are guarded against a `findings_count` of 0, which previously raised `ZeroDivisionError` and sent `blocks=None` to Slack instead of the summary [(#12229)](https://github.com/prowler-cloud/prowler/pull/12229)
- AWS FSBP compliance mapping for `IAM.9` and `EKS.1` referenced missing/renamed checks; both now point to their real, existing check IDs [(#12372)](https://github.com/prowler-cloud/prowler/pull/12372)
- `ec2_securitygroup_not_used` no longer reports a false positive for security groups attached only to an AWS Batch compute environment, which holds them in configuration without creating a network interface while scaled down to zero instances [(#12458)](https://github.com/prowler-cloud/prowler/pull/12458)
- Bedrock Agent ARNs are now built from the audited partition instead of a hardcoded `arn:aws:`, so findings in GovCloud and China carry a resolvable ARN and `--resource-arn` scoping matches agents in those partitions. [(#12459)](https://github.com/prowler-cloud/prowler/pull/12459)
- `push-to-cloud` now validates Private Cloud TLS certificates with the operating system trust store without changing provider HTTP clients [(#12485)](https://github.com/prowler-cloud/prowler/pull/12485)
- `prowler.compliance.universal` entry point directories are resolved through a single shared helper and deduplicated by resolved path, so a directory reached through two entry points is parsed once and a package that fails to import no longer hides the rest [(#12536)](https://github.com/prowler-cloud/prowler/pull/12536)
- OSS bucket logging, versioning, default encryption and ACL configurations are now read correctly from the Alibaba Cloud SDK, so `oss_bucket_logging_enabled`, `oss_bucket_versioning_enabled`, `oss_bucket_server_side_encryption_enabled` and `oss_bucket_not_publicly_accessible` no longer report every bucket as unconfigured [(#12546)](https://github.com/prowler-cloud/prowler/pull/12546)

### 🔐 Security

- `openssl`, `libssl3t64` and `openssl-provider-legacy` upgraded to 3.5.7-1~deb13u2 in the SDK container image, patching ten high OpenSSL CVEs [(#12549)](https://github.com/prowler-cloud/prowler/pull/12549)

## MCP

### 🚀 Added

- Failures shared by every tool - a rejected credential, a missing permission, a rate limit, an outage, an unreachable API, a bad argument - are now explained with a message that says what went wrong and what to do about it [(#12531)](https://github.com/prowler-cloud/prowler/pull/12531)

### 🐞 Fixed

- `prowler_docs_search` returns results again: it calls the search endpoint docs.prowler.com moved to, since the one it used no longer exists, and each result now names the page's title, the section it matched and a URL anchored at that section [(#12578)](https://github.com/prowler-cloud/prowler/pull/12578)

### 🔐 Security

- Stop relaying upstream response bodies to agents: a failed request now reaches the caller as a sentence this server wrote, with the full body kept to the logs, so a gateway error page or a debug traceback can no longer be replayed into a model's context [(#12531)](https://github.com/prowler-cloud/prowler/pull/12531)
- `sqlite-libs` upgraded to 3.53.4-r0 in the container image, patching CVE-2026-11822 and CVE-2026-11824 [(#12537)](https://github.com/prowler-cloud/prowler/pull/12537)
- `libcrypto3` and `libssl3` upgraded to 3.5.8-r0 in the container image, patching CVE-2026-14456 [(#12547)](https://github.com/prowler-cloud/prowler/pull/12547)
