---
title: Prowler Security Scan
date: 2026-07-16 06:35:47 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.34.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Prowler** automates security and compliance tasks by providing a comprehensive suite of cloud security checks and integrations. It helps organizations identify potential risks, implement automated remediations, and maintain compliance with regulatory standards across various cloud environments.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.34.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

**Prowler** automates security and compliance tasks by providing a comprehensive suite of cloud security checks and integrations. It helps organizations identify potential risks, implement automated remediations, and maintain compliance with regulatory standards across various cloud environments.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🏷️ New product names

The Prowler family has grown, and the names now say what each product is. Same products, clearer names:

**Prowler products:**

- **Prowler Cloud** — the managed cloud security platform operated by the Prowler team.
- **Prowler Private Cloud** (formerly *Prowler Enterprise*) — the self-hosted deployment of Prowler Cloud in your own environment.
- **Prowler Hub** — the free public library of versioned checks, cloud service artifacts, and compliance frameworks.
- **Prowler Lighthouse AI** — The Agentic Cloud Defender in Prowler Cloud and Prowler Private Cloud.
- **Prowler MCP** — the MCP server that connects AI assistants and agents to Prowler, including the IDE plugins.

**Open source projects:**

- **Prowler CLI** — the command-line scanner for all supported providers.
- **Prowler Local Server** (formerly *Prowler App*) — the self-hosted web application and API to run scans, visualize findings, and manage providers.
- **Prowler Local Dashboard** — the web dashboard for visualizing Prowler CLI scan results, distributed with the CLI.
- **Prowler SDK** — the Python library behind Prowler CLI and Prowler Local Server.

