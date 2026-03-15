---
title: action-anyq
date: 2026-03-15 13:31:59 +00:00
tags:
  - troll-warlord
  - GitHub Actions
draft: false
repo: https://github.com/troll-warlord/anyq
marketplace: https://github.com/marketplace/actions/action-anyq
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/troll-warlord/anyq** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-anyq) to find the latest changes.

## Action Summary

`anyq` is a GitHub Action and CLI tool that enables users to query JSON, YAML, and TOML configuration files using natural language, eliminating the need to learn complex query languages like `jq`. By leveraging AI, it translates plain English queries into executable expressions, automating data extraction and simplifying configuration file analysis. Additionally, it offers privacy safeguards by only sharing structural metadata (not actual data) with AI providers and can also function as a traditional `jq`/`yq`/`tomlq` replacement for direct query execution.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at v1.1.0 -->

## What's Changed
### 🚀 New Features
* feat: Add --slurp mode with multi-document streaming support by @troll-warlord in https://github.com/troll-warlord/anyq/pull/11
* feat: Add ai and slurp inputs to action, make expression optional by @troll-warlord in https://github.com/troll-warlord/anyq/pull/13
### 📖 Documentation
* chore: Remove version from artifact filenames by @troll-warlord in https://github.com/troll-warlord/anyq/pull/12


**Full Changelog**: https://github.com/troll-warlord/anyq/compare/v1.0.0...v1.1.0

## Installation

### curl (Linux/macOS)
```bash
curl -sSfL https://raw.githubusercontent.com/troll-warlord/anyq/main/install.sh | sh
```

### go install
```bash
go install github.com/troll-warlord/anyq@latest
```


