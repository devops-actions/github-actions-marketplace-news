---
title: Aptu Triage
date: 2025-12-27 05:28:35 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.7
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.7**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to automate and enhance issue and pull request management for open-source projects. It provides features such as AI-driven issue triage, automated labeling, comment suggestions, and pull request analysis, reducing manual effort and improving efficiency. The GitHub Action functionality enables automated processing of incoming issues using AI models, supporting various providers and output formats.

## Release notes

## PR Auto-Labeling and Triage Resilience

This release introduces deterministic PR auto-labeling based on conventional commits and improves triage reliability with automatic retries and state filtering.

### Highlights

- **PR Auto-Labeling** - Automatically labels PRs based on conventional commit prefixes (feat, fix, docs, etc.)
- **Issue State Filtering** - Use `--state/-s` to filter triage by open/closed/all issues
- **Automatic Retry** - Bulk triage now retries failed issues automatically
- **Tiered Verbosity** - Clean output by default, `-v` for verbose, `-vv` for debug tracing
- **Security Docs** - Documented security and compliance practices

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
- **PR Auto-Labeling** - Deterministic labeling based on conventional commits (#349)
- **Maintainer Labels** - Filter maintainer-only labels in merge_labels (#350)
- **Issue State Filter** - Add `--state/-s` flag to triage command (#365)
- **Automatic Retry** - Retry failed issues in bulk triage (#363)

### Improvements
- **Tiered Verbosity** - Introduce `-v` (verbose) and `-vv` (debug) levels (#357)
- **Fast CI Profile** - Add optimized profile for integration tests (#356)
- **Testability** - Extract env reader to generic function (#359)
- **Test Consolidation** - Consolidate labels_from_pr_metadata tests (#353)

### Documentation
- **Security Practices** - Document security and compliance (#364)
- **Updated Demo** - Refresh animated demo for current CLI (#366)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.2.6...v0.2.7

