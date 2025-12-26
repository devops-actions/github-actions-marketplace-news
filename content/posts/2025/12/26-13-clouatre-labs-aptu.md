---
title: Aptu Triage
date: 2025-12-26 13:14:32 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.5
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.5**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed to streamline issue and pull request management in open-source projects. It automates tasks like issue triage, labeling, and providing clarifications, as well as analyzing pull requests for feedback, using efficient context-based AI prompts. The tool simplifies contributor workflows by integrating with GitHub as a CLI and an action, offering features such as auto-labeling, issue discovery, and support for multiple AI providers and output formats.

## Release notes

## Repo Management and Triage Improvements

This release adds repository management commands and improves the triage workflow with additive labels and dry-run previews. We also fixed Snapcraft publishing!

### Highlights

- **Repo Add/Remove** - Manage tracked repositories with `aptu repo add` and `aptu repo remove`
- **Additive Labels** - Label application now adds to existing labels instead of replacing them
- **Dry-Run Summary** - Bulk operations show a preview table before applying changes
- **FreeBSD Fix** - Session-level token caching resolves authentication issues (thanks @yonas!)
- **Snapcraft** - Now available on the Snap Store for Linux users

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
- **Repo Management** - Add repo add/remove subcommands (#317)
- **Additive Labels** - Make label application additive by default (#316)
- **Dry-Run Preview** - Add summary table for bulk operations (#315)

### Bug Fixes
- **FreeBSD Auth** - Implement session-level token caching (#314) - fixes #313
- **Snapcraft CI** - Correct snapcore/action-publish SHA (#278, #291, #306)

---

## Contributors

- @clouatre
- @yonas (bug report)

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.2.4...v0.2.5

