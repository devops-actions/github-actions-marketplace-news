---
title: Prowler Security Scan
date: 2026-07-24 19:05:19 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.36.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action described in the README facilitates automated security assessments within cloud environments using Prowler, an Open-Source Cloud Security Platform. It simplifies the process of conducting real-time monitoring and customizable vulnerability scans, ensuring organizations can maintain a secure and compliant state across multiple cloud platforms.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.36.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

The GitHub Action described in the README facilitates automated security assessments within cloud environments using Prowler, an Open-Source Cloud Security Platform. It simplifies the process of conducting real-time monitoring and customizable vulnerability scans, ensuring organizations can maintain a secure and compliant state across multiple cloud platforms.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🎫 Grouped Jira workflows

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Selected Findings, Finding Groups, and mixed selections can now be sent to Jira. When you select multiple findings, choose between one grouped issue or separate issues. Generated issues keep their Prowler context with deep links and filter details, while the UI provides clear dispatch and failure feedback.

<img width="4596" height="2614" alt="image" src="https://github.com/user-attachments/assets/00220926-aae1-480d-96a0-437e0d91763f" />

Read more in our [Jira integration documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-jira-integration).

## 🕸️ Cleaner Attack Paths results

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Prowler Cloud now records which built-in Attack Paths queries returned data at the end of each scan. The query selector hides confirmed-empty queries for the selected scan, so you can focus on paths that exist without opening blank graph views. Errored, unknown, and parameterized queries remain available when they still require investigation or input.

