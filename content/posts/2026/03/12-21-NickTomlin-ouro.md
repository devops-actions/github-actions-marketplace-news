---
title: ouro-ci
date: 2026-03-12 21:39:30 +00:00
tags:
  - NickTomlin
  - GitHub Actions
draft: false
repo: https://github.com/NickTomlin/ouro
marketplace: https://github.com/marketplace/actions/ouro-ci
version: v0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/NickTomlin/ouro** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ouro-ci) to find the latest changes.

## Action Summary

The `ouro` GitHub Action is a golden test runner designed for language authors, enabling them to embed test expectations directly within source files as comments. It automates the process of validating program output, error messages, and exit codes against expected results, streamlining testing workflows without requiring additional toolchains or frameworks. Key features include support for inline and block directives, custom comment prefixes for various languages, parallel execution, and the ability to update expectations in bulk.

## Release notes

### Added

- print per-test ok line on pass

### Other

- switch release-plz to GitHub App token for tag creation
- Fixes for release
- update release-plz workflow to v0.5 with PAT for release triggering
- fmt
- extract Reporter trait with ConsoleReporter impl
- README tweaks + install script
