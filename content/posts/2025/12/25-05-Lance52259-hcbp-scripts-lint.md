---
title: Terraform Scripts Lint (Unified System)
date: 2025-12-25 05:24:32 +00:00
tags:
  - Lance52259
  - GitHub Actions
draft: false
repo: https://github.com/Lance52259/hcbp-scripts-lint
marketplace: https://github.com/marketplace/actions/terraform-scripts-lint-unified-system
version: v2.6.3
dependentsNumber: "6"
---


Version updated for **https://github.com/Lance52259/hcbp-scripts-lint** to version **v2.6.3**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-scripts-lint-unified-system) to find the latest changes.

## Action Summary

The "Terraform Scripts Lint - Unified Rules Management System" GitHub Action is a robust linting tool designed to ensure code quality, consistency, and adherence to best practices in Terraform scripts. It automates the identification of issues across multiple rule categories, provides advanced rule management, performance monitoring, and generates detailed reports, making it ideal for teams seeking consistent infrastructure-as-code standards. Key features include GitHub Actions integration, flexible configuration options, and support for inline rule control and path exclusions.

## Release notes

This release includes significant improvements to the ST.003 parameter alignment check rule, fixing multiple false positive errors and resolving a critical runtime issue.

### Key Improvements

**String Value Detection**
- Fixed false alignment errors for comparison operators used as string values (e.g., `"=="`, `"!="`, `">="`, `"<="`)
- The rule now correctly identifies when equals signs are part of string literals rather than parameter assignments

**Top-Level Parameter Grouping**
- Fixed incorrect sectioning of top-level parameters separated by array declarations
- Parameters like `rule_conditions = [...]` and `approval_content = ...` are now correctly grouped for alignment

**Alignment Position Calculation**
- Improved handling of consistently aligned parameters
- The rule now accepts aligned positions that meet or exceed the minimum requirement, prioritizing consistency over exact spacing

**Nested Parameter Grouping**
- Added structural boundary detection to correctly separate nested parameters from different array objects
- Prevents false alignment errors when parameters in different objects have the same indentation level

**Runtime Error Fix**
- Resolved `local variable '_section_has_top_level_param' referenced before assignment` error
- Fixed function scope issue that caused crashes when processing certain `.tfvars` file structures

### Test Results
All validation tests pass with expected error counts. The improvements eliminate 5 false positives in good examples while maintaining correct detection of actual alignment issues.

### Migration Notes
No breaking changes. This release is fully backward compatible and only fixes false positives.
