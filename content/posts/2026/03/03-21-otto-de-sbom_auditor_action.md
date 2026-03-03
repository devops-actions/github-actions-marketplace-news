---
title: SBOM Auditor Action
date: 2026-03-03 21:28:15 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Action Summary

The SBOM Auditor Action automates the auditing of Software Bill of Materials (SBOM) for license compliance. It fetches SBOM data, enriches it with detailed license information, evaluates licenses against a defined policy, and generates a comprehensive audit report. This action streamlines the identification of potential license violations and offers optional AI-assisted summaries for enhanced reporting, helping developers ensure compliance and reduce legal risks.

## Release notes

## What's Changed

### Bug Fixes
- **Maven packages reported as NO-LICENSE-FOUND** (#19): Added Maven POM fallback when deps.dev returns empty license data
- **POM fallback unresolved path**: Original license string used when resolver can't normalize

### New Features
- **New Allowed Licenses** (#21): DSDP, curl, PSF-2.0, Zlib, zlib-acknowledgement, ODC-By-1.0
- **MIT AND Zlib** compound expression now evaluates to allow
- **New License Aliases** (#21): ASLv2 / ASL 2.0 mapped to Apache-2.0
- **QOS.ch Copyright Alias** (#22): Copyright text mapped to MIT

### Mitigated
- **MIT interpreted as MIT AND zLIB** (#20): Resolved since Zlib is now allowed

### Testing
- 22 new unit tests (112 total, all passing)
- Tests mock SPDX data for offline reliability

