---
title: DeepSeek CR
date: 2026-01-23 21:18:02 +00:00
tags:
  - hustcer
  - GitHub Actions
draft: false
repo: https://github.com/hustcer/deepseek-review
marketplace: https://github.com/marketplace/actions/deepseek-cr
version: v1.20
dependentsNumber: "42"
---


Version updated for **https://github.com/hustcer/deepseek-review** to version **v1.20**.
- This action is used across all versions by **42** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-cr) to find the latest changes.

## Action Summary

The `deepseek-review` GitHub Action automates code review processes by leveraging DeepSeek models, providing seamless integration with GitHub Actions and local development workflows. It simplifies tasks like reviewing pull requests, commit changes, and generating review feedback directly in PR comments or local Markdown files. Key features include cross-platform compatibility, customizable review configurations, and support for both cloud-hosted and self-hosted DeepSeek models, streamlining code review and improving development efficiency.

## Release notes

## [1.20.0] - 2026-01-23

### Bug Fixes

- Make config-check use default value for --config flag
- Fix `from env` for .env file parsing (#193)

### Miscellaneous Tasks

- Update minimum required Nushell version to 0.110.0
- Update nutest to main ref (#191)
- Update README.md

### Refactor

- A better `from env` parser (#194)

### Deps

- Upgrade to actions/checkout@v5
- Upgrade `hustcer/setup-nu` to v3.20
- Upgrade Nushell version to 0.108.0 (#190)
- Upgrade `hustcer/setup-nu` to v3.21 (#192)
- Upgrade actions/checkout@v6
- Upgrade Nu to 0.109.1 (#195)
- Update Nushell to 0.110.0 (#196)
- Upgrade `hustcer/setup-nu` to v3.22
