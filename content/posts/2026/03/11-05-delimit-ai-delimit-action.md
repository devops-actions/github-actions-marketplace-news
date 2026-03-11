---
title: Delimit API Governance
date: 2026-03-11 05:55:07 +00:00
tags:
  - delimit-ai
  - GitHub Actions
draft: false
repo: https://github.com/delimit-ai/delimit-action
marketplace: https://github.com/marketplace/actions/delimit-api-governance
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/delimit-ai/delimit-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delimit-api-governance) to find the latest changes.

## Action Summary

Delimit is a GitHub Action designed to analyze and enforce governance for OpenAPI specifications in pull requests. It automatically detects breaking changes, recommends semantic versioning updates, and generates migration guides, providing detailed feedback through pull request comments. This action streamlines API contract management by automating change validation and policy enforcement, helping teams maintain API stability and compliance effortlessly.

## Release notes

## What's New

### Semver Classification
Deterministic version bump recommendations based on detected API changes:
- **MAJOR** — any breaking change (endpoint removed, required param added, type changed, etc.)
- **MINOR** — additive changes only (new endpoints, optional fields, enum values)
- **PATCH** — non-functional changes (description updates)

### 7 Explainer Templates
Auto-generated human-readable explanations: `developer`, `team_lead`, `product`, `migration`, `changelog`, `pr_comment`, `slack`

### Enhanced PR Comments
- Semver badge in header
- Next version recommendation
- Violation table with severity, rule, and location
- Collapsible migration guide for breaking changes

### Test Suite & CI
- 49 unit tests covering all core modules
- CI on Python 3.10, 3.11, 3.12
- Self-tests with fixture specs in advisory and enforce modes

### Production README
Full documentation with quick start, examples, custom policies, FAQ.

## Breaking Changes from v1.1.0
- `old_spec` and `new_spec` inputs are now **required**

## Usage

```yaml
- uses: delimit-ai/delimit-action@v1
  with:
    old_spec: base/api/openapi.yaml
    new_spec: api/openapi.yaml
```
