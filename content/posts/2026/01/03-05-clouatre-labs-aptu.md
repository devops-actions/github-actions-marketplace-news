---
title: Aptu Triage
date: 2026-01-03 05:36:16 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.12
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.12**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered tool designed to automate and enhance issue triage, pull request analysis, and release note generation for open-source projects. By leveraging compact and efficient AI models, it provides capabilities such as auto-triaging issues with labels and comments, summarizing issues, suggesting labels, generating changelogs from merged PRs, and identifying actionable tasks like good-first-issues. This action simplifies repository management tasks through automation, improving efficiency and precision for open-source maintainers and contributors.

## Release notes

## Intelligent Model Management and CLI Refinement

This release introduces a robust model validation system and per-task AI configuration while significantly streamlining the CLI experience through smart defaults and unified flag patterns.

### Highlights

- **Dynamic Model Management** - Introduced comprehensive model listing, validation, and per-task selection capabilities to optimize AI workflows.
- **Smart CLI Defaults** - Replaced manual flags like --yes and --repo with intelligent TTY-aware defaults and automatic git remote inference.
- **Enhanced FFI Support** - Expanded the FFI layer to support issue creation, PR labeling, and repository discovery for external integrations.
- **Reliable AI Workflows** - Added fallback provider chains and graceful offline support for the model registry to ensure stability.

---

## Known Issues

- **Performance Regression** - The dynamic model registry introduced in this release can cause slow response times due to 30-second API timeouts. This is fixed in v0.2.13. Users experiencing timeouts should upgrade.

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
```

**Snap (Linux)**
```bash
snap install aptu
```

**Cargo**
```bash
cargo install aptu-cli
```

**Cargo-binstall**
```bash
cargo binstall aptu-cli
```

---

## What's Changed

### Features

- **Model List Command** - Added `aptu models list` with support for sorting, filtering, and caching (#592, #583, #551)
- **Per-Task Model Selection** - Implemented runtime selection of AI models based on specific tasks like triage, review, or creation (#521, #519)
- **Automatic Repository Inference** - Automatically detect the repository from git remotes when the --repo flag is omitted (#586)
- **Bulk PR Review** - Added bulk mode to the PR review command for consistency with issue triage workflows (#569)
- **Expanded FFI Functions** - Exposed issue creation, PR labeling, repository discovery, and model listing via FFI (#589, #561, #542)
- **Fallback Provider Chain** - Added support for secondary AI providers to improve reliability during API outages (#522)
- **Zenmux and Zai Support** - Added zenmux and zai to the generic model parser (#560)

### Fixes

- **Tag Resolution** - Fixed an issue where recreated tags caused incorrect version comparisons in release notes (#529, #512)
- **macOS Path Compliance** - Updated to use XDG paths on macOS instead of ~/Library/Application Support (#526)
- **API Authentication** - Resolved authentication failures with specific model API configurations (#558)
- **JSON Consistency** - Standardized JSON renaming conventions and error message types across the codebase (#541, #508)
- **GitHub Action** - Updated action.yml to align with CLI flag changes from smart defaults refactoring

### Improvements

- **Smart TTY Defaults** - Removed the --yes flag in favor of intelligent detection of interactive environments (#590)
- **Pre-flight Validation** - Added model validation with fuzzy-matched suggestions before making AI API calls (#585, #559, #571, #546)
- **Simplified Logging** - Refactored verbose and debug flags to use standard RUST_LOG tracing patterns (#594)
- **Unified CLI UX** - Standardized flag patterns, display helpers, and quiet modes across all commands (#593, #587, #562, #555)
- **GraphQL Optimization** - Improved error handling to reduce redundant API calls during failures (#509)
- **Offline Fallback** - Implemented graceful offline support for the model registry (#557)

### Documentation

- **JSON Schema Audit** - Conducted a comprehensive audit of JSON schemas for improved documentation accuracy (#530)

### Maintenance

- **Dependency Updates** - Updated various dependencies including clap_complete, octocrab, and GitHub Actions (#564, #552, #510, #507, #506, #505, #504)
- **Code Cleanup** - Removed wiremock dependency and static model registry in favor of dynamic runtime patterns (#539, #565)
- **Core Refactoring** - Extracted trait-based bulk processors and release note formatting to the core library for reuse (#582, #540, #538)

---

## Contributors

- @clouatre

