---
title: Camouf - AI Code Guardrails
date: 2026-02-20 13:21:59 +00:00
tags:
  - TheEmilz
  - GitHub Actions
draft: false
repo: https://github.com/TheEmilz/camouf
marketplace: https://github.com/marketplace/actions/camouf-ai-code-guardrails
version: v0.10.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/TheEmilz/camouf** to version **v0.10.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/camouf-ai-code-guardrails) to find the latest changes.

## Action Summary

Camouf is a GitHub Action designed to detect and address errors commonly introduced by AI coding assistants, such as function name mismatches, phantom imports, and architectural violations that traditional linters and TypeScript often miss. By scanning the entire codebase for cross-file contract integrity and AI-generated context drift, it ensures runtime safety and prevents production issues caused by compile-time oversights. This tool is purpose-built to automate the detection and correction of AI-related coding mistakes, complementing traditional static analysis tools.

## Release notes

## What's New

### Added
- **async-discrepancies** rule: detects 5 categories of async/await issues in AI-generated code
  - Unnecessary async (functions marked async without await)
  - Floating promises (unhandled promise results)
  - Await on non-promise values
  - Mixed await + .then() patterns
  - Mixed await + callback patterns
- Professional tutorial guide (docs/async-discrepancies.md) with complementary tools research
- GitHub Actions Marketplace action for CI/CD integration
- Test fixture for async-discrepancies violations

### Changed
- Bump version to 0.10.0 (19 builtin rules)
- Updated README with async-discrepancies documentation and GitHub Action examples
- Updated CI/CD integration guide with Marketplace action reference

### Fixed
- Resolved all high-severity npm audit vulnerabilities
- Upgraded eslint to v9, removed redundant @typescript-eslint v6 packages
- Added overrides for minimatch and qs transitive vulnerabilities
