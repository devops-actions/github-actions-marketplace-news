---
title: Delimit API Governance
date: 2026-03-16 06:13:39 +00:00
tags:
  - delimit-ai
  - GitHub Actions
draft: false
repo: https://github.com/delimit-ai/delimit-action
marketplace: https://github.com/marketplace/actions/delimit-api-governance
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/delimit-ai/delimit-action** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delimit-api-governance) to find the latest changes.

## Action Summary

Delimit is a GitHub Action designed for API contract governance, specifically for OpenAPI specifications. It automates the detection of breaking changes, recommends semantic version bumps, and generates migration guides, all while providing detailed feedback directly in pull request comments. This tool streamlines API change management, enforces custom policies, and enhances collaboration by offering configurable advisory or CI-blocking modes.

## Release notes

## What Changed

### Testing (+238 tests)
- **87 MCP bridge smoke tests** covering all tool endpoints in the unified server
- **151 core engine tests** for ci_formatter, policy_engine, and semver_classifier
- **488 total tests passing** across gateway and action (up from 299)
- Test coverage improved from **57% to 65%**

### Features
- Enhanced PR comments with **severity badges** and **migration guides**
- Added `delimit_sensor_github_issue` tool for outreach monitoring

### Fixes
- Fixed async deprecation warnings in bridge layer (introduced `run_async` helper)
- Fixed `$ref` pointer resolution before schema comparison
- Fixed spec deletion crash with guard clause
- Fixed `test_sensor_github_issue` collection error

### Security
- Internal bridge token moved from hardcoded value to **environment variable**

## What to Test

- Run the action on a PR with breaking changes and verify the severity badge table renders correctly
- Run with `mode: enforce` and confirm CI fails on breaking changes
- Verify the migration guide section appears in PR comments for breaking changes
- Test with specs containing `$ref` pointers to confirm correct resolution
- Run `@v1` tag reference to confirm users on the major version tag receive this update

## Upgrade

Users on `@v1` receive this update automatically. To pin:

```yaml
uses: delimit-ai/delimit-action@v1.3.0
```

