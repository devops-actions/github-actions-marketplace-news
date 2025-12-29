---
title: Terraform Scripts Lint (Unified System)
date: 2025-12-29 05:32:34 +00:00
tags:
  - Lance52259
  - GitHub Actions
draft: false
repo: https://github.com/Lance52259/hcbp-scripts-lint
marketplace: https://github.com/marketplace/actions/terraform-scripts-lint-unified-system
version: v2.6.4
dependentsNumber: "6"
---


Version updated for **https://github.com/Lance52259/hcbp-scripts-lint** to version **v2.6.4**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-scripts-lint-unified-system) to find the latest changes.

## Action Summary

The "Terraform Scripts Lint - Unified Rules Management System" GitHub Action is a robust linting tool designed to ensure code quality, consistency, and adherence to best practices for Terraform scripts. It automates the process of identifying and enforcing standardized rules, provides advanced reporting and performance monitoring, and supports flexible configurations, making it suitable for teams of all sizes. Key capabilities include integration with GitHub Actions, detailed analytics, artifact support, and options for inline rule control and path exclusion.

## Release notes

This release includes an important fix to the ST.003 parameter alignment check rule, resolving false positive errors for parameters separated by empty lines.

### Key Improvements

**Empty Line Separation Handling**
- Fixed false alignment errors for parameters separated by empty lines in variable blocks
- Parameters like `description`, `type`, and `default` that are separated by empty lines are now correctly treated as independent alignment groups
- The rule now correctly identifies when parameters should be in separate alignment groups based on empty line separation

**Parameter Group Splitting**
- Enhanced `_check_parameter_alignment_in_section()` function to split parameter groups by empty lines
- Parameters are now sorted by line index within each indentation level before grouping
- Empty lines between consecutive parameters are detected and used to create separate sub-groups
- Each sub-group is checked for alignment independently, ensuring proper spacing requirements

**Alignment Group Independence**
- Parameters separated by empty lines now form independent alignment groups
- Single-parameter groups (separated by empty lines) only require one space before the equals sign
- Eliminates false alignment requirements when parameters are intentionally separated by empty lines for code organization

### Test Results
All validation tests pass with expected error counts. The fix eliminates false positives in good examples (specifically `case4/variables.tf`) while maintaining correct detection of actual alignment issues in bad examples.

### Migration Notes
No breaking changes. This release is fully backward compatible and only fixes false positives. Existing code that was correctly formatted will continue to pass validation, and the fix ensures that properly separated parameters are no longer incorrectly flagged.
