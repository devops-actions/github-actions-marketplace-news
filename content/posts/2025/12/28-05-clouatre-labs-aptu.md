---
title: Aptu Triage
date: 2025-12-28 05:37:59 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.8
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.8**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered command-line tool and GitHub Action designed to automate and enhance issue triage and pull request reviews for open-source projects. It utilizes efficient AI models to generate issue summaries, suggest labels, propose clarifying questions, and provide contributor guidance, thereby streamlining the management of repositories. Additionally, it supports multiple AI providers, various output formats, and includes features like automated issue discovery and local contribution tracking.

## Release notes

## AI-Powered PR Labeling and Developer Experience

This release enhances PR auto-labeling with AI fallback for non-conventional commits and improves developer tooling with supply chain security.

### Highlights

- **AI Fallback for PR Labels** - When conventional commit prefixes aren't detected, AI analyzes the PR to suggest appropriate labels
- **CLI Override Fixes** - `--model` and `--provider` flags now correctly apply to all commands
- **Supply Chain Security** - Added cargo-deny for license and vulnerability audits
- **Improved DX** - EditorConfig and cleaner .gitignore organization

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
- **AI Fallback for PR Labels** - Automatically labels PRs using AI when conventional commits not detected (#374)

### Fixes
- **CLI Overrides** - Thread AiConfig through facade to apply --model/--provider overrides (#370)
- **GitHub Error Handling** - Use AptuError::GitHub for GitHub API errors in facade (#375)
- **Label API Response** - Use serde_json::Value for label API response type (#377)
- **PR Auto-Labeling Permissions** - Add issues:write permission for PR auto-labeling (#371)
- **Renovate Labels** - Add dependencies label to Renovate PRs (#386)

### Performance
- **CI Optimization** - Share release binary artifact between jobs (#382)

### Maintenance
- **Supply Chain Security** - Add cargo-deny for license and vulnerability audits (#379)
- **Developer Experience** - Add EditorConfig and cargo-semver-checks (#380)
- **Dependency Migration** - Migrate from serde_yml to serde-saphyr (#381)
- **Repository Cleanup** - Reorganize .gitignore with sections and alphabetical order (#387)
- **PR Triage Workflow** - Enable pr-triage workflow (#369)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.2.7...v0.2.8

