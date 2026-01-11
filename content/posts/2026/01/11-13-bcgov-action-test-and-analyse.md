---
title: Test and Analyze with Triggers and SonarCloud
date: 2026-01-11 13:20:43 +00:00
tags:
  - bcgov
  - GitHub Actions
draft: false
repo: https://github.com/bcgov/action-test-and-analyse
marketplace: https://github.com/marketplace/actions/test-and-analyze-with-triggers-and-sonarcloud
version: v1.7.0
dependentsNumber: "182"
---


Version updated for **https://github.com/bcgov/action-test-and-analyse** to version **v1.7.0**.
- This action is used across all versions by **182** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/test-and-analyze-with-triggers-and-sonarcloud) to find the latest changes.

## Action Summary

This GitHub Action facilitates automated testing and analysis for Node.js projects. It runs tests triggered by code changes, integrates with SonarCloud for code quality and coverage reporting, and optionally enables supply chain attack detection and dependency/export analysis. By automating these tasks, it streamlines code quality assurance and improves software security within CI/CD workflows.

## Release notes

## 🎉 What's New in v1.7.0

### 🔍 GitHub Actions Annotations for Dependency Analysis

Knip analysis results now appear directly in your PR checks with inline annotations! See unused dependencies, devDependencies, exports, and files with file paths and line numbers right in the "Checks" tab and "Files changed" view.

### 📊 Detailed Step Summary

A comprehensive summary is available in the Actions tab with issue counts by category and full detailed output, making it easy to understand what needs attention.

### 🎛️ Flexible Analysis Modes

The `dep_scan` input now supports three modes:
- **`warn`** (default) - Show issues without failing the workflow
- **`error`** - Fail the workflow if issues are found (enforces cleanup)
- **`off`** - Skip analysis entirely

### ⚙️ Default Configuration

A sensible default `.knip.json` configuration is provided, reducing false positives for common patterns (like `swagger-ui-express`, `rimraf`, `@types/node`). You can still provide your own custom configuration via `knip_config`.

### 🔧 Improved Version Management

Knip and safe-chain versions are now managed dynamically from `package.json`, ensuring you always get tested, compatible versions.

### 🛡️ Better Error Handling

Tool failures (Knip crashes, config errors) now warn but continue - your tests still run even if analysis fails. Analysis results properly respect your `warn`/`error` mode settings.

## 📝 Migration Notes

**No breaking changes!** This release is fully backward compatible. If you're already using `dep_scan`, the default behavior remains the same (`warn` mode).

## 🔗 Changes

* Default Knip config, flexible dep_scan modes ([#97](https://github.com/bcgov/action-test-and-analyse/pull/97))
* Dynamic version management from package.json ([#99](https://github.com/bcgov/action-test-and-analyse/pull/99))
* GitHub Actions annotations, summary, and improved error handling ([#100](https://github.com/bcgov/action-test-and-analyse/pull/100))
* Updated copilot instructions ([#101](https://github.com/bcgov/action-test-and-analyse/pull/101))

**Full Changelog**: https://github.com/bcgov/action-test-and-analyse/compare/v1.6.0...v1.7.0
