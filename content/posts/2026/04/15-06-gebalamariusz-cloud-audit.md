---
title: cloud-audit - AWS Security Scanner
date: 2026-04-15 06:21:54 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The **cloud-audit** GitHub Action is an open-source AWS security scanner designed to identify attack paths, IAM privilege escalation routes, and other vulnerabilities in cloud environments. It prioritizes findings by highlighting the most critical issues and providing actionable remediation plans, helping users focus on fixing root causes rather than individual issues. Key capabilities include detecting attack chains, simulating fixes before implementation, and streamlining security decision-making to enhance cloud infrastructure protection.

## What's Changed

## What's New in v2.0.0

### IAM Privilege Escalation Detection
25 escalation methods across 6 categories. First maintained open-source replacement for PMapper (dead since 2022). Detects PassRole abuse, policy self-mutation, credential access, Lambda code modification, trust policy abuse, and permission boundary bypass.

### What-If Remediation Simulator
```bash
cloud-audit simulate --fix aws-vpc-002
# Score: 34 -> 58 (+24)  |  Chains broken: 8 of 22  |  Findings resolved: 11
```
See the impact of a fix before you apply it. No AWS API calls — runs locally on scan data.

### Root Cause Grouping
"Fix 4 things, break 22 chains" — groups findings by root cause and ranks by chain-breaking impact. Quick Wins section shows LOW-effort fixes that break CRITICAL chains.

### Security Posture Trend
```bash
cloud-audit trend
```
Tracks health score, attack chains, and risk exposure over time. History auto-saved after each scan.

### AI-SPM (Bedrock + SageMaker)
5 new checks: model invocation logging, guardrails, notebook root access, notebook internet access, endpoint encryption. 3 new attack chains: AI Model Theft, LLMjacking, AI Data Poisoning.

### Also
- Remediation CLI now injects real account ID (no more `ACCOUNT_ID` placeholders)
- Terraform snippets completed with IAM roles, S3 buckets, KMS keys
- Compliance Beta labels (CIS + SOC 2 stable, 4 others beta)
- Cached `get_account_id()` (1 STS call instead of 10+)
- Windows cp1250 Unicode compatibility fix

**94 checks | 23 services | 31 attack chains | 496 tests**

Full changelog: [CHANGELOG.md](https://github.com/gebalamariusz/cloud-audit/blob/main/CHANGELOG.md)
