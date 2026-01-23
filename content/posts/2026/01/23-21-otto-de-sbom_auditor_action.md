---
title: SBOM Auditor Action
date: 2026-01-23 21:17:13 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v0.6.0
dependentsNumber: "?"
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v0.6.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Action Summary

The SBOM Auditor GitHub Action automates the auditing of Software Bill of Materials (SBOM) for license compliance. It enriches SBOMs with detailed license information, audits dependencies against a defined policy, and generates comprehensive license audit reports, optionally including AI-assisted summaries. This action streamlines license compliance checks, helping developers identify and address potential violations efficiently.

## Release notes

## 🎯 Highlights

This release includes a **complete rewrite** of the SPDX license expression parser to be fully compliant with the [SPDX Specification v3.0.1](https://spdx.github.io/spdx-spec/v3.0.1/annexes/spdx-license-expressions/).

### 🐛 Critical Bug Fix
Combined license expressions like `EPL-2.0 AND GPL-2.0-with-classpath-exception` now **correctly return 'allow'** instead of 'needs-review'.

**Root cause**: The `with` substring inside `GPL-2.0-with-classpath-exception` was incorrectly tokenized as the `WITH` operator.

### ✨ Changes
- **Token-based lexer** that correctly identifies operators only when surrounded by whitespace
- **Proper operator precedence**: OR < AND < WITH < + (lowest to highest)
- **ABNF grammar compliance** with regex patterns matching SPDX `idstring` specification
- Support for `LicenseRef-xxx` and `DocumentRef-xxx:LicenseRef-xxx` custom references
- Support for `AdditionRef-xxx` for license exceptions  
- Support for 'or-later' suffix (`GPL-2.0+`) without whitespace before `+`
- Legacy syntax support: `w/` as `WITH`, ` + ` (with spaces) as `AND`

### ✅ Test Coverage
- **18/18 tests passing** covering standard SPDX expressions, complex nested expressions, case sensitivity, custom references, and legacy formats
- Full integration tested with 515-component production SBOM

### 📖 Full Changelog
See [CHANGELOG.md](https://github.com/otto-de/sbom_auditor_action/blob/main/CHANGELOG.md)

