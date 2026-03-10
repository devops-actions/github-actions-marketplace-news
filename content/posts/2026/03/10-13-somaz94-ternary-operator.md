---
title: Ternary Operator Action
date: 2026-03-10 13:23:53 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/ternary-operator
marketplace: https://github.com/marketplace/actions/ternary-operator-action
version: v1.4.0
dependentsNumber: "1"
actionType: Docker
---


Version updated for **https://github.com/somaz94/ternary-operator** to version **v1.4.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ternary-operator-action) to find the latest changes.

## Action Summary

The Ternary Operator GitHub Action is designed to evaluate conditional expressions and dynamically set outputs based on the results, enabling flexible, logic-driven workflows. It automates tasks such as conditional deployments, dynamic configuration, and feature flag management by supporting a wide range of operators and multiple conditions in a lightweight, efficient manner. This action simplifies complex decision-making in CI/CD pipelines, allowing users to streamline multi-environment and resource scaling strategies.

## Release notes


### Bug Fixes
- add pytest installation step to unit-test job by @somaz94
- use python runner for local tests and add Makefile by @somaz94

### Build
- bump actions/checkout from 5 to 6 by @dependabot[bot]
- bump docker/setup-buildx-action from 3 to 4 by @dependabot[bot]
- bump docker/build-push-action from 6 to 7 by @dependabot[bot]

### CI/CD
- refactor workflows to match project conventions by @somaz94

### Chore
- changelog-generator.yml by @somaz94
- changelog-generator.yml by @somaz94
- workflows by @somaz94
- release.yml by @somaz94
- dockerignore by @somaz94
- stale-issues, issue-greeting by @somaz94
- update prettier devcontainer feature reference by @somaz94
- remove linter workflow and config files by @somaz94

### Documentation
- add CLAUDE.md and update tests/README.md by @somaz94
- add CLAUDE.md, CONTRIBUTORS.md, release.yml and update dockerignore by @somaz94
- update README, docs, and action.yml to reflect current project state by @somaz94
- update documentation to reflect current project state by @somaz94
- update test counts to reflect new unit tests (73→89, 36→52) by @somaz94

### Other Changes
- replace eval() with safe operator comparison in evaluator by @somaz94

### Testing
- add pytest unit tests with 91% coverage and remove emojis by @somaz94
- add unit tests for _is_numeric and _parse_comparison methods by @somaz94

**Full Changelog**: https://github.com/somaz94/ternary-operator/compare/v1.3.2...v1.4.0

