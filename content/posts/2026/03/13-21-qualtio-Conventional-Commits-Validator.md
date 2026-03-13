---
title: Qualtio Conventional Commits Validator
date: 2026-03-13 21:36:19 +00:00
tags:
  - qualtio
  - GitHub Actions
draft: false
repo: https://github.com/qualtio/Conventional-Commits-Validator
marketplace: https://github.com/marketplace/actions/qualtio-conventional-commits-validator
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/qualtio/Conventional-Commits-Validator** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualtio-conventional-commits-validator) to find the latest changes.

## Action Summary

The **Conventional Commits Validator** GitHub Action ensures that all commit messages in a push or pull request adhere to the [Conventional Commits](https://www.conventionalcommits.org/) standard, promoting a clean and structured git history. It automates the validation process, helping teams maintain consistency, enabling automated changelogs, and supporting semantic versioning. Key capabilities include customizable commit types and scopes, the ability to warn or fail workflows on invalid commits, and outputs for further workflow automation.

## Release notes

## 🎉 Initial Release

Validate that all commit messages in your push or pull request follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

### Features
- ✅ Validates commit messages on push and pull_request events
- 🔧 Configurable allowed scopes and extra types
- 📤 Outputs `valid` flag and list of invalid commits
- 🚦 Optional non-blocking mode (`fail-on-error: false`)

### Usage
\```yaml
- uses: qualtio/Conventional-Commits-Validator@v1
\```

Full documentation in the [README](https://github.com/qualtio/Conventional-Commits-Validator#readme).

