---
title: Delimit API Governance
date: 2026-03-22 06:05:00 +00:00
tags:
  - delimit-ai
  - GitHub Actions
draft: false
repo: https://github.com/delimit-ai/delimit-action
marketplace: https://github.com/marketplace/actions/delimit-api-governance
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/delimit-ai/delimit-action** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delimit-api-governance) to find the latest changes.

## Action Summary

The Delimit GitHub Action automates API contract governance by detecting breaking changes, classifying semantic version updates, enforcing custom policies, and generating migration guides for OpenAPI specifications. It runs on pull requests to compare modified API specs against the base branch, providing detailed feedback through PR comments, including severity assessments and step-by-step migration instructions. This action helps teams maintain API stability, enforce governance rules, and streamline the migration process without requiring external services or complex setups.

## Release notes

## What's New

### Upgraded PR Comment Design
- Header with severity classification and semver badge
- Impact summary with change counts and version bump
- Severity badges (Critical / Warning / Info)
- Collapsible migration guide with numbered steps
- Additive changes in collapsible section
- Policy violations in separate section
- Clean footer with links

### 27 Change Types (17 Breaking, 10 Non-Breaking)
Expanded from 10 to 27 detection types including param type changes, security scope, constraints, deprecation, and defaults.

### "Governance Passed" on Clean PRs

See it live: https://github.com/delimit-ai/delimit-action-demo/pull/2
