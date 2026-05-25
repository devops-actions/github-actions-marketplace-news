---
title: Run Salesforce Code Analyzer
date: 2026-05-25 14:38:16 +00:00
tags:
  - forcedotcom
  - GitHub Actions
draft: false
repo: https://github.com/forcedotcom/run-code-analyzer
marketplace: https://github.com/marketplace/actions/run-salesforce-code-analyzer
version: v2.10.0
dependentsNumber: "111"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/forcedotcom/run-code-analyzer** to version **v2.10.0**.

- This action is used across all versions by **111** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-salesforce-code-analyzer) to find the latest changes.

## Action Summary

The **Run Salesforce Code Analyzer** GitHub Action automates the process of scanning Salesforce code for violations using the Salesforce Code Analyzer CLI plugin. It identifies and categorizes issues by severity, uploads detailed results as artifacts, and generates a job summary for easy review. Additionally, it can create pull request reviews highlighting violations in changed files, streamlining code quality assessments in CI/CD workflows.

## What's Changed

## What's Changed

### Bug Fix
- Fixed upload artifact issue for GHES (GitHub Enterprise Server) environments

### Dependencies Updated
- **semver**: 7.7.4 → 7.8.1 (minor)
- **jest**: 30.3.0 → 30.4.2 (minor)
- **ts-jest**: 29.4.9 → 29.4.11 (patch)
- **typescript-eslint**: 8.59.0 → 8.59.4 (patch)
- **@eslint/js**: 9.39.2 → 9.39.4 (patch)
- **eslint**: 9.39.2 → 9.39.4 (patch)
- **@types/node**: 22.19.17 → 22.19.19 (patch)

### Maintained
- All 105 tests passing with 100% coverage
- Build and linting verified

**Full Changelog**: https://github.com/forcedotcom/run-code-analyzer/compare/v2.9.0...v2.10.0