See the full family in the [Prowler products documentation](https://docs.prowler.com/getting-started/products).

## 🧭 Cross-Provider Compliance

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

One framework, every cloud, a single answer. The new **Cross-provider** tab in Compliance takes the most recent completed scan of every compatible provider and rolls them up into a single compliance posture per framework, with a per-provider breakdown and a combined executive PDF report. Requirement status follows strict precedence (FAIL > PASS > MANUAL), so one failing provider is enough to flag a requirement across your whole estate.

<img width="2116" height="1008" alt="Screenshot 2026-07-15 at 17 18 25" src="https://github.com/user-attachments/assets/c2fbe4a9-5b23-41e2-a1a8-fd75fbbb081c" />

Three universal frameworks support it today:

- **CIS Controls 8.1** — AWS, Azure, Google Cloud, Microsoft 365, Kubernetes, GitHub, Google Workspace, Okta, Oracle Cloud, Alibaba Cloud, Cloudflare, MongoDB Atlas, OpenStack, and Vercel.
- **CSA CCM 4.0** — AWS, Azure, Google Cloud, Alibaba Cloud, and Oracle Cloud.
- **DORA 2022/2554** — AWS, Azure, Google Cloud, Alibaba Cloud, and Cloudflare.

Filter by provider type, account, or provider group, drill into each framework's requirements, and export the combined PDF.

<img width="2113" height="1014" alt="Screenshot 2026-07-15 at 17 18 32" src="https://github.com/user-attachments/assets/ccf0d474-2c54-43bc-81a4-d651df294889" />

Read more in our [Cross-Provider Compliance documentation](https://docs.prowler.com/user-guide/compliance/tutorials/cross-provider-compliance).

## 🏢 New Provider — E2E Networks

Prowler now scans [**E2E Networks**](https://www.e2enetworks.com/), with **27 checks** spanning compute nodes, networking, security groups, load balancers, block and file storage, and managed databases. Thanks to @deepak7093 for their 1st provider in Prowler!

Available in the Prowler CLI:

```bash
export E2E_NETWORKS_API_KEY="your-api-key"
export E2E_NETWORKS_AUTH_TOKEN="your-auth-token"
export E2E_NETWORKS_PROJECT_ID="your-project-id"
prowler e2enetworks
```

Read more in our [E2E Networks documentation](https://docs.prowler.com/user-guide/providers/e2enetworks/getting-started-e2enetworks).

Explore all E2E Networks checks at [Prowler Hub](https://hub.prowler.com/check?provider=e2enetworks).

## 🔐 Security

User role relationship updates in the API are now limited to the active tenant, preserving the role assignments the same user holds in other tenants.

## 🔍 Checks

### AWS

- `ec2_ami_account_block_public_access` — verifies AMI block public access is enabled at the account level in each Region, so AMIs cannot be shared publicly. Thanks to @goutham-hari!
- `datapipeline_pipeline_no_secrets_in_definition` — scans Data Pipeline object fields, parameter objects, and parameter values for hardcoded secrets with Kingfisher. Thanks to @YinkaMetrics!
- `elbv2_listener_pqc_tls_enabled` — verifies ELBv2 HTTPS/TLS listeners use post-quantum TLS security policies with TLS 1.2 or higher, helping reduce harvest-now-decrypt-later exposure.
- `amplify_app_no_secrets_in_environment` — scans Amplify app and branch environment variables and build settings (buildSpec) for hardcoded secrets with Kingfisher. Thanks to @Deep070203!

Read more in our [AWS documentation](https://docs.prowler.com/user-guide/providers/aws/getting-started-aws).

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

### Azure

- `app_function_ensure_http_is_redirected_to_https` — verifies that Function Apps enforce HTTPS-only traffic. Thanks to @amandalal007!

Read more in our [Azure documentation](https://docs.prowler.com/user-guide/providers/azure/getting-started-azure).

Explore all Azure checks at [Prowler Hub](https://hub.prowler.com/check?provider=azure).

### Kubernetes

- `core_minimize_hostpath_volume_mounts` — detects Pods that use `hostPath` volumes. Thanks to @0xTaoZ!
- `core_readonly_root_filesystem_enabled` — verifies that every container in each Pod explicitly sets `readOnlyRootFilesystem: true` in its security context. Thanks to @Weedle02!

Read more in our [Kubernetes documentation](https://docs.prowler.com/user-guide/providers/kubernetes/getting-started-k8s).

Explore all Kubernetes checks at [Prowler Hub](https://hub.prowler.com/check?provider=kubernetes).

### STACKIT

- `iaas_server_public_ip_attached` — flags IaaS servers that have a public IP address directly attached to a network interface. Thanks to @johannes-engler-mw!

Read more in our [STACKIT documentation](https://docs.prowler.com/user-guide/providers/stackit/getting-started-stackit).

Explore all STACKIT checks at [Prowler Hub](https://hub.prowler.com/check?provider=stackit).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @deepak7093 — New E2E Networks provider: 27 checks across compute nodes, networking, security groups, load balancers, block/file storage, and managed databases [(#11654)](https://github.com/prowler-cloud/prowler/pull/11654)
- @goutham-hari — AWS `ec2_ami_account_block_public_access` check [(#11828)](https://github.com/prowler-cloud/prowler/pull/11828)
- @YinkaMetrics — AWS `datapipeline_pipeline_no_secrets_in_definition` check [(#11821)](https://github.com/prowler-cloud/prowler/pull/11821)
- @amandalal007 — Azure `app_function_ensure_http_is_redirected_to_https` check [(#11929)](https://github.com/prowler-cloud/prowler/pull/11929)
- @0xTaoZ — Kubernetes `core_minimize_hostpath_volume_mounts` check [(#11837)](https://github.com/prowler-cloud/prowler/pull/11837)
- @Weedle02 — Kubernetes `core_readonly_root_filesystem_enabled` check [(#11835)](https://github.com/prowler-cloud/prowler/pull/11835)
- @johannes-engler-mw — STACKIT `iaas_server_public_ip_attached` check [(#11549)](https://github.com/prowler-cloud/prowler/pull/11549)
- @janderik — Trailing newlines added to compliance, region, and fixture data files for POSIX compliance [(#11765)](https://github.com/prowler-cloud/prowler/pull/11765)
- @Deep070203 — AWS `amplify_app_no_secrets_in_environment` check [(#11825)](https://github.com/prowler-cloud/prowler/pull/11825)

---

## UI

### 🚀 Added

- Dynamically registered providers are now listed, filtered, and rendered across the UI, using a generic icon and humanized label when no bespoke assets exist, a "Custom" badge, and read-only handling for non-configurable providers [(#11869)](https://github.com/prowler-cloud/prowler/pull/11869)
- Prowler Local Server branding and contextual Prowler Cloud upgrade prompts across navigation, scans, providers, compliance, findings, alerts, and Lighthouse AI [(#11982)](https://github.com/prowler-cloud/prowler/pull/11982)

### 🔄 Changed

- UI components migrated from HeroUI to shared shadcn primitives [(#11532)](https://github.com/prowler-cloud/prowler/pull/11532)
- UI integration enable flags renamed to past tense — `UI_SENTRY_ENABLE` → `UI_SENTRY_ENABLED`, `UI_GOOGLE_TAG_MANAGER_ENABLE` → `UI_GOOGLE_TAG_MANAGER_ENABLED`, `UI_POSTHOG_ENABLE` → `UI_POSTHOG_ENABLED`; deployments that set the former names must update them [(#11917)](https://github.com/prowler-cloud/prowler/pull/11917)

### 🐞 Fixed

- Metronome billing failing to start when PostHog was enabled, caused by a stale reference to the renamed UI_POSTHOG_ENABLED flag [(#11938)](https://github.com/prowler-cloud/prowler/pull/11938)
- Lighthouse AI overview entry now starts a new remediation conversation, and returning to Overview restores app navigation mode [(#11955)](https://github.com/prowler-cloud/prowler/pull/11955)

## API

### 🐞 Fixed

- `rls_transaction` now falls back directly to the primary DB for connection-level mid-query read replica failures via `execute_wrapper`, reducing non-streaming read crashes during replica recovery [(#10379)](https://github.com/prowler-cloud/prowler/pull/10379)
- RBAC permission gates now combine permissions from every role assigned to a user in the active tenant [(#11979)](https://github.com/prowler-cloud/prowler/pull/11979)
- `attack-paths-cleanup-stale-scans` now retries worker pings and checks recent scan activity before failing scans and removing temporary databases [(#11986)](https://github.com/prowler-cloud/prowler/pull/11986)

### 🔐 Security

- User role relationship updates are limited to the active tenant to preserve role assignments in other tenants [(#11903)](https://github.com/prowler-cloud/prowler/pull/11903)
- Container image removes the unused Debian `libxml2` runtime package and scopes the `CVE-2026-13221` Trivy exception to unaffected Perl 5.36 packages [(#11991)](https://github.com/prowler-cloud/prowler/pull/11991)

## SDK

### 🚀 Added

- `elbv2_listener_pqc_tls_enabled` check for AWS provider, verifying that ELBv2 listeners use post-quantum TLS policies [(#11254)](https://github.com/prowler-cloud/prowler/pull/11254)
- `iaas_server_public_ip_attached` check for STACKIT provider, flagging IaaS servers that have a public IP address directly attached to a network interface [(#11549)](https://github.com/prowler-cloud/prowler/pull/11549)
- Changelog fragment workflow for SDK, API, UI, and MCP Server releases, including PR attribution, fragment validation, release compilation, and preserved section ordering [(#11572)](https://github.com/prowler-cloud/prowler/pull/11572)
- E2E Networks provider with 27 checks across compute nodes, networking, security groups, load balancers, block/file storage, and managed databases [(#11654)](https://github.com/prowler-cloud/prowler/pull/11654)
- `datapipeline_pipeline_no_secrets_in_definition` check for AWS provider, scanning Data Pipeline object fields, parameter objects, and parameter values for hardcoded secrets with Kingfisher [(#11821)](https://github.com/prowler-cloud/prowler/pull/11821)
- `amplify_app_no_secrets_in_environment` check for AWS provider, scanning Amplify app and branch environment variables and build settings for hardcoded secrets [(#11825)](https://github.com/prowler-cloud/prowler/pull/11825)
- `ec2_ami_account_block_public_access` check for AWS provider, verifying AMI block public access is enabled at the account level in each Region so AMIs cannot be shared publicly [(#11828)](https://github.com/prowler-cloud/prowler/pull/11828)
- `core_readonly_root_filesystem_enabled` check for Kubernetes provider, verifying that every container in each Pod explicitly sets `readOnlyRootFilesystem: true` in its security context [(#11835)](https://github.com/prowler-cloud/prowler/pull/11835)
- `core_minimize_hostpath_volume_mounts` check for Kubernetes provider, detecting Pods that use `hostPath` volumes [(#11837)](https://github.com/prowler-cloud/prowler/pull/11837)
- `app_function_ensure_http_is_redirected_to_https` check for Azure provider, verifying that Function Apps enforce HTTPS-only traffic [(#11929)](https://github.com/prowler-cloud/prowler/pull/11929)

### 🔄 Changed

- Missing trailing newlines to compliance, region, and fixture data files for POSIX compliance [(#11765)](https://github.com/prowler-cloud/prowler/pull/11765)
- Oracle Cloud API key authentication now uses an internal bootstrap region when no explicit scan region filter is provided [(#11853)](https://github.com/prowler-cloud/prowler/pull/11853)
- Redesign the local dashboard sidebar and informational pages [(#11972)](https://github.com/prowler-cloud/prowler/pull/11972)
