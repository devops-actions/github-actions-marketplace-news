---
title: Prowler Security Scan
date: 2026-04-28 22:04:13 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.25.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.25.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an open-source cloud security platform designed to automate security and compliance monitoring across any cloud environment. It provides hundreds of pre-configured security checks, compliance frameworks, and remediation guidance, enabling organizations to ensure real-time, scalable, and cost-effective cloud security. With AI-driven insights and seamless integrations, Prowler simplifies the process of identifying and addressing security risks in cloud infrastructure.

## What's Changed

# ✨ New features to highlight

Enjoy them all now for free at [https://cloud.prowler.com/](https://cloud.prowler.com/)

## 📦 Official Prowler GitHub Action

`prowler-cloud/prowler@5.25` is now an official GitHub Action. Drop it into any workflow to run a Prowler scan, optionally upload SARIF to GitHub Code Scanning, and push results to Prowler Cloud.

```yaml
- uses: prowler-cloud/prowler@5.25
  with:
    provider: iac
    output-formats: sarif json-ocsf
    upload-sarif: true
    flags: --severity critical high
```

<img width="1329" height="908" alt="github actions" src="https://github.com/user-attachments/assets/ee78b1b6-923f-4530-b3aa-e91f10445e84" />

The action is pinned to the matching release tag, so v5.25 ships with `prowler-cloud/prowler@5.25` ready to use.

## 🐙 GitHub — [zizmor](https://woodruffw.github.io/zizmor/) Workflow Scanning as a First-Class Service

The GitHub provider gains a new service: **GitHub Actions**, powered by [zizmor](https://docs.zizmor.sh/) for static analysis of workflow files. Prowler now scans `.github/workflows/*.yml` for the OWASP Top 10 CI/CD risks — script injection, overly permissive `GITHUB_TOKEN`, untrusted checkouts, dangerous triggers — and ships the findings through the same pipeline as every other GitHub check. **This is your first line of defense against supply chain attacks**: a poisoned action, a compromised tag, or a workflow that leaks secrets to a forked PR is exactly the kind of footgun `zizmor` catches before it ships. `zizmor` v1.24.1 is bundled into the API Docker image, so the service runs out of the box on Prowler Cloud and self-hosted alike.

Read more in our [GitHub provider documentation](https://docs.prowler.com/user-guide/providers/github/getting-started-github).

Explore all GitHub checks at [Prowler Hub](https://hub.prowler.com/check?provider=github).

## 🛡️ IaC — SARIF Output for GitHub Code Scanning

The IaC provider now emits SARIF via `--output-formats sarif`. Combined with the new GitHub Action, that means IaC misconfigurations land directly in the **Security → Code Scanning** tab on every PR — annotated on the offending Terraform, CloudFormation, Dockerfile, or Kubernetes manifest, with severity, remediation, and Prowler check metadata carried through.

Read more in our [IaC provider documentation](https://docs.prowler.com/user-guide/providers/iac/getting-started-iac).

## 🖥️ UI — Compliance Page Redesign

The compliance page has been rebuilt: client-side search across frameworks, a more compact scan selector trigger, and redesigned compliance cards.

<img width="1361" height="908" alt="compliance" src="https://github.com/user-attachments/assets/dc11a8ad-af3c-4bd0-b06c-1abbb6620194" />

## 🖥️ UI — Resources, Mutelist, and Filter Polish

A coordinated UX pass across the high-traffic surfaces:

- **Resources** — batch-applied filters, syntax-highlighted metadata JSON, and tighter drawer behavior.
- **Mutelist** — name and reason search, plus visual count badges on finding targets.
- **Shared filter dropdowns** — local option search and auto-scroll to the first visible match across table and provider filters.
- **View Resource button** — easy navigation to resource details directly from finding view.

## 📧 Google Workspace — Gmail Service

The Google Workspace provider gains a new **Gmail** service with 9 CIS-aligned checks covering user settings, link safety, end-user access, and spam/phishing controls — pulled directly from the Cloud Identity Policy API at the domain level.

- `gmail_mail_delegation_disabled`
- `gmail_shortener_scanning_enabled`
- `gmail_external_image_scanning_enabled`
- `gmail_untrusted_link_warnings_enabled`
- `gmail_pop_imap_access_disabled`
- `gmail_auto_forwarding_disabled`
- `gmail_per_user_outbound_gateway_disabled`
- `gmail_enhanced_pre_delivery_scanning_enabled`
- `gmail_comprehensive_mail_storage_enabled`

Explore all Google Workspace checks at [Prowler Hub](https://hub.prowler.com/check?provider=googleworkspace).

## 🏛️ Prowler Cloud — Reports for Imported Scans

> [!NOTE]
> Available exclusively in **Prowler Cloud**.

Imported scans (OCSF) now generate the same downloadable artifacts as CLI scans. The new download buttons are wired into both the scans table and the compliance views, so air-gapped, partner, and offline OCSF imports get the same reporting surface as a connected provider.

Read more in our [reports documentation](https://docs.prowler.com/user-guide/tutorials/prowler-app#step-9-download-the-outputs).

## 📊 CIS Benchmark PDF Reports

Compliance for the latest CIS variant of every provider get a **Download PDF** button, and the API exposes the underlying generator at `GET /scans/{id}/cis/{name}/`. Only the latest CIS version per provider surfaces the button — the backend rejects PDF generation for older variants — so the report you download always matches the benchmark you'd want to ship to an auditor.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## 👥 Tenant User Expulsion

Tenant owners can now remove users from their organizations directly from the UI. Behind the scenes, `DELETE /tenants/{tenant_pk}/memberships/{id}` deletes the expelled user's account when the removed membership was their last one and blacklists every outstanding refresh token, so existing sessions stop minting new access tokens immediately.

## 🔍 New Checks

### AWS

- `secretsmanager_has_restrictive_resource_policy` - evaluates resource-based policies for AWS Secrets Manager secrets — thanks to @kagahd!

### GitHub

- `repository_default_branch_dismisses_stale_reviews` — flags repositories whose default branch protection does not dismiss stale PR approvals when new commits are pushed (CIS 1.1.4) — thanks to @Mathisdjango!

Explore all GitHub checks at [Prowler Hub](https://hub.prowler.com/check?provider=github).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @Mathisdjango -- New GitHub check: dismiss stale PR approvals on default branch (CIS 1.1.4) in #10569
- @raajheshkannaa -- `--repo-list-file` CLI flag for GitHub provider to load repositories from a file in https://github.com/prowler-cloud/prowler/pull/10501
- @grauJavier -- Centralize AI assistant config via symlinks for skills in https://github.com/prowler-cloud/prowler/pull/9951
- @boonchuan -- Nginx reverse proxy configuration in https://github.com/prowler-cloud/prowler/pull/10780
- @kagahd -- New AWS check to evaluate resource-based policies for Secrets Manager secrets in https://github.com/prowler-cloud/prowler/pull/6985

---

## UI

### 🚀 Added

- Download PDF button for CIS Benchmark compliance cards, surfaced only on the latest CIS variant per provider to match the backend's latest-only PDF generation [(#10650)](https://github.com/prowler-cloud/prowler/pull/10650)
- `knip` for dead code detection with `lint:knip` and `lint:knip:fix` scripts [(#10654)](https://github.com/prowler-cloud/prowler/pull/10654)
- Resource button in the findings resource detail drawer to open the related resource page [(#10847)](https://github.com/prowler-cloud/prowler/pull/10847)

### 🔄 Changed

- Redesign compliance page, client-side search for compliance frameworks, compact scan selector trigger, enhanced compliance cards [(#10767)](https://github.com/prowler-cloud/prowler/pull/10767)
- Allows tenant owners to expel users from their organizations  [(#10787)](https://github.com/prowler-cloud/prowler/pull/10787)
- Shared filter dropdowns now support local option search and auto-scroll to the first visible match across table and provider filters [(#10859)](https://github.com/prowler-cloud/prowler/pull/10859)
- Backward-compatibility middleware redirect from `/sign-up?invitation_token=…` to `/invitation/accept?invitation_token=…`; new invitation emails use `/invitation/accept` directly [(#10797)](https://github.com/prowler-cloud/prowler/pull/10797)
- Mutelist improvements: table now supports name/reason search and visual count badges for finding targets [(#10846)](https://github.com/prowler-cloud/prowler/pull/10846)
- Resources now use batch-applied filters, render metadata JSON with syntax highlighting, and more [(#10861)](https://github.com/prowler-cloud/prowler/pull/10861)
- Table pagination controls now keep their arrows visible on hover in light theme, and more UI improvements [(#10862)](https://github.com/prowler-cloud/prowler/pull/10862)

## API

### 🚀 Added

- CIS Benchmark PDF report generation for scans, exposing the latest CIS version per provider via `GET /scans/{id}/cis/{name}/` [(#10650)](https://github.com/prowler-cloud/prowler/pull/10650)
- `/overviews/resource-groups` (resource inventory), `/overviews/categories` and `/overviews/attack-surfaces` now reflect newly-muted findings without waiting for the next scan. The post-mute `reaggregate-all-finding-group-summaries` task now also dispatches `aggregate_scan_resource_group_summaries_task`, `aggregate_scan_category_summaries_task` and `aggregate_attack_surface_task` per latest scan of every `(provider, day)` pair, rebuilding `ScanGroupSummary`, `ScanCategorySummary` and `AttackSurfaceOverview` alongside the tables already covered in #10827 [(#10843)](https://github.com/prowler-cloud/prowler/pull/10843)
- Install zizmor v1.24.1 in API Docker image for GitHub Actions workflow scanning [(#10607)](https://github.com/prowler-cloud/prowler/pull/10607)

### 🔄 Changed

- Allows tenant owners to expel users from their organizations  [(#10787)](https://github.com/prowler-cloud/prowler/pull/10787)
- `aggregate_findings`, `aggregate_attack_surface`, `aggregate_scan_resource_group_summaries` and `aggregate_scan_category_summaries` now upsert via `bulk_create(update_conflicts=True, ...)` instead of the prior `ignore_conflicts=True` / plain INSERT / `already backfilled` short-circuit. Re-runs triggered by the post-mute reaggregation pipeline no longer trip the `unique_*_per_scan` constraints nor silently drop updates, and are race-safe under concurrent writers (e.g. scan completion overlapping with a fresh mute rule) [(#10843)](https://github.com/prowler-cloud/prowler/pull/10843)
- Rename the scan-category and scan-resource-group summary aggregators from `backfill_*` to `aggregate_*` [(#10843)](https://github.com/prowler-cloud/prowler/pull/10843)

### 🐞 Fixed

- `generate_outputs_task` crashing with `KeyError` for compliance frameworks listed by `get_compliance_frameworks` but not loadable by `Compliance.get_bulk` [(#10903)](https://github.com/prowler-cloud/prowler/pull/10903)

## SDK

### 🚀 Added

- `--repo-list-file` CLI flag for GitHub provider to load repositories from a file [(#10501)](https://github.com/prowler-cloud/prowler/pull/10501)
- SARIF output format for the IaC provider, enabling GitHub Code Scanning integration via `--output-formats sarif` [(#10626)](https://github.com/prowler-cloud/prowler/pull/10626)
- `repository_default_branch_dismisses_stale_reviews` check for GitHub provider to ensure stale pull request approvals are dismissed when new commits are pushed [(#10569)](https://github.com/prowler-cloud/prowler/pull/10569)
- Official Prowler GitHub Action (`prowler-cloud/prowler@5.25`) for running scans in GitHub workflows with optional `--push-to-cloud` and SARIF upload to GitHub Code Scanning [(#10872)](https://github.com/prowler-cloud/prowler/pull/10872)
- GitHub Actions service for scanning workflow security issues using zizmor [(#10607)](https://github.com/prowler-cloud/prowler/pull/10607)
- `secretsmanager_has_restrictive_resource_policy` check for AWS provider [(#6985)](https://github.com/prowler-cloud/prowler/pull/6985)

### 🐞 Fixed

- Alibaba Cloud CS service SDK compatibility, harden other services and improve documentation [(#10871)](https://github.com/prowler-cloud/prowler/pull/10871)
- AWS Organizations metadata retrieval for delegated administrator scans by using the assumed role session instead of the pre-assume credentials [(#10894)](https://github.com/prowler-cloud/prowler/pull/10894)
- `admincenter_groups_not_public_visibility` check for M365 provider evaluating Security and Distribution groups, now restricted to Microsoft 365 (Unified) groups per CIS M365 Foundations 1.2.1 [(#10899)](https://github.com/prowler-cloud/prowler/pull/10899)
- Google Workspace check reports now store the actual domain or account resource subject instead of `provider.identity` [(#10901)](https://github.com/prowler-cloud/prowler/pull/10901)
- `entra_users_mfa_capable` evaluating disabled guest accounts; CIS 5.2.3.4 only targets enabled member users [(#10785)](https://github.com/prowler-cloud/prowler/pull/10785)
