---
title: Codeward-io Scan
date: 2026-01-23 21:18:46 +00:00
tags:
  - codeward-io
  - GitHub Actions
draft: false
repo: https://github.com/codeward-io/scan
marketplace: https://github.com/marketplace/actions/codeward-io-scan
version: v0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/codeward-io/scan** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codeward-io-scan) to find the latest changes.

## Action Summary

The **Codeward Scan GitHub Action** automates repository scanning for policy, license compliance, vulnerabilities, and validation issues, focusing on changes introduced in pull requests with diff-aware analysis. It streamlines governance of both AI-assisted and human-generated code by providing clear, deterministic outputs (Markdown, HTML, JSON) and supports configurable policies to block, warn, or log specific issues. This action helps teams maintain code quality and security before merging changes.

## Release notes

# Release v0.2.0

This release marks a major step forward for Codeward. It introduces a completely rewritten scanner engine for better performance and powerful new policy primitives that allow for deeply customizable governance rules.

## 🚀 Key Features

### Scanner Engine Rewrite
We've re-architected the core scanner to be faster, more reliable, and easier to extend. This lays the groundwork for future support of additional languages and package managers.

### Array Wildcards & Matching
Validate lists in JSON and YAML files using `*` wildcards. The new `match` parameter (`all`, `any`, `none`) gives you precise control over validation logic.

**Example: Ensure *all* container images come from your private registry:**
```json
{
  "key": "spec.containers.*.image",
  "type": "hasPrefix",
  "value": "my-registry.io/",
  "match": "all"
}
```

**Example: Ensure *no* containers run as privileged:**
```json
{
  "key": "spec.containers.*.securityContext.privileged",
  "type": "eq",
  "value": true,
  "match": "none"
}
```

### Custom Output Reasons
Replace generic "rule failed" messages with custom, actionable instructions for your developers.

**Example: instead of "value not found", tell them exactly what to fix:**
```json
{
  "key": "scripts.test",
  "type": "exists",
  "output_reason": "All packages must have a test script. Please add 'test': 'vitest' to package.json."
}
```

### Conditional Logic via `implies` Operator
Create "If X, then Y" policies. The policy only applies (and blocks/warns) if a specific "trigger" condition is met.

**Example: If a PR is large (>10 files), require a documentation update:**
```json
{
  "operator": "implies",
  "rules": [
    { "key": "changed_files", "type": "gt", "value": 10 }, // Trigger
    { "key": "files.filename", "file_pattern": "docs/**", "type": "exists" } // Requirement
  ]
}
```

## 🐛 Improvements & Fixes

*   **Expiring Ignores**: Ignore rules now support an `expires` field (YYYY-MM-DD), enabling temporary waivers that automatically re-enable themselves.
*   **Enhanced Stability**: Improved stability for diverse CI environments.
*   **Better Validation**: Improved error handling for configuration validation.
*   **Bug Fixes**: Assorted bug fixes and performance improvements.

