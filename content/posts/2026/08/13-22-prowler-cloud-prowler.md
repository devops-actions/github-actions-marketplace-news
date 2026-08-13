---
title: Prowler Security Scan
date: 2026-08-13 22:22:45 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.39.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Prowler** is an open-source, automated tool that helps organizations identify security risks and non-compliance issues in their cloud environments through a suite of security checks and compliance frameworks. It automates the process of scanning AWS and Azure environments to ensure compliance with industry standards and best practices, providing real-time monitoring and seamless integrations for simple, scalable, and cost-effective cloud security.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.39.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

**Prowler** is an open-source, automated tool that helps organizations identify security risks and non-compliance issues in their cloud environments through a suite of security checks and compliance frameworks. It automates the process of scanning AWS and Azure environments to ensure compliance with industry standards and best practices, providing real-time monitoring and seamless integrations for simple, scalable, and cost-effective cloud security.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com/

## 🤖 Lighthouse AI — Finding Skills

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Lighthouse AI now embeds a Skills menu on every finding, answering the questions an analyst actually asks. **Contextual Fix** produces the fix for the finding, **Triage Decision** judges whether it is real and closes it out when it is not, and **Systemic Scope** determines whether the problem is a one-off or everywhere. A free-form "Ask Lighthouse anything" prompt sits in the same menu, and each run shows its progress and offers follow-up actions such as creating a Jira issue or muting the finding.

<img width="3274" height="1796" alt="Lighthouse AI Skills menu on a finding resource" src="https://github.com/user-attachments/assets/7beccac4-f376-4218-b2fd-b60d2cf62ee4" />

Read more in the [Lighthouse AI documentation](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse).

## ☁️ Azure Management Group Onboarding

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Azure subscriptions no longer onboard one at a time. Choose "Add Multiple Subscriptions With Azure Management Group" in the add-provider wizard, enter the Microsoft Entra tenant ID, and authenticate once with a single tenant-wide service principal: Prowler discovers the entire management-group hierarchy under the tenant root, lets you select the subscriptions to onboard, and creates their providers with the management-group structure preserved. Azure now matches the one-step onboarding that AWS Organizations and GCP organizations already have.

<img width="1815" height="1013" alt="Azure onboarding method selector with the Management Group option" src="https://github.com/user-attachments/assets/e9fc5714-cead-41b3-9fca-0cf702ea648f" />

