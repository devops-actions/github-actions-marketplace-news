---
title: Ops Literal
date: 2025-12-16 05:24:27 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/ops-literal
marketplace: https://github.com/marketplace/actions/ops-literal
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/ops-literal** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ops-literal) to find the latest changes.

## Release notes

This pull request Malnati/ops-literal@v1.0.0 introduces the initial release of the `Malnati/ops-literal` GitHub Action, providing a standardized and safe way to export file or string content as multiline-ready outputs for downstream workflow steps. The changes include a comprehensive, user-friendly README, a detailed `action.yml` definition for the composite action, and additional documentation for repository users.

**Key changes:**

**1. Action Implementation and Configuration**
- Added `action.yml` defining the composite action, including input parameters (such as `token`, `file_extensions`, `target_path`, and `exclude_patterns`), output values, and all steps required to scan files for hardcoded literals and generate a JSON report. The action includes robust input validation, scanning logic, and output formatting.

**2. Documentation and Usage Examples**
- Overhauled `README.md` with a clear project introduction, feature list, quick start guides, input/output descriptions, usage patterns, and security recommendations to help users adopt the action effectively.
- Added `docs/README.md` for users who prefer reading documentation directly in the repository, mirroring core usage information and best practices.

**3. Repository Structure**
- Created an empty `assets/README.md` as a placeholder, likely for future asset documentation or organization.
