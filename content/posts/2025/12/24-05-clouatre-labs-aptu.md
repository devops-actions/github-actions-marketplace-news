---
title: Aptu Triage
date: 2025-12-24 05:30:54 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.1.3
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.1.3**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered CLI tool designed to streamline open-source issue triage by providing features such as issue discovery, AI-driven summaries, suggested labels, and contributor guidance. It automates tasks like identifying suitable issues for contributors, detecting already-triaged issues, and offering flexible output formats for tracking and reporting. Through its GitHub Action, Aptu also enables automated triage of new issues in repositories, enhancing efficiency and collaboration in open-source projects.

## Release notes

## Issue Creation and Automation

This release introduces AI-assisted issue creation, a GitHub Action for automated triage, and bulk processing capabilities.

### Highlights

- **Issue Create Command** - `aptu create` generates well-structured issues with AI assistance
- **GitHub Action** - Automate triage on new issues with `clouatre-labs/aptu-action`
- **Bulk Triage** - Process multiple issues in a single command
- **Apply Mode** - `--apply` directly sets labels and milestone on issues
- **Maintainer Detection** - Context-aware output based on repository permissions

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
```

**Cargo**
```bash
cargo install aptu
```

---

## What's Changed

### New Commands
- **Issue creation** - `aptu create` with AI-assisted title, body, and label generation (#204)

### Triage Enhancements
- **Bulk triage** - Process multiple issues: `aptu triage 1 2 3` or `aptu triage --all` (#197)
- **Apply mode** - `--apply` directly sets labels and milestone on GitHub (#189)
- **Maintainer detection** - Auto-detect permissions for context-aware output (#206)
- **Smarter context** - Pass repo labels and milestones to AI prompt (#186)
- **Tree filtering** - Keyword-based prioritization for code context (#207)

### Automation
- **GitHub Action** - `clouatre-labs/aptu-action` for automated issue triage (#205)

### Bug Fixes
- Display suggested_milestone in text output (#202)
- Remove milestone number prefix from AI prompt (#195)
- Strip v prefix from Homebrew formula version (#184)

### Refactoring
- Simplified CLI flags and reduced complexity (#203)
- REST API for untriaged issues, replacing GraphQL (#201)

### CI/CD
- Cross-toolchain for faster x86_64-linux builds (#181)
- Cache cargo-deb in release workflow (#192)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.1.2...v0.1.3

