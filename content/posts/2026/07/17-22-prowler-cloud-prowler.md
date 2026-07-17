---
title: Prowler Security Scan
date: 2026-07-17 22:33:56 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.35.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Purpose**: **Prowler** is an Open Source Cloud Security Platform designed to automate security and compliance in any cloud environment. It offers a wide range of security checks, remediation guides, and compliance frameworks to help organizations ensure their cloud resources are secure and compliant.
  
  **Functionality**: The action automates the scanning and reporting of security findings for AWS accounts using Prowler, which can be used to identify potential vulnerabilities, misconfigurations, and non-compliance issues in your cloud environment. This helps in maintaining a secure and compliant cloud infrastructure by providing real-time monitoring and actionable insights.
  
  **Key Capabilities**: The action provides features such as customizable scanning options, integration with CI/CD pipelines, email notifications for security findings, and detailed reports that help organizations identify and address security risks quickly.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.35.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

**Purpose**: **Prowler** is an Open Source Cloud Security Platform designed to automate security and compliance in any cloud environment. It offers a wide range of security checks, remediation guides, and compliance frameworks to help organizations ensure their cloud resources are secure and compliant.

**Functionality**: The action automates the scanning and reporting of security findings for AWS accounts using Prowler, which can be used to identify potential vulnerabilities, misconfigurations, and non-compliance issues in your cloud environment. This helps in maintaining a secure and compliant cloud infrastructure by providing real-time monitoring and actionable insights.

**Key Capabilities**: The action provides features such as customizable scanning options, integration with CI/CD pipelines, email notifications for security findings, and detailed reports that help organizations identify and address security risks quickly.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 💬 Lighthouse AI - Side Chat

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Lighthouse AI now lives in a side panel you can open from anywhere in the app. Ask about the findings you are looking at without leaving the page, and expand to the full-page chat at any time: your draft, messages, and streaming response come along. Finding and resource details share the same panel, with tabs to switch between Details and Lighthouse AI.

<img width="1664" height="995" alt="lighthouse-ai-side-chat" src="https://github.com/user-attachments/assets/1da5d894-6f12-44a7-ab91-adb24c4e65ee" />

