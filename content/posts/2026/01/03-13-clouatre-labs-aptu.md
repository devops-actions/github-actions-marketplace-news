---
title: Aptu Triage
date: 2026-01-03 13:10:59 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.13
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.13**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to streamline open-source software issue management by automating tasks such as issue triage, pull request analysis, release note generation, and identifying good-first-issues. It leverages efficient AI models to provide precise insights, such as summaries, suggested labels, and clarifying questions, and can be integrated into GitHub workflows for auto-triaging incoming issues. Aptu simplifies project management with support for multiple AI providers and output formats, enhancing productivity and reducing manual effort in maintaining repositories.

## Release notes

## iOS Integration and Performance Optimization

This release marks the initial foundation for iOS support while delivering significant performance improvements to AI API interactions and internal architecture.

### Highlights

- **iOS Platform Support** - Foundation for mobile integration using XcodeGen and Rust FFI (#595)
- **AI Performance Tuning** - Drastically reduced AI API timeouts for faster response cycles (#611)
- **Architectural Refinement** - Shifted to a static model registry for improved stability and predictability (#609)

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
- **iOS App Setup** - Integrated XcodeGen and Rust FFI to support iOS application development (#595)

### Fixes
- **Validation Logic** - Corrected the implementation to respect the validation_enabled flag and added necessary HTTP timeouts (#601)
- **CI Toolchain** - Resolved build issues by adding explicit toolchain input to the rust-toolchain action (#604)

### Improvements
- **API Performance** - Reduced AI API timeout from 30 seconds to 5 seconds to minimize latency (#611)
- **Model Registry Refactor** - Replaced the dynamic model registry with static constants to simplify architecture (#609)

### Maintenance
- Updated swatinem/rust-cache digest to 779680d (#600)

---

## Contributors

- @clouatre

