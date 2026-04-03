---
title: cloud-audit - AWS Security Scanner
date: 2026-04-03 21:45:32 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The `cloud-audit` GitHub Action is an open-source CLI tool designed to identify exploitable attack paths in AWS environments and provide actionable fixes in AWS CLI and Terraform formats. It automates security scanning and remediation by correlating findings into attack chains, helping teams address vulnerabilities without relying on SaaS solutions. Key capabilities include risk assessment, compliance checks (e.g., SOC 2, ISO 27001), and generating detailed remediation steps for identified issues.

## What's Changed

## 6 Compliance Frameworks

cloud-audit now supports **6 compliance frameworks** — the most of any open-source AWS security CLI:

| Framework | Controls | Automated/Partial |
|-----------|----------|-------------------|
| CIS AWS v3.0 | 62 | 55 (89%) |
| SOC 2 Type II | 43 | 24 (56%) |
| **BSI C5:2020** | **134** | **58 (43%)** |
| **ISO 27001:2022** | **93** | **48 (52%)** |
| **HIPAA Security Rule** | **47** | **30 (64%)** |
| **NIS2 Directive** | **43** | **33 (77%)** |

```bash
cloud-audit scan --compliance bsi_c5_2020 --format html -o report.html
cloud-audit scan --compliance iso27001_2022
cloud-audit scan --compliance hipaa_security
cloud-audit scan --compliance nis2_directive
cloud-audit list-frameworks
```

## 88 Checks, 25 Attack Chains

8 new checks across 3 new AWS services (Backup, Inspector, WAF) plus extensions to IAM, VPC, CloudTrail, CloudWatch, and SSM.

5 new attack chain rules:

- **AC-29**: Unpatched Instance Exposed to Internet (CRITICAL)
- **AC-30**: Unpatched Without Vulnerability Scanning
- **AC-31**: Internet-Exposed Without WAF or Flow Logs
- **AC-32**: CloudTrail Blind Spot — Alarms Non-Functional
- **AC-33**: All-Public VPC Without Network Segmentation

## Full Changelog

See [CHANGELOG.md](https://github.com/gebalamariusz/cloud-audit/blob/main/CHANGELOG.md#130---2026-04-03) for the complete list of changes.

**412 tests passing.**
