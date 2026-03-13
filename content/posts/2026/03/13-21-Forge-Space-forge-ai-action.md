---
title: Forge AI — Quality Gates for AI-Assisted Code
date: 2026-03-13 21:37:24 +00:00
tags:
  - Forge-Space
  - GitHub Actions
draft: false
repo: https://github.com/Forge-Space/forge-ai-action
marketplace: https://github.com/marketplace/actions/forge-ai-quality-gates-for-ai-assisted-code
version: v1.3.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Forge-Space/forge-ai-action** to version **v1.3.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forge-ai-quality-gates-for-ai-assisted-code) to find the latest changes.

## Action Summary

The Forge AI Action is a GitHub Action designed to assess the impact of AI-assisted code on a codebase by scanning pull requests for governance violations, quality regressions, and anti-patterns. It automates quality checks, provides detailed reports (e.g., scores, findings, and pass/fail gates), and helps teams ensure AI contributions improve code quality rather than degrade it. Key capabilities include quality gating, project health assessments, migration planning, and automated test validation.

## Release notes


### Changed

- Tenant context is now mandatory for all action commands:
  - `tenant`
  - `tenant_profile_ref`
- Added tenant profile loader/validator with fail-fast behavior on missing, invalid,
  or mismatched profile data.
- `test-autogen-check` now forwards tenant context to `forge-ai-init`.
- Documented tenant contract expectations in README (required inputs + profile
  availability/match rules).

### Added

- Baseline CI workflow for PR/main:
  - `npm test`
  - `tsc --noEmit`
  - `npm run build`

### Fixed

- Removed vulnerable regex parsing paths in `src/tenant.ts` by switching YAML line parsing to
  deterministic string-based parsing helpers.
- Added regression test coverage for YAML inline comments in tenant profiles.


