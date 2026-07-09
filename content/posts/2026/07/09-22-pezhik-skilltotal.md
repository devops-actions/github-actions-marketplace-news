---
title: SkillTotal AI Component Security Scan
date: 2026-07-09 22:42:24 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.38.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.38.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Added
- **Scoped / least-privilege identity execution-context signal (`ST-AUTH-SCOPED`, ruleset 41).**
  A new scanner detects short-lived, scoped, assumed identities — STS AssumeRole / session tokens,
  cloud managed / workload identity, impersonated service accounts, projected Kubernetes
  service-account tokens, dynamic-secret brokers — and surfaces them as the `scoped_identity` trait
  (CSA "Tool Execution Context / Least-Privilege Service Identity"). This completes the
  execution-context dimension: `embedded_credential` (Agent Service Identity, largest blast radius)
  → `delegated_authentication` (User Delegated Credentials) → `scoped_identity` (least privilege,
  smallest). Neutral **capability finding (0-score)**; adds `Capability.SCOPED_IDENTITY`. Scored
  detection is unchanged (efficacy 100% recall / 0 FP). See `RULES_CHANGELOG.md`.