Read more in our [Lighthouse AI documentation](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse#side-panel).

## 🤖 Lighthouse AI - Take Action

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Lighthouse AI is no longer read-only. Ask it to do things and it will: connect or remove providers, trigger a scan, schedule daily scans, update scan settings, and manage your mutelist and mute rules, straight from the chat. Every action is gated by RBAC: Lighthouse can only do what the user asking could do themselves.

Read more in our [Lighthouse AI capabilities](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse#capabilities).

## ☁️ One-step AWS Organizations onboarding

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Onboarding an entire AWS Organization is now a single step. One CloudFormation quick-create link deploys the management account role and a service-managed StackSet that rolls the role out to every member account, replacing the manual StackSet console setup. Target the whole organization or a specific Organizational Unit or Root ID, and deploy from the management account or a delegated administrator. The S3 integration quick-create link also pre-fills the bucket owner account ID, preventing a stack validation error.

<img width="1167" height="1205" alt="aws-orgs-wizard" src="https://github.com/user-attachments/assets/1bf6a192-fb2b-4bf9-94ba-4fc4fcc400c6" />

Built on the full-organization CloudFormation template contributed by @jchrisfarris — thanks!

Read more in our [AWS Organizations documentation](https://docs.prowler.com/user-guide/tutorials/prowler-cloud-aws-organizations).

## 🎯 Scan configurations: exclude checks and services

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Scan configurations now accept `excluded_checks` and `excluded_services` to narrow the execution scope. Skip individual checks or entire services per provider, and the scan does not run them at all: less noise, faster scans, and no findings you would mute anyway.

Read more in our [Scan Configuration documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-scan-configuration#limiting-the-scan-scope).

## 🧭 Redesigned sidebar navigation

The sidebar was redesigned around how you actually work: grouped sections for security, settings, and help, a Home/Chat switch at the top, collapsible configuration entries, clearer active states, and a responsive mobile overlay.

<img width="255" height="961" alt="new-menu" src="https://github.com/user-attachments/assets/6f2eb33d-d01f-4f28-b6fd-71f6cae2f510" />

## 🔌 Prowler MCP tools renamed to `prowler_*`

Core Prowler tools in Prowler MCP moved from the `prowler_app_*` prefix to the shorter `prowler_*` namespace, and the MCP documentation was restructured around it. Legacy `prowler_app_*` names keep working in Lighthouse AI, so existing setups are not broken.

Read more in our [Prowler MCP tools reference](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools).

## 🔐 Security

- Jira integration credentials now only accept bare Atlassian site names (letters, numbers, and hyphens), and Jira tenant information requests validate site names and no longer follow redirects.
- Social account linking now requires a verified matching email from both the identity provider and the existing user account, and account connection notification emails are disabled.
- 13 advisories reported by `pnpm audit` on the UI (3 high, 9 moderate, 1 low) are resolved with patched versions of `hono`, `ws`, `vite`, `dompurify`, `js-yaml`, `@opentelemetry/core`, and `@babel/core`, including `hono` CVE-2026-59896.

## 🙌 External Contributors

No external contributors in this release.

Special mention to @jchrisfarris, whose full-organization CloudFormation template from v5.34.0 powers the new one-step AWS Organizations onboarding [(#10403)](https://github.com/prowler-cloud/prowler/pull/10403).


---

## UI

### 🔄 Changed

- AWS Organizations onboarding now deploys the management account role and the member-account StackSet from a single CloudFormation stack, replacing the manual StackSet console step [(#11927)](https://github.com/prowler-cloud/prowler/pull/11927)
- Dynamic providers can now be renamed and deleted from the Providers table [(#11957)](https://github.com/prowler-cloud/prowler/pull/11957)
- Sidebar navigation with grouped sections, clearer active states, and a responsive mobile overlay [(#11994)](https://github.com/prowler-cloud/prowler/pull/11994)
- Core Prowler tools in Lighthouse use the `prowler_*` namespace while preserving legacy `prowler_app_*` compatibility [(#12017)](https://github.com/prowler-cloud/prowler/pull/12017)

### 🐞 Fixed

- The AWS S3 integration CloudFormation quick-create link now sets the bucket owner account ID, preventing a stack validation error when S3 integration is enabled [(#11927)](https://github.com/prowler-cloud/prowler/pull/11927)
- `Scan ID` filter on the Findings page now shows the active scan when opening findings from a scan's `View Findings` action [(#11997)](https://github.com/prowler-cloud/prowler/pull/11997)

### 🔐 Security

- `js-yaml` to 4.3.0, `@sentry/nextjs` to 10.65.0 with `import-in-the-middle` 3.3.1, and transitive `hono`, `dompurify`, `ws`, `vite`, `@babel/core` and `@opentelemetry/core` to patched versions, resolving 13 npm audit advisories (3 high, 9 moderate, 1 low) plus `hono` CVE-2026-59896, published on NVD but not yet in the npm audit feed [(#12029)](https://github.com/prowler-cloud/prowler/pull/12029)

## API

### 🐞 Fixed

- `attack-paths-scan-perform` Celery tasks now use the configurable long-task time limits instead of the six-hour defaults [(#12009)](https://github.com/prowler-cloud/prowler/pull/12009)
- Attack Paths scans handle provider deletion races cleanly, detect stale tasks after 16 hours, use backend-specific graph synchronization batches, and report exhausted Neptune write retries with the original database error [(#12019)](https://github.com/prowler-cloud/prowler/pull/12019)

### 🔐 Security

- Jira integration credentials only accept bare Atlassian site names containing letters, numbers, and hyphens [(#12012)](https://github.com/prowler-cloud/prowler/pull/12012)
- Social account linking requires a verified matching email from both the identity provider and the existing user account without sending account connection notifications [(#12013)](https://github.com/prowler-cloud/prowler/pull/12013)

## SDK

### 🚀 Added

- `excluded_checks` and `excluded_services` in scan configurations to narrow the execution scope [(#12028)](https://github.com/prowler-cloud/prowler/pull/12028)

### 🔐 Security

- Jira tenant information requests validate site names and do not follow redirects [(#12012)](https://github.com/prowler-cloud/prowler/pull/12012)

## MCP

### 🔄 Changed

- Core Prowler tool namespace from the `prowler_app_*` prefix to `prowler_*` [(#12017)](https://github.com/prowler-cloud/prowler/pull/12017)
