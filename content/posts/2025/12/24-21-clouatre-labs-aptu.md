---
title: Aptu Triage
date: 2025-12-24 21:11:19 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.1.4
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.1.4**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered command-line tool and GitHub Action designed to streamline the triage of open-source issues. It automates tasks such as discovering "good first issues," summarizing issues, suggesting labels, and providing contributor guidance using AI, while also supporting flexible issue references and multiple output formats. This tool simplifies issue management for maintainers and contributors, enhancing productivity and organization in open-source projects.

## Release notes

## Developer Experience and Distribution

This release improves CLI ergonomics, adds distribution options, and enhances AI label criteria.

### Highlights

- **Cargo-binstall Support** - Install pre-built binaries without compiling
- **Rate Limit Awareness** - Warnings when approaching GitHub API limits
- **Force Flag** - `--force` bypasses triage check for re-processing issues
- **No-Comment Flag** - `--no-comment` applies labels without posting AI comment
- **JSON Output Consistency** - All commands respect `--output json` for scripting

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

**Cargo-binstall** (new)
```bash
cargo binstall aptu
```

---

## What's Changed

### CLI Enhancements
- **Force flag** - `--force` bypasses triage check (#230)
- **No-comment flag** - `--no-comment` decouples apply from comment posting (#211)
- **JSON output** - All commands respect `--output json` for Unix composability (#222)
- **Single issue summary** - Skip bulk summary for single issue triage (#239)

### AI Improvements
- **Label criteria** - Explicit criteria for `help wanted` and `good first issue` labels (#238)

### Distribution
- **Cargo-binstall** - Pre-built binary installation support (#223)
- **GitHub Marketplace** - Action published as 'Aptu Triage' (#226)

### Compliance
- **REUSE 3.3** - Full license compliance with SPDX headers (#225)

### Documentation
- **README** - Streamlined for crates.io discoverability (#212)
- **Demo GIF** - Animated demo and Contributors Welcome badge (#228)
- **API docs** - `#![warn(missing_docs)]` for aptu-core (#227)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.1.3...v0.1.4

