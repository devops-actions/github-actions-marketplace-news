---
title: cloud-audit - AWS Security Scanner
date: 2026-04-01 13:58:05 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

**Summary:**  
The "cloud-audit" GitHub Action is an open-source AWS security scanner that identifies exploitable attack paths by correlating security findings into actionable attack chains. It automates security assessments, providing detailed AWS CLI and Terraform remediation steps for each finding, enabling users to mitigate risks efficiently. Designed to run locally without requiring a SaaS platform, it simplifies detection and resolution of security vulnerabilities across AWS services.

## What's Changed

## Attack Chain Visualization

Attack chains in the HTML report now render as interactive SVG graphs showing the attack path from entry point to impact.

### What's new

- **Visual attack path graphs** - each attack chain displays as a node-and-edge diagram with color-coded resource types (blue=compute, purple=IAM, cyan=network, green=storage, red=entry/impact)
- Animated dashed edges showing attack flow direction
- Glow effects on entry point and impact nodes
- Edge labels describing relationships ("assumes role", "allows SSH", "IMDS creds")
- Label truncation for long resource IDs
- Print-friendly rendering (animations disabled, white background)
- `VizStep` model with Pydantic `Literal` type validation
- 3 new tests for visualization data integrity

### Includes v1.2.0 (SOC 2 Type II)

- SOC 2 Type II compliance framework (43 criteria, 24 automated)
- `--compliance soc2_type2` CLI flag
- [SOC 2 documentation](https://haitmg.pl/cloud-audit/compliance/soc2-type2/)

### Full changelog

See [CHANGELOG.md](https://github.com/gebalamariusz/cloud-audit/blob/main/CHANGELOG.md)
