---
title: GitHub SOC2 Audit Evidence Exporter
date: 2026-01-15 22:03:55 +00:00
tags:
  - jekka001
  - GitHub Actions
draft: false
repo: https://github.com/jekka001/audit-evidence
marketplace: https://github.com/marketplace/actions/github-soc2-audit-evidence-exporter
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/jekka001/audit-evidence** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-soc2-audit-evidence-exporter) to find the latest changes.

## Action Summary

The GitHub SOC2 Audit Evidence Exporter is a GitHub Action that automates the generation of auditor-ready SOC2 compliance evidence for GitHub repositories. It eliminates the need for manual data collection, such as taking screenshots or exporting settings, by gathering verifiable evidence, mapping it to SOC2 clauses, and generating professional PDFs with timestamps, API endpoint details, and raw JSON for verification. This action saves significant time during audits and ensures compliance evidence is organized and easily shareable with auditors.

## Release notes

GitHub SOC2 Audit Evidence Exporter automatically collects SOC2 technical evidence from your GitHub organization and repositories. 
It generates auditor-ready PDFs for MFA enforcement, repository access control, branch protection, PR review rules, and audit logs (Enterprise only). 
Free tier supports 2 checks with watermarked PDFs, Paid tier unlocks all 5 checks, ZIP export, and no watermark.

Quick Start:
- GitHub Action: include `jekka001/audit-evidence@v1` in your workflow
- CLI: run `java -jar audit-evidence.jar --org <org> --repo <repo> --zip` for paid tier

