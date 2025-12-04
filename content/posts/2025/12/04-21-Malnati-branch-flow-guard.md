---
title: Branch Flow Guard Pro
date: 2025-12-04 21:55:47 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/branch-flow-guard
marketplace: https://github.com/marketplace/actions/branch-flow-guard-pro
version: v1.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/Malnati/branch-flow-guard** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/branch-flow-guard-pro) to find the latest changes.

## Release notes

These changes updates the `action.yml` for the `Malnati/branch-flow-guard` GitHub Action, introducing improved diagnostics, permission checks, and clearer step structuring to enhance usability and maintainability. The main changes include adding explicit diagnostic and permission verification steps, clarifying step order and documentation, and updating the action version and metadata.

**Diagnostics and Permissions:**
* Added a new step (`debug_inputs`) to log and group branch governance rules and input configuration, improving transparency and troubleshooting for branch flow definitions.
* Introduced a permission verification step (`debug_perms`) that checks API connectivity and token permissions before proceeding, helping users identify missing or insufficient permissions early.

**Step Structure and Documentation:**
* Reorganized the workflow steps with clear section headers and comments, making the action's logic easier to follow and maintain. Steps are now explicitly numbered and grouped by function (diagnostics, permission check, code detection, analysis, output generation). [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L28-L73) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L138-L156)
* Clarified and streamlined comments within each step, removing redundant explanations and improving consistency. [[1]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L85) [[2]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L103-L124) [[3]](diffhunk://#diff-1243c5424efaaa19bd8e813c5e6f6da46316e63761421b3e5f5c8ced9a36e6b6L138-L156)

**Metadata and Versioning:**
* Updated the action's version and metadata at the top of `action.yml` to reflect `Malnati/branch-flow-guard@v1.1.0`, ensuring correct identification and usage.Updated action version and improved input diagnostics with detailed logging. Added permission checks and enhanced JSON output generation.