All Attack Paths queries are now published on [Prowler Hub](https://hub.prowler.com), where you can browse the full catalog.

<img width="4406" height="2260" alt="image" src="https://github.com/user-attachments/assets/a4f3de04-6499-4f5d-9398-8f8469220065" />

Read more in our [Attack Paths documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-attack-paths).

## 🧑‍🏫 New Tutorials: Connect Your AI Agents to Prowler Cloud

> [!NOTE]
> For this feature you need a Prowler Cloud API key so this is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

New tutorials walk you through connecting your own AI agents to Prowler Cloud, so they can query your security posture and act on it programmatically.

Read more in our [AI agents documentation](https://docs.prowler.com/user-guide/ai-agents/index).

## ☁️ Simpler OCI provider setup

OCI provider credentials no longer require a region. Existing clients can still send the legacy `region` field for compatibility, but the API ignores it before storing credentials or starting a scan. This removes an unnecessary step from OCI onboarding.

Read more in our [OCI documentation](https://docs.prowler.com/user-guide/providers/oci/getting-started-oci).

## 🔍 Checks

### AWS

- `sagemaker_notebook_instance_no_secrets` scans the `OnCreate` and `OnStart` lifecycle scripts of SageMaker notebook instances for hardcoded API keys, passwords, tokens, connection strings, and other secrets. Thanks to @kiranrajsg!

Read more in our [AWS documentation](https://docs.prowler.com/user-guide/providers/aws/getting-started-aws).

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

## 🔐 Security

- Integration responses and operations now respect provider visibility, preventing hidden-provider disclosure and blocking unauthorized attachment, connection checks, Jira dispatches, edits, and deletion.
- Next.js was updated from 16.2.9 to 16.2.11, patching four high-severity and five medium-severity vulnerabilities.
- The unused `npm` CLI was removed from the UI container image, eliminating the bundled `node-tar` CVE-2026-59873 and reducing exposure to future bundled npm vulnerabilities.
- Vitest and its browser packages were updated from 4.1.8 to 4.1.10, resolving the critical `@vitest/browser` file-access permission bypass. These are development dependencies and have no runtime impact.
- Kubernetes kubeconfig validation now blocks `legacy auth-provider.config.cmd-path` command authentication, closing a command-execution bypass.
- `next-auth` was updated from 5.0.0-beta.30 to 5.0.0-beta.32, patching two critical Auth.js advisories: existence-based authorization checks that could fail open when a provider is misconfigured, and a homoglyph `@` bypass in email address normalization. The bump also pulls in the patched `@auth/core` 0.41.3 transitively.

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @kiranrajsg: AWS `sagemaker_notebook_instance_no_secrets` check (#11843)
- @owenchenxy: Alibaba Cloud SSH and RDP security group checks now handle capitalized `Policy="Accept"` values correctly (#12049)
- @rsaladra: S3 bucket name validation no longer raises an invalid escape sequence `SyntaxWarning` at startup (#12041)
- @SujayKulkarni-2211 - Updated the AWS check count in the README (#12011)

---

## UI


### 🚀 Added

- Finding Groups and grouped selections can be sent to Jira in Cloud with deep links, filter chip display, and Jira feedback toasts [(#12001)](https://github.com/prowler-cloud/prowler/pull/12001)
- In Prowler Cloud, the Attack Paths query selector now lists only queries that returned data for the selected scan, hiding empty ones [(#12010)](https://github.com/prowler-cloud/prowler/pull/12010)
- Overview banner linking to the AI agents documentation, shown next to the Lighthouse AI banner in Cloud and full width on self-hosted deployments [(#12074)](https://github.com/prowler-cloud/prowler/pull/12074)

### 🐞 Fixed

- Findings Severity Over Time chart Y-axis labels no longer overflow for large findings counts [(#11545)](https://github.com/prowler-cloud/prowler/pull/11545)
- UI Sentry alerts now suppress non-actionable warnings and expected API/control-flow noise while preserving actionable runtime failures [(#11665)](https://github.com/prowler-cloud/prowler/pull/11665)
- OCI provider E2E tests no longer require or submit a region when adding or updating credentials [(#11741)](https://github.com/prowler-cloud/prowler/pull/11741)
- Billing navigation is hidden when Cloud billing is disabled, including Enterprise deployments [(#12047)](https://github.com/prowler-cloud/prowler/pull/12047)
- AWS Organizations setup modal now shows the "Enter a valid Organizational Unit or Root ID" hint in the error color, clarifying why the deployment button is disabled [(#12063)](https://github.com/prowler-cloud/prowler/pull/12063)
- Sidebar logo top spacing in the main app sidebar [(#12066)](https://github.com/prowler-cloud/prowler/pull/12066)
- Contextual Cloud upgrade modal content remains stable throughout the closing animation [(#12067)](https://github.com/prowler-cloud/prowler/pull/12067)
- Tenant switches now refresh session user permissions for the selected tenant [(#12087)](https://github.com/prowler-cloud/prowler/pull/12087)

### 🔐 Security

- Removed the unused `npm` CLI from the UI container image, eliminating the bundled `node-tar` `CVE-2026-59873` (and future bundled-npm CVEs); the image builds with `pnpm` via `corepack` and does not use `npm` [(#12065)](https://github.com/prowler-cloud/prowler/pull/12065)
- Bumped `vitest` and `@vitest/browser`, `@vitest/browser-playwright`, `@vitest/coverage-v8` from `4.1.8` to `4.1.10`, resolving the critical `@vitest/browser` Browser Mode file-access permission bypass (`GHSA-p63j-vcc4-9vmv`) flagged by `pnpm audit`; dev dependencies only, no runtime impact [(#12077)](https://github.com/prowler-cloud/prowler/pull/12077)
- Kubernetes credential forms now reject kubeconfig files using legacy `auth-provider.config.cmd-path` command authentication [(#12091)](https://github.com/prowler-cloud/prowler/pull/12091)
- Next.js from 16.2.9 to 16.2.11, patching 4 high- and 5 medium-severity vulnerabilities [(#12093)](https://github.com/prowler-cloud/prowler/pull/12093)
- next-auth from 5.0.0-beta.30 to 5.0.0-beta.32, patching 2 critical Auth.js advisories (GHSA-8fpg-xm3f-6cx3 fail-open auth checks, GHSA-7rqj-j65f-68wh email homoglyph bypass) [(#12108)](https://github.com/prowler-cloud/prowler/pull/12108)



## API


### 🔄 Changed

- OCI provider secrets no longer require `region`; legacy `region` input is accepted for backwards compatibility but ignored before storing or scanning [(#11741)](https://github.com/prowler-cloud/prowler/pull/11741)
- Compliance overview ingest now runs in a single transaction per scan with a configurable `COPY` batch size (`DJANGO_COMPLIANCE_COPY_BATCH_SIZE`, default 2000), reducing write pressure on the database [(#11875)](https://github.com/prowler-cloud/prowler/pull/11875)

### 🐞 Fixed

- Scan findings now recover resources missing from the in-memory cache after resource pre-resolution, preventing valid findings from being skipped [(#12002)](https://github.com/prowler-cloud/prowler/pull/12002)
- Tenant-wide integrations that are not attached to any provider, such as Jira, are now visible and manageable by roles with `manage_integrations` and without unlimited visibility [(#12060)](https://github.com/prowler-cloud/prowler/pull/12060)
- Output generation now removes the scan's temporary output directory before writing, so a re-run of the task for the same scan (e.g. broker redelivery after a worker is killed mid-run) no longer appends to the previous run's files and duplicates finding rows in the exported CSV and other outputs [(#12097)](https://github.com/prowler-cloud/prowler/pull/12097)

### 🔐 Security

- Integration responses no longer disclose providers outside the visibility of the role, including the resources sideloaded through `?include=providers` [(#12060)](https://github.com/prowler-cloud/prowler/pull/12060)
- Integration connection checks, Jira issue type lookups and Jira dispatches now resolve the integration through the provider visibility of the role instead of the whole tenant [(#12060)](https://github.com/prowler-cloud/prowler/pull/12060)
- Roles without unlimited visibility can no longer attach an integration to providers they cannot see, nor edit or delete an integration bound to them [(#12060)](https://github.com/prowler-cloud/prowler/pull/12060)
- Kubernetes kubeconfig validation now rejects legacy `auth-provider.config.cmd-path` command authentication in Prowler Cloud/API [(#12091)](https://github.com/prowler-cloud/prowler/pull/12091)



## SDK


### 🚀 Added

- `sagemaker_notebook_instance_no_secrets` check for AWS provider, scanning SageMaker notebook instance lifecycle configuration scripts (`OnCreate` and `OnStart`) for hardcoded secrets such as API keys, passwords, tokens, and connection strings [(#11843)](https://github.com/prowler-cloud/prowler/pull/11843)

### 🔄 Changed

- Jira output rendering supports grouped Finding Group issues with caller-provided links and capped or uncapped finding copy [(#12035)](https://github.com/prowler-cloud/prowler/pull/12035)

### 🐞 Fixed

- Fix invalid escape sequence `SyntaxWarning` raised on startup by the S3 bucket name validation regex [(#12041)](https://github.com/prowler-cloud/prowler/pull/12041)
- Alibaba Cloud SSH and RDP security group checks no longer produce false negatives when allowed rules use capitalized `Policy="Accept"` values [(#12049)](https://github.com/prowler-cloud/prowler/pull/12049)
