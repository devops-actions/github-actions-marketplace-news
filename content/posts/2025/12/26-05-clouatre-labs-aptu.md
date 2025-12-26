---
title: Aptu Triage
date: 2025-12-26 05:29:56 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.4
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.4**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered command-line tool and GitHub Action designed to streamline open-source issue and pull request management. It automates tasks such as triaging issues by providing summaries, suggesting labels, generating clarifying questions, and offering contributor guidance, as well as analyzing pull requests for feedback. By leveraging efficient AI prompts and multiple output formats, it simplifies project management and enhances collaboration in open-source development.

## Release notes

## PR Review and iOS Support

This release adds the ability to post AI-generated reviews directly to GitHub PRs and improves iOS compatibility for the mobile app.

### Highlights

- **PR Review Posting** - Post AI reviews to GitHub with `--comment`, `--approve`, or `--request-changes` flags
- **iOS Label Filtering** - Label filtering now works in aptu-core for iOS app compatibility
- **Smarter Label Selection** - Priority-based filtering reduces noise in label suggestions
- **Refreshed README** - Streamlined feature list and documentation

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
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
- **PR Review Posting** - Post AI reviews with event type flags (#312)

### Improvements
- **iOS Compatibility** - Apply label filtering in aptu-core for iOS (#311)
- **Label Selection** - Priority-based filtering for better suggestions (#308)
- **README Refresh** - Updated features section and condensed license (#307)

### Chores
- **Test Cleanup** - Consolidated redundant label filter tests (#310)
- **CI Fixes** - Updated Homebrew formula template (#305)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.2.3...v0.2.4
