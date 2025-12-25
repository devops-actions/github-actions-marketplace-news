---
title: Aptu Triage
date: 2025-12-25 21:13:27 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.2
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.2**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered CLI and GitHub Action tool designed for efficient issue and pull request triage in open-source software projects. It automates tasks such as summarizing issues, suggesting labels, generating clarifying questions, and providing pull request feedback, leveraging precise prompts and smaller AI models to optimize performance. Key features include auto-triaging new issues, discovering "good-first-issues," tracking contributions, and supporting multiple output formats and AI providers.

## Release notes

## AI-Powered PR Review

This release adds PR review capabilities and improves AI provider resilience.

### Highlights

- **PR Review Command** - `aptu pr review` analyzes PRs with AI assistance
- **Circuit Breaker** - Automatic failover when AI providers are unavailable
- **Parallel Fetching** - Faster triage with concurrent API calls

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

**Cargo-binstall**
```bash
cargo binstall aptu
```

---

## What's Changed

### Features
- **PR Review Command** - AI-powered pull request analysis (#286)
- **Circuit Breaker** - Resilience pattern for AI provider failures (#281)
- **GitHub Action** - `no-comment` input and self-triage configuration (#284)
- **GraphQL Types** - `From` trait implementations for response types (#280)

### Performance
- **Parallel Fetching** - Triage uses `tokio::join!` for concurrent API calls (#285)

### Refactoring
- **Client Reuse** - Consolidated `create_client_with_token` in facade (#283)

### Fixes
- **REUSE Compliance** - SPDX headers for JSON files (#277) and snap directory (#279)
- **crates.io** - Moved curated-repos.json into aptu-core

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.2.1...v0.2.2

