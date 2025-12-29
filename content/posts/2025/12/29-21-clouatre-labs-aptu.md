---
title: Aptu Triage
date: 2025-12-29 21:07:26 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.11
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.11**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered CLI and GitHub Action designed to streamline open-source issue triage and repository management. It automates tasks such as issue triaging, pull request analysis, release note generation, and labeling, leveraging AI to provide summaries, suggestions, and clarifications with precision. Its key capabilities include multi-provider support, offline contribution tracking, and compatibility with various output formats, making it a versatile tool for maintaining and improving open-source projects efficiently.

## Release notes

## Refined Stability and Performance

Version 0.2.11 improves the resilience of AI interactions and optimizes internal release processes for better performance and consistency.

### Highlights
- **AI Resilience** - Better handling of incomplete or truncated LLM responses through improved retry logic
- **Optimized Releases** - Faster pull request filtering using streamlined GitHub API calls
- **CLI Consistency** - Unified feedback across triage and review workflows for a more cohesive user experience

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

### Fixes
- **AI JSON Parsing** - Moved parsing logic inside the retry loop to recover from truncated responses (#500)
- **CLI Display** - Unified feedback messages between issue triage and PR review modules (#491)
- **Reference Validation** - Improved error clarity when PR references resolve to issues instead of pull requests (#487)

### Improvements
- **Release Efficiency** - Reduced API overhead by optimizing pull request filtering with a single Compare API call (#490)

### Documentation
- **Security Disclosures** - Added documentation regarding branch protection limitations for solo maintainers and its impact on OpenSSF Scorecard (#501)

### Maintenance
- Updated rust crate clap_complete to v4.5.63 (#499)
- Updated rust crate serde-saphyr to 0.0.12 (#497)
- Updated taiki-e/install-action digest to 4c6723e (#489)

---

## Contributors
- @clouatre