Read more in the [Azure Management Groups documentation](https://docs.prowler.com/user-guide/tutorials/prowler-cloud-azure-management-groups).

## ✅ Findings Triage — Verify MANUAL Findings as PASS

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

Checks that require human judgment report `MANUAL` findings. For these findings, and only for them, the triage status selector now offers **Resolved**: choosing it asks for the required written evidence and verifies the finding as passing. The finding then reports an effective `PASS` while preserving the raw `MANUAL` scan result, across findings, finding groups, compliance reports, and scans, with the attestation's author, evidence, and validity always visible. Attestations expire automatically after 90 days, or as soon as a new scan reports a real failure, returning the finding to the review queue.

<img width="3058" height="1796" alt="Triage status selector offering Resolved on a MANUAL finding" src="https://github.com/user-attachments/assets/20347e2b-3c82-4dcc-a89e-83a0e16398de" />

<img width="2966" height="1796" alt="Manual Pass details showing evidence, author, and validity" src="https://github.com/user-attachments/assets/f67b6bcf-9514-4fda-87d3-a2485e0b9616" />

Read more in the [Findings Triage documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-findings-triage#verify-a-manual-finding-as-pass).

## ☁️ Prowler Cloud MCP — Organizations Management and Grouped Jira Dispatch

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

The hosted Prowler Cloud MCP server adds eight organization tools, so an agent can onboard and manage entire cloud organizations end to end: create the organization, discover its accounts, subscriptions, and projects, apply the selection, and manage the resulting providers. The tools cover AWS Organizations, GCP organizations, and Azure tenant root management groups, and they are available to Lighthouse AI.

`prowler_send_findings_to_jira` also gains Cloud-only dispatch capabilities: select failed findings by check IDs against the latest completed scan, and send them in grouped mode, one Jira work item per check listing up to 50 affected resources, with per-group error reporting.

Read more in the [Prowler MCP tools documentation](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools) and its [Jira operations reference](https://docs.prowler.com/getting-started/basic-usage/prowler-mcp-tools#jira-operations).

## 🕸️ Attack Paths — Grouped Graph with Outcome Destinations

> [!NOTE]
> This feature is available exclusively in **Prowler Cloud** and **Prowler Private Cloud** with a [subscription](https://prowler.com/pricing).

The Attack Paths graph now reads from source to destination. Resources of the same class collapse into a single expandable node with a count, clicking reveals its members, and every path terminates in an explicit outcome node naming the destination impact: code execution, privilege escalation, public exposure, or resource inventory. The per-account hub node is gone, and the clicked resource stays highlighted while its findings are expanded.

<img width="1353" height="723" alt="Attack Paths graph from the Internet to a public exposure outcome node" src="https://github.com/user-attachments/assets/618f5ee9-7f0e-4065-a106-056f78a6608f" />

Explore the full Attack Paths query catalog at [Prowler Hub](https://hub.prowler.com/attack-paths).

Read more in the [Attack Paths documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app-attack-paths).

## 📚 New Compliance Framework — CMMC 2.0

The Cybersecurity Maturity Model Certification (CMMC) is the certification the US Department of Defense requires from contractors and suppliers that handle federal contract data. Prowler now includes CMMC 2.0 as a universal framework with all 149 requirements defined by the CMMC Program rule (32 CFR Part 170), organized in its three levels:

- **Level 1 (Foundational):** 15 requirements for the basic safeguarding of Federal Contract Information, from FAR 52.204-21.
- **Level 2 (Advanced):** 110 requirements from NIST SP 800-171 Rev 2, protecting Controlled Unclassified Information.
- **Level 3 (Expert):** 24 enhanced requirements from NIST SP 800-172 for the most sensitive programs.

Requirements map to Prowler checks across AWS, Azure, GCP, Alibaba Cloud, Oracle Cloud, and Microsoft 365, so one framework reports the compliance posture of the whole estate.

Read more in the [Compliance documentation](https://docs.prowler.com/user-guide/compliance/tutorials/compliance).

## 🔍 Checks

### Microsoft 365

Twenty new Entra ID checks expand the coverage of CIS Microsoft 365 Foundations Benchmark v7.0.0:

- **Password protection:** custom banned password list, on-premises enforcement, and lockout threshold and duration.
- **Default user permissions:** security group and Microsoft 365 group creation restricted, and guest invitations limited to allowed domains.
- **Conditional Access:** high and medium sign-in risk blocked, authentication transfer blocked, untrusted locations blocked, trusted named locations defined, sign-in frequency enforced, and token protection enforced.
- **Sessions and authentication methods:** idle session timeout configured, email one-time passcodes disabled, and Microsoft Authenticator context shown.
- **PIM and access reviews:** approval required to activate the Global Administrator and Privileged Role Administrator roles, and access reviews configured for guest users and privileged roles.

Explore all Microsoft 365 checks at [Prowler Hub](https://hub.prowler.com/check?provider=m365).

### AWS

Two new checks detect hardcoded secrets:

- `batch_job_definition_no_secrets` scans Batch job definition environment variables and command parameters. Thanks to @praneetrajv!
- `awslambda_layer_no_secrets_in_content` scans Lambda layer package content. Thanks to @ganiganesh25!

Explore all AWS checks at [Prowler Hub](https://hub.prowler.com/check?provider=aws).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @praneetrajv: AWS `batch_job_definition_no_secrets` check ([#12117](https://github.com/prowler-cloud/prowler/pull/12117))
- @ganiganesh25: AWS `awslambda_layer_no_secrets_in_content` check ([#12233](https://github.com/prowler-cloud/prowler/pull/12233))
- @andoniaf: GitHub `organization_repository_creation_limited` now reports low severity when repository creation is limited to private or internal visibility ([#12164](https://github.com/prowler-cloud/prowler/pull/12164))

---

## UI

### 🚀 Added

- Manual verification workflow for `MANUAL` findings with evidence, effective `PASS` status, and expiration details [(#12253)](https://github.com/prowler-cloud/prowler/pull/12253)
- Surface pre-configured credential creation links in the add-provider wizard. Cloudflare exposes the User API Token template and an Account-Owned template pinned to the Cloudflare Account ID entered in the wizard, GitHub exposes the personal-repositories template and an organization-scanning template pinned to the identifier entered in the wizard [(#12349)](https://github.com/prowler-cloud/prowler/pull/12349)
- Attack Paths graph groups resources by class into expandable nodes and marks the query outcome as the terminal node, with the clicked resource highlighted while its findings are expanded (Prowler Cloud only) [(#12381)](https://github.com/prowler-cloud/prowler/pull/12381)
- Azure Management Group onboarding: add every subscription in a tenant at once (Prowler Cloud only) [(#12386)](https://github.com/prowler-cloud/prowler/pull/12386)
- Manage Lighthouse AI role permission in the role forms and role details, so permission to change the Lighthouse AI configuration can be granted or restricted independently of other permissions (Prowler Cloud only) [(#12412)](https://github.com/prowler-cloud/prowler/pull/12412)
- CMMC 2.0 universal compliance framework rendering: dedicated icon, Domain/Level requirement mapper and cross-provider catalog tile [(#12414)](https://github.com/prowler-cloud/prowler/pull/12414)

### 🐞 Fixed

- Organization discovery describes a too-deep hierarchy in each provider's own vocabulary: AWS organizational units, Azure Management Groups, Google Cloud folders [(#12386)](https://github.com/prowler-cloud/prowler/pull/12386)
- `View Findings` on the Scans page no longer opens an empty list for users outside the UTC timezone [(#12411)](https://github.com/prowler-cloud/prowler/pull/12411)

## API

### 🔄 Changed

- `GET /api/v1/users/me` membership relationships identify the active tenant with `meta.active` for JWT and API key authentication [(#12388)](https://github.com/prowler-cloud/prowler/pull/12388)

### 🐞 Fixed

- Tenant deletion no longer leaves memberships partially removed when exclusive-user cleanup fails [(#12379)](https://github.com/prowler-cloud/prowler/pull/12379)
- `/api/v1/accounts/saml/{organization_slug}/acs/` rejects non-POST requests before SAML response processing [(#12393)](https://github.com/prowler-cloud/prowler/pull/12393)
- Social login derives a valid user name when identity providers omit the profile name [(#12413)](https://github.com/prowler-cloud/prowler/pull/12413)

## SDK


### 🚀 Added

- `batch_job_definition_no_secrets` check for AWS provider, scanning Batch job definition environment variables and command parameters for hardcoded secrets [(#12117)](https://github.com/prowler-cloud/prowler/pull/12117)
- 7 M365 Entra checks covering CIS Microsoft 365 Foundations Benchmark v7.0.0 password protection, default user permissions, and guest invitation domain restrictions [(#12153)](https://github.com/prowler-cloud/prowler/pull/12153)
- 7 M365 entra checks covering CIS Microsoft 365 Foundations Benchmark v7.0.0 Conditional Access (5.2.2.x) and idle session timeout controls [(#12154)](https://github.com/prowler-cloud/prowler/pull/12154)
- `entra_authentication_method_email_otp_disabled`, `entra_authentication_method_authenticator_show_context`, `entra_pim_global_administrator_approval_required`, `entra_pim_privileged_role_administrator_approval_required`, `entra_access_review_guest_users_configured` and `entra_access_review_privileged_roles_configured` checks for M365 provider covering CIS Microsoft 365 Foundations Benchmark v7.0.0 authentication method, PIM approval and access review controls [(#12155)](https://github.com/prowler-cloud/prowler/pull/12155)
- `awslambda_layer_no_secrets_in_content` check for AWS provider, scanning Lambda layer package content for hardcoded secrets [(#12233)](https://github.com/prowler-cloud/prowler/pull/12233)
- CMMC 2.0 universal compliance framework (`cmmc_2.0`) with the 149 official requirements from 32 CFR Part 170 — Level 1 (15, 48 CFR 52.204-21), Level 2 (110, NIST SP 800-171 Rev 2) and Level 3 (24, NIST SP 800-172) — with AWS, Azure, GCP, Alibaba Cloud, Oracle Cloud and M365 check mappings and config guardrails [(#12401)](https://github.com/prowler-cloud/prowler/pull/12401)

### 🔄 Changed

- GitHub `organization_repository_creation_limited` check now reports low severity for FAIL findings when repository creation is provably limited to private/internal visibility, instead of always reporting high [(#12164)](https://github.com/prowler-cloud/prowler/pull/12164)

### 🔐 Security

- HTML report header now HTML-escapes every provider identity field across all 23 providers, closing a stored XSS in the header block (Secur0, CWE-79) that was left unaddressed by the earlier finding-row fix in #12221 [(#12424)](https://github.com/prowler-cloud/prowler/pull/12424)
