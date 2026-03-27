---
title: cloud-audit - AWS Security Scanner
date: 2026-03-27 21:46:05 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The `cloud-audit` GitHub Action is an open-source AWS security scanner that automates the detection of vulnerabilities, compliance gaps (including CIS AWS v3.0), and potential attack chains across 18 AWS services. It provides actionable insights with severity-ranked findings, breach cost estimations, and remediation steps for each issue, helping users proactively secure their AWS environments and prevent account takeovers. Key features include advanced attack chain detection based on real-world exploitation paths and integrations with AWS CLI and Terraform for implementing fixes.

## Release notes

## CIS AWS Foundations Benchmark v3.0.0 Compliance Engine

cloud-audit now maps **62 CIS AWS v3.0 controls** (55 fully automated) with per-control evidence templates, readiness scoring, and remediation guidance.

### Highlights

- **80 checks** (was 47) - 33 new checks for CIS v3.0 automated coverage
- **CIS compliance engine** - `cloud-audit scan --compliance cis_aws_v3` with readiness scoring
- **Compliance HTML report** - auditor-ready, per-control PASS/FAIL with evidence statements and Terraform + CLI remediation
- **20 attack chain rules** (was 16) - 4 new CIS-specific chains mapped to CIS controls
- **Documentation site** - 25 pages at [haitmg.pl/cloud-audit](https://haitmg.pl/cloud-audit/)

### New CLI Commands

```bash
cloud-audit scan --compliance cis_aws_v3                    # Terminal compliance output
cloud-audit scan --compliance cis_aws_v3 --format html -o report.html  # Auditor-ready report
cloud-audit list-frameworks                                  # Available frameworks
cloud-audit show-framework cis_aws_v3                       # View control mappings
```

### What's Different from Prowler

Prowler has `--compliance` with 576 checks but provides remediation guidance **only for CIS**. cloud-audit provides per-control Terraform + CLI remediation for every framework. This is the only open-source scanner that generates auditor-ready evidence with IaC fix code per compliance control.

### Coming Next

SOC 2, BSI C5, ISO 27001, HIPAA, NIS2 compliance frameworks.

Full changelog: [CHANGELOG.md](https://github.com/gebalamariusz/cloud-audit/blob/main/CHANGELOG.md)
