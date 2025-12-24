---
title: Terraform Scripts Lint (Unified System)
date: 2025-12-24 21:10:48 +00:00
tags:
  - Lance52259
  - GitHub Actions
draft: false
repo: https://github.com/Lance52259/hcbp-scripts-lint
marketplace: https://github.com/marketplace/actions/terraform-scripts-lint-unified-system
version: v2.6.2
dependentsNumber: "6"
---


Version updated for **https://github.com/Lance52259/hcbp-scripts-lint** to version **v2.6.2**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-scripts-lint-unified-system) to find the latest changes.

## Action Summary

The Terraform Scripts Lint GitHub Action provides an enhanced linting solution for Terraform scripts, leveraging a unified rules management system to ensure code quality, consistency, and adherence to best practices. It automates tasks such as identifying code issues, enforcing standards, and generating detailed reports, offering features like advanced rule coordination, flexible configuration, and performance monitoring. This tool is ideal for streamlining Terraform code reviews and maintaining high-quality infrastructure as code across teams.

## Release notes

This release focuses on comprehensive improvements to the ST.003 parameter alignment rule, addressing multiple false positive issues and enhancing the rule's accuracy across various Terraform HCL structures. The update includes significant fixes for function calls, tfvars files, heredoc blocks, and complex expressions.

## 🔧 Major Improvements

### ST.003 - Parameter Alignment Check

#### Fixed False Positives in Function Calls
- **Resolved incorrect alignment errors** for parameters inside function calls (e.g., `jsonencode({...})`, `merge({...})`)
- Implemented a **two-phase post-processing approach**:
  - Phase 1: Separates parameters inside function calls from those outside
  - Phase 2: Merges sections containing parameters at the same indent level within the same function call
- Added **conservative detection** that only separates parameters when they are truly inside function call argument lists

#### Enhanced Section Separation Logic
- **Improved bracket/brace level tracking**: Only increments/decrements levels when there's a net change, preventing balanced brackets on the same line from affecting nesting levels
- **Enhanced function call detection**: Checks if parameter indent is greater than the function call line's indent
- **Added deduplication logic** to prevent duplicate lines when merging sections

#### Fixed Complex Structure Handling
- **`list(object({...}))` structures**: Fixed incorrect section grouping for nested structures
- **Tfvars file grouping**: Improved logic for top-level array declarations and nested object structures
- **Different indentation levels**: Eliminated alignment effects between parameters at different levels
- **Heredoc blocks**: Added support to skip heredoc content (`<<EOF`, `<<-EOT`) during alignment checks
- **Complex expressions in locals**: Fixed alignment detection for multi-line expressions like `flatten([for v in var.data : {...}])`
- **Hexcode context detection**: Improved handling of hexcode strings in heredoc content

## 🧪 Testing & Validation

### Comprehensive Test Suite Expansion
Added **11 new test cases** to validate ST.003 rule fixes:

- **Good Examples - Script Files** (4 cases): Complex resource blocks, function calls, nested structures
- **Good Examples - Tfvars Files** (5 cases): Top-level alignment, nested objects, arrays, heredoc handling
- **Bad Examples - Tfvars Files** (2 cases): Misaligned equals signs, incorrect spacing

All test cases validated with expected error detection (0 errors for good examples, expected errors for bad examples).

## 🐛 Bug Fixes

- Fixed false positive alignment error for `cache_key` parameter inside `jsonencode({...})`
- Fixed false positives for parameters incorrectly identified as inside function calls
- Fixed incorrect section grouping for parameters inside function calls
- Fixed incorrect grouping logic for `.tfvars` files
- Fixed alignment errors caused by parameters at different indentation levels
- Fixed false positives caused by heredoc block content being processed
- Fixed alignment detection issues for complex expressions in `locals` blocks
- Fixed hexcode context detection issues in heredoc content

## 📊 Impact

This release significantly improves the accuracy of the ST.003 rule by:
- Reducing false positives in complex nested structures
- Better handling of function calls and their parameters
- Improved support for `.tfvars` files
- Enhanced detection logic for various edge cases

## 🔗 Related Commits

This release includes fixes from multiple commits addressing ST.003 rule improvements:
- Function call parameter handling
- Tfvars file grouping logic
- Heredoc block support
- Complex expression detection
- Hexcode context handling
- Multi-level alignment separation

---

**Full Changelog:** See [CHANGELOG.md](CHANGELOG.md) for complete details.
