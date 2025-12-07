---
title: SearchDeadCode
date: 2025-12-07 21:01:10 +00:00
tags:
  - KevinDoremy
  - GitHub Actions
draft: false
repo: https://github.com/KevinDoremy/SearchDeadCode
marketplace: https://github.com/marketplace/actions/searchdeadcode
version: v0
dependentsNumber: "0"
---


Version updated for **https://github.com/KevinDoremy/SearchDeadCode** to version **v0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/searchdeadcode) to find the latest changes.

## Release notes

## 🔍 SearchDeadCode GitHub Action

Detect dead/unused code in Android projects (Kotlin & Java) directly in your CI pipeline.

### Quick Start

```yaml
- uses: KevinDoremy/SearchDeadCode@v0
with:
    path: '.'
    min-confidence: 'medium'
```

Features

- ⚡ Fast static analysis powered by tree-sitter
- 🎯 SARIF output for GitHub Security tab integration
- 📊 Configurable confidence levels
- 🔄 Binary caching for fast subsequent runs
- 🖥️ Multi-platform (Linux, macOS, Windows)

Inputs

| Input            | Description                  | Default  |
|------------------|------------------------------|----------|
| path             | Project path                 | .        |
| min-confidence   | low, medium, high, confirmed | medium   |
| fail-on-findings | Fail if dead code found      | false    |
| format           | terminal, json, sarif        | terminal |

https://github.com/KevinDoremy/SearchDeadCode#github-action


**Full Changelog**: https://github.com/KevinDoremy/SearchDeadCode/compare/v0.4.0...v0
